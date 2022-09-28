class AddDetailsToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :number, :integer
    add_column :rooms, :start_date, :dete
    add_column :rooms, :end_date, :date
  end
end
