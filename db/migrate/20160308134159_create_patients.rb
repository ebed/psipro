class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :lastname
      t.date :dob
      t.string :gender

      t.timestamps null: false
    end
  end
end
