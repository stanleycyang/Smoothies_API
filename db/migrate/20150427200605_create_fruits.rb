class CreateFruits < ActiveRecord::Migration
  def change
    create_table :fruits do |t|
      t.string :name
      t.belongs_to :smoothie, index: true

      t.timestamps null: false
    end
  end
end
