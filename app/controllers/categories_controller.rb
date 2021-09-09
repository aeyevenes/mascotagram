class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  # def new
  # end

  # def create
  #   @categories = categories.new(categories_params)
  #   @categories.user = @user
  #   authorize @categories
  #   if @categories.save
  #     redirect_to categories_path(@categories)
  #   else
  #     render :new
  #   end
  # end

  # def edit
  # end

  # def update
  #   if @categories.update(categories_params)
  #     redirect_to categories_path(@categories)
  #   else
  #     render :edit
  #   end
  # end

  # def destroy
  #   if @categories.destroy
  #     redirect_to categories_path
  #   else
  #     render :show
  #   end
  # end

  # private

  # def set_user
  #   @user = current_user
  # end

  # def set_categories
  #   @categories = categories.find(params[:id])
  #   authorize @categories
  # end

  # def categories_params
  #   params.require(:service).permit(:name, :description, :price, :photo)
  # end
end
