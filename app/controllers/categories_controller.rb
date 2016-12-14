class CategoriesController < ApplicationController
  def index
    @categories = Category.all

  end

  def show
    @category = Category.find(params[:id])
  end

  private



  def set_category
    @category = Category.find(params[:id])
  end
end
