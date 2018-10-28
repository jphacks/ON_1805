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
      if User.where(laboratory_id: num+1).average(:gpa).nil?
        gon.linedata << 0
      else
        gon.linedata << User.where(laboratory_id: num+1).average(:gpa)
      end
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render 'new'
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
