class UploadsController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @upload = current_user.uploads.build
  end

  def create
    @upload = current_user.uploads.build(upload_params)
    if @upload.save
      redirect_to uploads_path, notice: "File was uploaded successfully"
    else
      render :new
    end
  end

  def index
    @uploads = current_user.uploads
  end
  
  private
  
  def upload_params
    params.fetch(:upload, {}).permit(:file)
  end
  
end
