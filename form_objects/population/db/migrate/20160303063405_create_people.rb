class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :firstname
      t.string :lastname
      t.integer :age
      t.string :gender

      t.timestamps null: false
    end
    add_index :people, :firstname
    add_index :people, :lastname
    add_index :people, :age
    add_index :people, :gender
  end
end
