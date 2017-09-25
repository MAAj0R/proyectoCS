class AddUserIdToPists < ActiveRecord::Migration[5.0]
  def change
    add_column :pists, :user_id, :integer
  end
end
