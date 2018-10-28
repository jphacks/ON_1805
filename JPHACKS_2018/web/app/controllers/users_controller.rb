class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    gon.data = []
    gon.lab = []
    gon.linedata = []
    Laboratory.count.times do |num|
      gon.data << User.where(laboratory_id: num+1).count
      gon.lab << Laboratory.find(num+1).name
      gon.linedata << User.where(laboratory_id: num+1).average(:gpa)
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to GPA war"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      # 更新成功
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  private

    def user_params
      params.require(:user).permit(:ie_number, :email,
                                   :gpa, :laboratory_id,
                                   :password,
                                   :password_confirmation)
    end
end
