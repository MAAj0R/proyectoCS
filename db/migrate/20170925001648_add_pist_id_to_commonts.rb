class AddPistIdToCommonts < ActiveRecord::Migration[5.0]
  def change
    add_column :commonts, :pist_id, :integer
  end
end
