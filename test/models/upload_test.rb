require 'test_helper'

class UploadTest < ActiveSupport::TestCase
  should belong_to :user
  should validate_presence_of :file
  should validate_presence_of :data
end
