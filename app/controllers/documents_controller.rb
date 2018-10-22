class DocumentsController < ApplicationController

def index
    @documents = Document.all
    render json: @documents
  end

  def show
    @document = Document.find(params[:id])
    render json: @document
  end

  def create
    @document = Document.new(document_params)

    if @document.save
      render json: @document, status: :accepted
    else
      render json: {errors: @document.errors.full_messages}, status: :unprocessable_entity
    end

  end

  def custom_create

    @category = Category.find_or_create_by(name: params[:name])
    @document = Document.new(document_params)
    @document.category_id = @category.id

    if @document.save
      render json: {document:@document, category: @category}, status: :accepted
    else
      render json: {errors: @document.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @document = Document.find(params[:id])

    if @document.update(document_params)
      render json: @document, status: :accepted
    else
      render json: {errors: @document.errors.full_messages}, status: :unprocessable_entity
    end

  end

  # come back to make logic changes
  def destroy
    @document = Document.find(params[:id])
    @document.destroy
  end


  private
  def document_params
    params.require(:document).permit!
  end

end
