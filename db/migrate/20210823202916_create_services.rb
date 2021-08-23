class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :brand
      t.string :part
      t.text :description
      t.string :level
      t.string :video_url
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
