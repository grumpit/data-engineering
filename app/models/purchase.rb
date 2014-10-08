class Purchase < ActiveRecord::Base
  belongs_to :purchaser
  belongs_to :item
  belongs_to :upload
  
  validates :purchaser_id, :item_id, presence: true
  validates :quantity, numericality: {
    only_integer: true,
    greater_than: 0
   }
end
