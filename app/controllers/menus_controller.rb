class MenusController < ApplicationController
  def index
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def menu_params
    params.require(:menu).permit(:main, :side_1, :side_2)
  end
end
