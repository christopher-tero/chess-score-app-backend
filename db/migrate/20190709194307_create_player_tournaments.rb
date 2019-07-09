class CreatePlayerTournaments < ActiveRecord::Migration[5.2]
  def change
    create_table :player_tournaments do |t|
      t.references :player, foreign_key: true
      t.references :tournament, foreign_key: true

      t.timestamps
    end
  end
end
