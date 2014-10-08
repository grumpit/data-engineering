class UploadsController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @upload = current_user.uploads.build
  end

  def create
  end

  def index
    @uploads = current_user.uploads
  end
end
