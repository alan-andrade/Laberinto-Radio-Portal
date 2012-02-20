class PresentersMailer < ActionMailer::Base
  default from: "admin@laberintoradio.net"
  
  def invitation_email(user)
  	@user	=	user
  	mail(to: @user.email,subject: 'Bienvenido Locutor!') do |format|
  		format.html
  		format.text
  	end
  end
end
