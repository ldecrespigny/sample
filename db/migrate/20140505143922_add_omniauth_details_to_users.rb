class AddOmniauthDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :description, :string
    add_column :users, :urls, :string
    add_column :users, :token, :string
    add_column :users, :secret, :string
  end
end
