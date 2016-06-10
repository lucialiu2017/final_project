class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :time
      t.text :do
      t.string :see
      t.string :where

      t.timestamps

    end
  end
end
