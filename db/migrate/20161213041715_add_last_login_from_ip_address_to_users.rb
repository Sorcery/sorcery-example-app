class AddLastLoginFromIpAddressToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :last_login_from_ip_address, :string, default: nil
  end
end
