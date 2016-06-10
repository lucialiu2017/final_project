class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.string :title
      t.string :image_url
      t.text :description
      t.string :city
      t.integer :guide_id

      t.timestamps

    end
  end
end
