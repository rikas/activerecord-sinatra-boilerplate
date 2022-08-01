class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table(:restaurants) do |t|
      t.string :name, null: false
      t.string :url, null: false # 255
      t.integer :rating, default: 0, null: false
      t.boolean :published, default: false
      # t.text
      # t.date
    end
  end
end
