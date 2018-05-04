class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :room, foreign_key: true
      t.datetime :check_in
      t.datetime :check_out

      t.timestamps
    end
  end
end
