class AddUserIdToProse < ActiveRecord::Migration
  def change
    add_column :proses, :user_id, :integer
  end
end
