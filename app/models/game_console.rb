class GameConsole < ActiveRecord::Base
  validates :manufacturer, presence: true
end
