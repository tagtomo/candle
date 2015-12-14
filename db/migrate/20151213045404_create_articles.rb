class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :area_id
      t.string :zipcode
      t.string :address
      t.integer :latitude
      t.integer :longitude
      t.string :articlestructure
      t.string :article_age
      t.string :floor_plans
      t.string :sale
      t.string :rent
      t.string :refurbishment
      t.string :sewer_connection
      t.string :parking
      t.string :optical_cable
      t.string :catv
      t.string :note

      t.timestamps null: false
    end
  end
end
