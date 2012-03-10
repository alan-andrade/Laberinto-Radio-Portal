class Broadcaster < User
	acts_as_authentic
	has_attached_file	:avatar,
										styles: {:small =>	"80x80#"}
										
	has_many	:ownerships	
	has_many	:programs,	through: :ownerships
	has_many	:claims,	class_name: 'Request', :include=>[:program,:presenter]
	has_many	:requests, foreign_key: :requester_id, :include=>[:program,:requester]
end
