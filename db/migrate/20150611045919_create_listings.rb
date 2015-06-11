class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :name, null: false
      t.text   :description
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :country

      t.timestamps null: false
    end
  end
end
