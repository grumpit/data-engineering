class Upload < ActiveRecord::Base
  mount_uploader :filename, DataFileUploader
  belongs_to :user
  validates :filename, :data, presence: true
  
  serialize :data, Array
end
