class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
  end

  def new
  end

  def create
    category = Category.create(category_params)
    Idea.create(idea_params(category))
    redirect_to action: :index
  end

  private
  def category_params
    params.permit(:name)
  end

  def idea_params(category)
    params.permit(:body).merge(category_id: category.id)
  end

end
