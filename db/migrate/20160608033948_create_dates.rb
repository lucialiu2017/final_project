class CreateDates < ActiveRecord::Migration
  def change
    create_table :dates do |t|
      t.string :title
      t.string :description
      t.string :preview
      t.string :neighborhood
      t.string :type
      t.string :tour_guide_id
      t.integer :upvotes
      t.integer :downvotes

      t.timestamps

    end
  end
end
