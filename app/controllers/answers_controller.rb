class AnswersController < ApplicationController
    skip_after_action :verify_authorized
    skip_after_action :verify_policy_scoped
    before_action :set_answers_counter

  def create
    @category = Category.find(params[:category_id])
    @nominee = Nominee.find(params[:nominee_id])
    @user = current_user
    @answer = Answer.new(category_id: @category.id, nominee_id: @nominee.id, user_id: @user.id)
    respond_to do |format|
      if @answer.save
        format.html { redirect_to category_answer_path(@category, @answer) }
        format.json { render json: @answer, status: :created, location: @answer }
      else
        format.html { render :new }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @users = User.all
    @category = Category.find(params[:category_id])
    @answer = Answer.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @answer }
    end
  end

  def new
    @answer = Answer.new
  end

  def self.update
    Answer.all.each do |a|
      a.update(points_earned: 50)
    end
  end

  def index
    @category = Category.find(params[:category_id])
    @answers = Answer.where(category_id: @category)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @answers }
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

private

  def set_answers_counter
    @answers_count = Answer.count
  end
end
