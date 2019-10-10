class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.string :date
      t.string :start_time
      t.string :price
      t.string :img_url
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
