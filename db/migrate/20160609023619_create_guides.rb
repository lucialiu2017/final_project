class CreateGuides < ActiveRecord::Migration
  def change
    create_table :guides do |t|
      t.string :name
      t.string :age
      t.text :bio
      t.string :image_url

      t.timestamps

    end
  end
end
