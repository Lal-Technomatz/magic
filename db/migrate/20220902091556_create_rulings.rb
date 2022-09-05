class CreateRulings < ActiveRecord::Migration[7.0]
  def change
    create_table :rulings do |t|
      t.date :date
      t.text :text

      t.timestamps
    end
  end
end
