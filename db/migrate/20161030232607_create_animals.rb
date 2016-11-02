class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
   	  t.references :user, index: true, foreign_key: true
      t.string :info
      t.string :tipo
      t.string :raca
      t.string :obs
      t.timestamps null: false
    end
  end
end
