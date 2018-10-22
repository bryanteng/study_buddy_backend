class NotecardsController < ApplicationController

  def index
    @notecards = Notecard.all
    render json: @notecards
  end

  def show
    @notecard = Notecard.find(params[:id])
    render json: @notecard
  end

  def create
    category = Category.find_or_create_by(name: params[:category])
    subcategory = Subcategory.find_or_create_by(name: params[:subcategory])
    @notecard = Notecard.new(notecard_params)
    @notecard.category_id = category.id
    @notecard.subcategory_id = subcategory.id
    # add category/subcategory find by name here
    if @notecard.save
      render json: @notecard, status: :accepted
    else
      render json: {errors: @notecard.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @notecard = Notecard.find(params[:id])

    if @notecard.update(notecard_params)
      render json: @notecard, status: :accepted
    else
      render json: {errors: @notecard.errors.full_messages}, status: :unprocessable_entity
    end

  end

  def destroy
    @notecard = Notecard.find(params[:id])
    @notecard.destroy
  end

  private

  def notecard_params
    params.require(:notecard).permit(:front, :back, :category, :subcategory, :user_id)
  end
end
