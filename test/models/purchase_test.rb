require 'test_helper'

class PurchaseTest < ActiveSupport::TestCase
  should belong_to :purchaser
  should belong_to :item
end
