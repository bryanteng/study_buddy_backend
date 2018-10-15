class CategoriesController < ApplicationController

def index
    @categories = Category.all
    render json: @categories
  end

  def show
    @category = Category.find(params[:id])
    render json: @category
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      render json: @category, status: :accepted
    else
      render json: {errors: @category.errors.full_messages}, status: :unprocessable_entity
    end

  end

  def update
    @category = Category.find(params[:id])

    if @category.update(category_params)
      render json: @category, status: :accepted
    else
      render json: {errors: @category.errors.full_messages}, status: :unprocessable_entity
    end

  end

  # come back to make logic changes
  def destroy
    @category = Category.find(params[:id])
    @category.destroy
  end


  private
  def category_params
    params.require(:category).permit!
  end
end
