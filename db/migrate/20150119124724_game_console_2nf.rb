class GameConsole2nf < ActiveRecord::Migration
  def change
    create_table :game_console_2nfs do |t|
      t.string :manufacturer, null: false

      t.timestamps
    end
  end
end
