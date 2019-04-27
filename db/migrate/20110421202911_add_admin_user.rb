class AddAdminUser < ActiveRecord::Migration[5.2]
  def self.up
    add_column :users, :type, :string
  end

  def self.down
    remove_column :users, :type
  end
end
