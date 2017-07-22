class CreatePeriods < ActiveRecord::Migration[5.1]
  def change
    create_table :periods do |t|
      t.integer :day
      t.timestamp :start
      t.timestamp :end
      t.integer :location_id

      t.timestamps
    end
  end
end
