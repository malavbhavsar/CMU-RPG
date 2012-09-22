class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.integer :player_id
      t.string :text, {:null=>false, :limit=>400}
      t.timestamps
    end
  end
end
