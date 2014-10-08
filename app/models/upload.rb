class Upload < ActiveRecord::Base
  belongs_to :user
  validates :filename, :data, presence: true
  
  serialize :data, Array
end
