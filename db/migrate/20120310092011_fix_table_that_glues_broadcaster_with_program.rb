class FixTableThatGluesBroadcasterWithProgram < ActiveRecord::Migration
  def up
  	rename_column(:ownerships, :presenter_id, :broadcaster_id)
  end

  def down
  	rename_column(:ownerships, :broadcaster_id,:presenter_id)
  end
end
