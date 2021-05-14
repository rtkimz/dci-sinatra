class CreateTitles < ActiveRecord::Migration[6.1]
  def change
    create_table :titles do |t|
      t.string :name
      t.integer :publisher_id, default: 1
      t.integer :character_id, default: 1
    end
  end
end
