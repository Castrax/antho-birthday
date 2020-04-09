class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @home_page = true
    @category = Category.first
  end

  def resultats
    @users = User.all
    @categories = Category.all
  end
end
