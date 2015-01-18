class GameConsolesController < ApplicationController

  def index
  end

  def new
    @game_console = GameConsole.new
  end

  def create
    @game_console = GameConsole.new(game_console_params)
    if @game_console.save
      flash[:notice] = "Thank you for submitting game console data."
      redirect_to root_path
    else
      flash[:notice] = "Something went wrong."
      render :new
    end
  end

  private

  def game_console_params
    params.require(:game_console).permit(:manufacturer)
  end
end
