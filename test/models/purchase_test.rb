require 'test_helper'

class PurchaseTest < ActiveSupport::TestCase
  should belong_to :purchaser
  should belong_to :item
  
  should validate_presence_of :purchaser_id
  should validate_presence_of :item_id
  should validate_numericality_of :quantity
end
