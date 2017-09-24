class CreateLudums < ActiveRecord::Migration[5.0]
  def change
    create_table :ludums do |t|

      t.timestamps
    end
  end
end
