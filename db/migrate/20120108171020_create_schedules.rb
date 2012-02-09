class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
			t.references :program	,	null: false
			t.references :day			,	null: false 
    end
  end
end
