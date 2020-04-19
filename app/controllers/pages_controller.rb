class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @home_page = true
    @category = Category.first
  end

  def resultats
    @users = User.all
    @categories = Category.all
    @nominees = Nominee.where(winner: true)
    @stock = Answer.sum("points_earned")
  end
end
