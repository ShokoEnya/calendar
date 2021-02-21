class MenusController < ApplicationController
  before_action :find_menu, only: [:edit, :update, :destroy]

  def index
    @menus = Menu.all
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to menus_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @menu.update(menu_params)
      redirect_to menus_path
    else
      render :edit
    end
  end

  def destroy
    @menu.destroy
    redirect_to menus_path
  end

  private

  def menu_params
    params.require(:menu).permit(:main, :side_1, :side_2)
  end

  def find_menu
    @menu = Menu.find(params[:id])
  end
end
