class Request < ActiveRecord::Base
  belongs_to :requester,	class_name: "Presenter"
  belongs_to :presenter
  belongs_to :program
  
  before_save	:ensure_program_ownership, :avoid_repetition
  
  def approve
  	if program.presenters << requester
  		destroy
  		true
  	else
  		false
  	end
  end
  
  private
  def ensure_program_ownership
  	presenter.programs.include?(program) ? true : false
  end
  def avoid_repetition
  	program.requests.each do |program|
  		return false if program.requester == requester  		
  	end
  end
end
