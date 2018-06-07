# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
e1 = Evenement.create( titre:'Smatchin 2018', description:'Venez supporter votre equipe les loulous', price: 300 )
e2 = Evenement.create( titre:'Sayna Yeaeh', description:'Ne ratez pas l\'occasion de votre vie', price: 001)

c1 = Category.create( name:'Sport')
c2 = Category.create( name:'Business')

o1 = Organisateur.create( kind:'Entreprise', name:'Sayna', about:'Help people rise out of poverty by digital work')
o2 = Organisateur.create( kind:'Universite', name:'FMPA', about:'le groupe de gens qui organise le tournoi de l\'année')

e1.category = c1
e2.category = c2
e1.organisateur = o1
e2.organisateur = o2

e1.save
e2.save
