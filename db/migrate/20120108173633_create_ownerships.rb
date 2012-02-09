class CreateOwnerships < ActiveRecord::Migration
  def change
    create_table :ownerships do |t|
      t.references :presenter,	null: false 
      t.references :program,		null: false 
    end
    add_index :ownerships, :presenter_id
    add_index :ownerships, :program_id
  end
end
