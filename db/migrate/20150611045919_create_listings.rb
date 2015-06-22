class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string  :title, null: false
      t.text    :description
      t.string  :city
      t.string  :state
      t.string  :zipcode
      t.string  :country
      t.integer :category_id
      t.integer :subcategory_id
      # FIXME ccm: Should I be using the following? What's the difference?
      # t.references :category_id, index: true, foreign_key: true
      # t.references :subcategory_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
