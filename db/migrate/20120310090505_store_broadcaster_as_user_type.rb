class StoreBroadcasterAsUserType < ActiveRecord::Migration
  def up
  	User.all.each do |user|
  		user.type = "Broadcaster";user.save
  	end
  end

  def down
  	User.all.each do |user|
  		user.type = ''
  	end
  end
end
