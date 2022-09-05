class CreateForeignNames < ActiveRecord::Migration[7.0]
  def change
    create_table :foreign_names do |t|
      t.string :language
      t.string :name
      t.integer :multiverse_id

      t.timestamps
    end
  end
end
