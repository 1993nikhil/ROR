class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :book

      t.timestamps null: false
    end
  end
end
