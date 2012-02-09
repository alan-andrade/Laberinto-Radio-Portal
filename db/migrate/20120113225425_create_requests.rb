class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.references :requester	,	null: false
      t.references :presenter	,	null: false
      t.references :program		,	null: false

      t.timestamps
    end
    add_index :requests, :requester_id
    add_index :requests, :presenter_id
    add_index :requests, :program_id
  end
end
