class AggregateController < ApplicationController
  def show
    @user = User.all
    gon.data = []
    gon.lab = []
    gon.linedata = []

    Laboratory.count.times do |num|
      gon.data << User.where(laboratory_id: num+1).count
      gon.lab << Laboratory.find(num+1).name
      gon.linedata << User.where(laboratory_id: num+1).average(:gpa)
    end
  end
end
