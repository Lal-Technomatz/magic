class CreateChangelogs < ActiveRecord::Migration[7.0]
  def change
    create_table :changelogs do |t|
      t.string :version
      t.string :release_date
      t.string :details

      t.timestamps
    end
  end
end
