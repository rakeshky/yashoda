class CreateDoctorPatientAppointments < ActiveRecord::Migration
  def change
    create_table :doctor_patient_appointments do |t|
      t.string :doctor_id
      t.string :patient_id
      t.string :appointment_date

      t.timestamps
    end
  end
end
