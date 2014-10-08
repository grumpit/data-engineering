require 'test_helper'

class PurchaserTest < ActiveSupport::TestCase
  
  should validate_presence_of :name
  should have_many :purchases
  should have_many :items
end
