class Email < ActionMailer::Base
default :from => "498.rakesh@gmail.com"
	 
def signup_notify(email)
	attachments["yashoda.jpeg"] = File.read("#{Rails.root}/public/images/yashoda.jpeg")
mail(:to => email, :subject => "Registered")
end
end