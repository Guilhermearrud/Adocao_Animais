class AddVideoToAnimals < ActiveRecord::Migration
  def change
    add_column :animals, :video, :string
  end
end
