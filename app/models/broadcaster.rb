class Broadcaster < User
	acts_as_authentic
	has_attached_file	:avatar, styles: {:small =>	"80x80#"}
										
	has_many	:ownerships	
	has_many	:programs,	through: :ownerships
	has_many 	:admin_ownerships,	class_name: "Ownership", conditions: {admin: true}
	has_many	:admin_programs, through: :admin_ownerships, source: :program

	def admins?(program)
		admin_programs.include?(program)
	end
end
