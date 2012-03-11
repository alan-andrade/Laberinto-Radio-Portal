class RemoveRequestsTable < ActiveRecord::Migration
  def up
  	drop_table :requests
  end

  def down
  	create_table :requests do |t|
      t.references :requester	,	null: false
      t.references :presenter	,	null: false
      t.references :program		,	null: false

      t.timestamps
  end
end
