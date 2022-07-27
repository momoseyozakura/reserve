class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.text :memo
      t.bigint :fee
      t.string :area
      t.string :image
      t.bigint :take_id
      t.bigint :give_id

      t.timestamps
    end
  end
end
