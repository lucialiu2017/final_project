class CreateActs < ActiveRecord::Migration
  def change
    create_table :acts do |t|
      t.string :time
      t.text :do
      t.string :see
      t.string :where
      t.string :day_id

      t.timestamps

    end
  end
end
