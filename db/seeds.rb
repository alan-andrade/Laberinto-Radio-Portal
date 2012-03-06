# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Presenter.create([
	{ 
		name: "Alan Andrade Cestelos", 
		email: "alan.andradec@gmail.com",
		password: "gallo",
		password_confirmation: "gallo",
		admin: true
	},{
		name: "Juan Manuel Andrade",
		email: "juan.andrade@ameco.com",
		password: "juan.andrade",
		password_confirmation: "juan.andrade"
	},{
		name: "Jose Luis Barrera",
		email: "barreraruiz7@hotmail.com",
		password: "elnapo",
		password_confirmation: "elnapo"
	},{
		name: "Ernesto Horta",
		email: "neto_ame1@hotmail.com",
		password: "netohorta",
		password_confirmation: "netohorta"
	},{
		name: "Angel Fernando Melo",
		email: "pochibanda@hotmail.com",
		password: "pochibanda",
		password_confirmation: "pochibanda"
	},{
		name: "Fatima Celestin",
		email: "karmalaberintoradio@hotmail.com",
		password: "fatimaKarma",
		password_confirmation: "fatimaKarma"
	},{
		name: "Jose Luis Del Moral",
		email: "delmo_td13@hotmail.com",
		password: "delmo123",
		password_confirmation: "delmo123"
	},{
		name: "Armando Torres",
		email: "diego.torresss@hotmail.com",
		password: "armandodice",
		password_confirmation: "armandodice"
	},{
		name: "Jorge Coquis Contreras",
		email: "coquis35@yahoo.com",
		password: "coquisM35",
		password_confirmation: "coquisM35"
	},{
		name: "Thais Corona",
		email: "thais.coronacz@gmail.com",
		password: "galleta",
		password_confirmation: "galleta"
	},{
		name: "Tatsu Drache Beltran",
		email: "warblade.sk8@gmail.com",
		password: "dragoncito",
		password_confirmation: "dragoncito"
	},{
		name: "Ildefonso Hernandez Cervantes",
		email: "yontopapa@gmail.com",
		password: "ildefonsooo",
		password_confirmation: "ildefonsooo"
	},{
		name: "Luis Angel Altamirano",
		email: "wwemxdx@gmail.com",
		password: "luis@ngel",
		password_confirmation: "luis@ngel"
	},{
		name: "Woolf Elias",
		email: "lobohowlero@hotmail.com",
		password: "woolfelias",
		password_confirmation: "woolfelias"
	},{
		name: "Oscar Garay",
		email: "oscar.garay@yoica.com",
		password: "yoicagaray",
		password_confirmation: "yoicagaray"
	},{
		name: "Luis Palicio",
		email: "lpalicio@hotmail.com",
		password: "lp@licio",
		password_confirmation: "lp@licio"
	}])

["Lunes","Martes","Miercoles","Jueves","Viernes","Sabado","Domingo"].each {|day|	Day.create(day: day) }