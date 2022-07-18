class UsersController < ApplicationController
  protect_from_forgery

  def profile
    @user = User.find_by(id: params[:id])
  end

  def add
    @user = User.find_by(id: params[:id])
    @user.name = params[:name]
    if params[:image]
      @user.image = "#{@user.id}.jpg"
      image = params[:image]
      File.binwrite("public/user_images/#{@user.image}",image.read)
    end
    @user.memo = params[:memo]
    
    if @user.save
      redirect_to("/")
    else
      render :profile
    end
  end
end
