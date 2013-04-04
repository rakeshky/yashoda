class DoctorPatientAppointment < ActiveRecord::Base
  attr_accessible :appointment_date, :doctor_id, :patient_id

validates :patient_id, :presence => {:message=>"plz fill patient id"},:uniqueness=>{:message=>"this user already exist"} 

end