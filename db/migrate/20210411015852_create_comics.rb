class CreateComics < ActiveRecord::Migration[6.1]
  def change
    create_table :comics do |t|
      t.string :full_path, null: false
      t.integer :size
      t.integer :issue_number
      t.integer :pub_year
      t.integer :pub_month
      t.string :extension
      t.integer :title_id

      t.timestamps null: false
    end
  end
end