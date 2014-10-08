require 'test_helper'

class UploadTest < ActiveSupport::TestCase
  should belong_to :user
  should validate_presence_of :file
  should validate_presence_of :data
  
  setup do
    @upload = Upload.new
    File.open("#{Rails.root}/example_input.tab") {|file| @upload.file = file}
    @upload.save!
  end
  
  should "populate data after create" do
    assert @upload.data.present?
  end
  
  
  # the counts we are comparing to are determined by the input file,
  # in this case the example_input.tab file
  should "create the appropriate number of merchants" do
    assert_equal 3, Merchant.count
  end
  
  should "create the appropriate number of purchasers" do
    assert_equal 3, Purchaser.count
  end
  
  should "create the appropriate number of items" do
    assert_equal 3, Item.count
  end
  
  should "create the appropriate number of purchases" do
    assert_equal 4, Purchase.count
  end
  
end
