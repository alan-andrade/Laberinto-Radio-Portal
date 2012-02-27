# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Presenter.create(name: "Alan Andrade Cestelos", email: "alan.andradec@gmail.com",  password: "gallo", password_confirmation: "gallo", admin: true)
["Lunes","Martes","Miércoles","Jueves","Viernes","Sábado","Domingo"].each {|day|	Day.create(day: day) }
