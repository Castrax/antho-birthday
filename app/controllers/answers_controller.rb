class AnswersController < ApplicationController
  def create
    @category = Category.find(params[:category_id])
    @nominee = Nominee.find(params[:nominee_id])
    @user = current_user
    @answer = Answer.new(category_id: @category.id, nominee_id: @nominee.id, user_id: @user.id)
    if @answer.save!
      redirect_to category_path(@category)
      authorize @answer
    else
      render 'categories/show'
    end
  end

  def self.update
    Answer.all.each do |a|
      a.update(points_earned: 50)
    end
  end

  def destroy
    @answer = Answer.find(params[:id])
    if @answer.destroy
      redirect_to category_path(params[:category_id])
      authorize @answer
    else
      render 'categories/show'
    end
  end
end
