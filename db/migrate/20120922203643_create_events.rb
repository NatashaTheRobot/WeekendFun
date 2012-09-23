class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :location
      t.datetime :start_time
      t.string :image

      t.timestamps
    end

    add_index :events, :title
  end
end
