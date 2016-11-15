class CreateExtConnections < ActiveRecord::Migration
  def change
    create_table :ext_connections do |t|

      t.timestamps

    end
  end
end
