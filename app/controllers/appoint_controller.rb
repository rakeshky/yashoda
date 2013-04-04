class AppointController < ApplicationController

def create
	@roles=Userrole.all
if request.post?
	@abc=Appoint.create( :department=>params[:dep], :phone=>params[:phone], :role=>params[:role_id], :username=>params[:username], :email=>params[:email])
@m=params[:email]
Email.signup_notify(@m).deliver
logger.info"........12..#{params[:role_id]}"
if params[:role_id]=="1"
@d=Doctor.create(:name=>params[:username],:department=>params[:dep])
else
@p=Patient.create(:name=>params[:username],:department=>params[:dep])
end



end

end
def disp
	if request.post?
@ad=Admin.create(:email=>params[:email],:name=>params[:name],:password=>params[:password],:username=>params[:username])
Email.signup_notify(params[:email]).deliver
end
end
def login
	if request.post?
@a=Admin.find_by_password(params[:password])
if @a
redirect_to :action=>"show"
else
	redirect_to :action=>"login"
	end
end
end
def show

@r=Userrole.find_by_sql("select * from userroles where role_name='doctor'")

logger.info".........1...........#{@r}"
if request.post?
@doc=Doctor.all
#logger.info".........1...........#{params[:role_id]}"
logger.info".........1...........#{@doc}"
if(@doc=Doctor.all)
@ab="doctors table"

end
end

	#@role=Appoint.find_by_id(@user).role

#if @role=="doctor"
#@doc=@role

#end
#@department=Appoint.find_by_role(@role).department

#@username=Appoint.find_by_department(@department).username

#@pat=Appoint.find_all_by_role("patient")
#session[:id]=@pat.department
	end
def edit
#if session[:id]=="Cardiology"

#	@u=Appoint.find_all_by_id(params[:id]).role="2"
@dep=params[:department]
@n=params[:name]
@id=params[:id]

@pat = Patient.find_by_sql("select * from patients where department='#{params[:department]}'")
logger.info"........1.........#{@pat}"

if request.post?

	@pp=DoctorPatientAppointment.create(:doctor_id=>params[:hid],:patient_id=>params[:patient_id],:appointment_date=>params[:app]) 


end


end
end