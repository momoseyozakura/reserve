class ChangeDataStartDateToRooms < ActiveRecord::Migration[6.1]
  def change
    change_column :rooms, :start_date, :date
  end
end
