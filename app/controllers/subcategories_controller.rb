class SubcategoriesController < ApplicationController

    def index
      @subcategories = Subcategory.all
      render json: @subcategories
    end

    def show
      @subcategory = Subcategory.find(params[:id])
      render json: @subcategory
    end

    def create
      @subcategory = Subcategory.new(subcategory_params)

      if @subcategory.save
        render json: @subcategory, status: :accepted
      else
        render json: {errors: @subcategory.errors.full_messages}, status: :unprocessable_entity
      end
    end

    def update
      @subcategory = Subcategory.find(params[:id])

      if @subcategory.update(subcategory_params)
        render json: @subcategory, status: :accepted
      else
        render json: {errors: @subcategory.errors.full_messages}, status: :unprocessable_entity
      end

    end

    def destroy
      @subcategory = Subcategory.find(params[:id])
      @subcategory.destroy
    end

    private

    def subcategory_params
      params.require(:subcategory).permit(:name)
    end
end
