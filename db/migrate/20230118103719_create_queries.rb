class CreateQueries < ActiveRecord::Migration[7.0]
  def change
    create_table :queries do |t|
      t.string :text
      t.integer :search_counter, default: 0
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
