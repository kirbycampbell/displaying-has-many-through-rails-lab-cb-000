class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :appointment_datetime
      t.integer :patient
      t.integer :doctor

      t.timestamps null: false
    end
  end
end
