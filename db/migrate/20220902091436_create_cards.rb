class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.integer :multiverse_id
      t.column :layout, :json
      t.string :names
      t.decimal :mana_cost
      t.decimal :cmc
      t.string :colors
      t.integer :color_identity
      t.string :type
      t.string :supertypes
      t.string :subtypes
      t.string :rarity
      t.text :text
      t.string :flavor
      t.string :artist
      t.integer :number
      t.string :power
      t.string :toughness
      t.string :loyalty
      t.string :variations
      t.string :watermark
      t.string :border
      t.datetime :timeshifted
      t.string :hand
      t.string :life
      t.string :reserved
      t.datetime :release_date
      t.string :starter
      t.string :rulings
      t.string :foreign_names
      t.string :printings
      t.string :original_text
      t.string :original_type
      t.string :legalities
      t.string :source
      t.string :image_url
      t.string :set
      t.string :set_name
      # t.integer :id

      t.timestamps
    end
  end
end
