class Upload < ActiveRecord::Base
  mount_uploader :file, DataFileUploader
  belongs_to :user
  validates :file, :data, presence: true
  
  serialize :data, Array
  
  after_create :process_data
  
  private
  
  def process_data
    data.each do |row|
      
    end
  end
  
end
