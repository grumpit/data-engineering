require 'test_helper'

class UserTest < ActiveSupport::TestCase

  should validate_presence_of :name
  
  should have_many :uploads

end
