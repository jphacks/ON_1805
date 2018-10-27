class AggregateController < ApplicationController
  def show
    @user = User.all
    gon.data = []

    @user.each do |user|
      gon.data << user.gpa
    end

  end
end
