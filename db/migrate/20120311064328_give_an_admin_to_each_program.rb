class GiveAnAdminToEachProgram < ActiveRecord::Migration
  def up
  	Program.all.each do |program|
  		program.ownerships.first.update_attribute(:admin,true)
  	end
  end

  def down
  end
end
