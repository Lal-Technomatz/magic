class CreateLegalities < ActiveRecord::Migration[7.0]
  def change
    create_table :legalities do |t|
      t.string :format
      t.string :legality

      t.timestamps
    end
  end
end
