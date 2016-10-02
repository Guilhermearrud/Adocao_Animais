class AddFieldsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :name, :string
  	#add_column :users, :street, :string
  	#add_column :users, :number, :string
  	#add_column :users, :complement, :string
  	#add_column :users, :neighborhood, :string
  	#add_column :users, :zipcode, :string
  	#add_column :users, :city, :string
  	#add_column :users, :state, :string
  	add_column :users, :birthday, :datetime
  	add_column :users, :celphone, :integer
    add_column :users, :numberphone, :string
  	add_column :users, :login, :string, unique: true #ASSIM ELE SO VAI ACEITAR UM LOGIN 
  end
end
