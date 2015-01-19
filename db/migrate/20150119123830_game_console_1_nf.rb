class GameConsole1Nf < ActiveRecord::Migration
  def change
    create_table :game_console_1nfs do |t|
      t.string :manufacturer, null: false

      t.timestamps
    end
  end
end
