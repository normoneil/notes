class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :body
      t.string :location
      t.string :device
      t.string :dtg

      t.timestamps

    end
  end
end
