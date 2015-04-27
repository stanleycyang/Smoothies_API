class CreateSmoothies < ActiveRecord::Migration
  def change
    create_table :smoothies do |t|
      t.string :name
      t.integer :calories
      t.float :total_fat
      t.integer :carbs
      t.integer :sugar
      t.integer :fiber

      t.timestamps null: false
    end
  end
end
