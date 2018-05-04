class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :price
      t.string :image_url
      t.string :number_of_people

      t.timestamps
    end
  end
end
