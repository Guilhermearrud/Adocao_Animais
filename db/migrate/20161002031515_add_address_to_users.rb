class AddAddressToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :street, :string
  	add_column :users, :number, :integer
  	add_column :users, :complement, :string
  	add_column :users, :neighborhood, :string
  	add_column :users, :zipcode, :string
  	add_column :users, :city, :string
  	add_column :users, :state, :string
  end
end
