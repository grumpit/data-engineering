class Purchase < ActiveRecord::Base
  belongs_to :purchaser
  belongs_to :item
  
  validates :purchaser_id, :item_id, presence: true
  validates :quantity, numericality: { only_integer: true }
end
