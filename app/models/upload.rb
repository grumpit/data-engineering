class Upload < ActiveRecord::Base
  mount_uploader :file, DataFileUploader
  belongs_to :user
  has_many :purchases
  
  validates :file, :data, presence: true
  
  serialize :data, Array
  
  after_create :process_data
  
  private
  
  def process_data
    data.each do |row|
      purchaser = Purchaser.find_or_create_by!(name: row['purchaser name'])
      merchant = Merchant.find_or_create_by!(name: row['merchant name'], address: row['merchant address'])
      item = Item.find_or_create_by!(description: row['item description'],
                                    price: row['item price'],
                                    merchant: merchant)
      purchase = purchaser.purchases.find_or_initialize_by(item: item)
      purchase.quantity += row['purchase count'].to_i
      purchase.save!
      purchases <<  purchase
    end
    self.processed = true
    save!
  rescue Exception => e
    logger.error("Problem processing data for Upload #{id}:\n#{e}")
  end
  
end
