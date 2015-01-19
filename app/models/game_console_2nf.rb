class GameConsole_2nf < ActiveRecord::Base
  validates :manufacturer, presence: true
end
