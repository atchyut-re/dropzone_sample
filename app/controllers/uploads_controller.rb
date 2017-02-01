class UploadsController < ApplicationController

  def index
    @upload = Upload.new
    @uploads = Upload.all
  end

  def create
    @upload = Upload.new(upload_params)
    if @upload.save
      render json: {message: 'success', uploadId: @upload.id}, status: 200
    else
      render json: {error: @upload.error.full_message.join(',')}, status: 400
    end
  end


  private

  def upload_params
    params .require(:upload).permit(:file)
  end
end
