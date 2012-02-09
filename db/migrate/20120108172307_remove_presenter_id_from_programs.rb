class RemovePresenterIdFromPrograms < ActiveRecord::Migration
  def up
  	remove_column	:programs,	:presenter_id
  end

  def down
  	add_column	:programs,	:presenter_id,	null: false 
  end
end
