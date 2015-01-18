Rails.application.routes.draw do
  root 'game_consoles#index'

  resource :game_consoles, only: [:index, :new, :create]
end
