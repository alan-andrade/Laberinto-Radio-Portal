#encoding: utf-8
class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.string :day, null: false 
    end
    ["Lunes","Martes","Miércoles","Jueves","Viernes","Sábado","Domingo"].each {|day|	Day.create(day: day) }
  end
end
