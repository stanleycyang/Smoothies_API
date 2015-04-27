class DropBelongsToFromFruits < ActiveRecord::Migration
  def change
    remove_column :fruits, :smoothie_id
  end
end
