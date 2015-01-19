class GameConsolesController < ApplicationController

  def index
  end

  def new
    @game_console = GameConsole.new
    @game_console_1nf = GameConsole_1nf.new
  end

  def create
    @game_console = GameConsole.new(game_console_params)
    game_console_1nf = GameConsole_1nf.new(game_console_params)
    game_console_2nf = GameConsole_2nf.new(game_console_params)

    if @game_console.save && game_console_1nf.save && game_console_2nf.save
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
