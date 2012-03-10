class RenamePresentersToUsers < ActiveRecord::Migration
  def up
  	rename_table(:presenters, :users)
  end

  def down
  	rename_table(:users,:presenters)
  end
end
