# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Populating Fake Data
phase = [ "Inquérito Policial", "Audiência", "Fórum", "Mandato Decretado", "Publicação em Diário Oficial"]

50.times do
  List.create({
    number: rand(10000000..99999999),
    court: rand(1..5),
    macro: rand(1..3),
    macro_period: DateTime.now - (rand * 360),
    phase: phase.sample,
    phase_period: DateTime.now - (rand * 360),
    monitored: [true, false].sample
  })
end
