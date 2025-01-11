class CreateAvailabilities < ActiveRecord::Migration[8.0]
  def change
    create_table :availabilities do |t|
      t.references :psychologist, null: false, foreign_key: true
      t.string :day_of_week
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
