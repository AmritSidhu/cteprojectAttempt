class UploadsController < ApplicationController

  def new
  end

  def create
    @upload = current_user.uploads.create(upload_params)
    if @upload.save
      redirect_to '/'
    else
      render 'new'
    end
  end

  private

  def upload_params
    params.require(:upload).permit(:scenario)
  end
end
