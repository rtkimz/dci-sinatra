class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name, default: "various"
      t.string :publisher
    end
  end
end
