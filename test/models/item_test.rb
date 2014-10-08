require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  
  should validate_presence_of :description
  should validate_presence_of :price
  should belong_to :merchant
  
end
