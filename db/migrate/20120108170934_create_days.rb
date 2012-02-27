#encoding: utf-8
class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.string :day, null: false 
    end
  end
end
