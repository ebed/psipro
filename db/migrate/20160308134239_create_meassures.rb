class CreateMeassures < ActiveRecord::Migration
  def change
    create_table :meassures do |t|
      t.date :day
      t.integer :metric_id
      t.string :value
      t.integer :test_id
      t.integer :patient_id
      t.integer :specialist_id

      t.timestamps null: false
    end
  end
end
