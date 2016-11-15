class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.integer :note_id
      t.string :body
      t.string :list
      t.string :picture

      t.timestamps

    end
  end
end
