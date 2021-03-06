# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cities = City.create([{ name: 'Medellin' }, { name: 'Bogota' }, { name: 'Barranquilla' }, { name: 'Pereira' }, { name: 'Cartagena' }])
states = State.create([{ name: 'Antioquia' }, { name: 'Cundinamarca' }, { name: 'Atlantico' }, { name: 'Risaralda' }, { name: 'Bolivar' }])
categories = Categorie.create([{ name: 'Bebidas'}, { name: 'Entradas'}, { name: 'Platos Fuertes'}, {name: 'Postres'} ])
ingredientes = Ingredient.create([{name: 'Coca-Cola', unit_of_measurement: 'Unidades'},{name: 'Porcion-Pollo', unit_of_measurement: 'Unidades'},{name: 'Porcion-res', unit_of_measurement: 'Unidades'},{name: 'Arepa', unit_of_measurement: 'Unidades'}])