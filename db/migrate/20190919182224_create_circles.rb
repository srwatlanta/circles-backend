class CreateCircles < ActiveRecord::Migration[5.2]
  def change
    create_table :circles do |t|
      t.string :name
      t.string :img_url

      t.timestamps
    end
  end
end
