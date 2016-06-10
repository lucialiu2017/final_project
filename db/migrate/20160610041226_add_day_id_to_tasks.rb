class AddDayIdToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :day_id, :string
  end
end
