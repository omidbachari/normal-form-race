class CreateGameConsolesTable < ActiveRecord::Migration
  def change
    create_table :game_consoles do |t|
      t.string :manufacturer, null: false

      t.timestamps
    end
  end
end
