class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :owner
      t.boolean :is_series
      t.integer :latest_volume
      t.integer :current_volume
      t.string :category

      t.timestamps
    end
  end
end
