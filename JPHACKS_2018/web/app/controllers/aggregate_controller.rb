class AggregateController < ApplicationController
  def show
    @user = User.all
    gon.data = []
    gon.lab = []

    Laboratory.count.times do |num|
      gon.data << User.where(laboratory_id: num+1).count
      gon.lab << Laboratory.find(num+1).name
    end
  end
end
