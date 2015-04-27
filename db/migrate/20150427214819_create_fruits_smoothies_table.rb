class CreateFruitsSmoothiesTable < ActiveRecord::Migration
  def change
    create_table :fruits_smoothies, id: false do |t|
      t.belongs_to :fruit, index: true
      t.belongs_to :smoothie, index: true
    end
  end
end
