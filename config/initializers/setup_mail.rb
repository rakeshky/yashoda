ActionMailer::Base.smtp_settings = {  
      :address              => "smtp.gmail.com",  
      :port                 => 587,  
      :domain               => "gmail.com",  
     :user_name            => "498.rakesh@gmail.com", #Your user name
      :password             => "99rakesh59", # Your password
      :authentication       => "plain",  
      :enable_starttls_auto => true  
   }
