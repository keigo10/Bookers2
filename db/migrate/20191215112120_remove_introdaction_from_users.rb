class RemoveIntrodactionFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :introdaction, :text
  end
end
