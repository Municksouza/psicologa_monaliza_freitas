class CreateAppointments < ActiveRecord::Migration[8.0]
  def change
    create_table :appointments do |t|
      t.references :patient, null: false, foreign_key: true
      t.references :availability, null: false, foreign_key: true
      t.date :date
      t.time :start_time
      t.time :end_time
      t.string :status

      t.timestamps
    end
  end
end
