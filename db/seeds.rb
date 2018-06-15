# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u1 = User.first
# e1 = Evenement.create( titre:'Sayna Yeaeh', date: '2018-04-07 00:00:00', description:'Ne ratez pas l\'occasion de votre vie', price: 300,picture: "coucou.jpg")

# c1 = Category.create( name:'education')

# o1 = Organisateur.create( title:'Sayna', about:'Help people rise out of poverty by digital work')

# section = Section.create(title: 'free', duration: '2018-03-12 00:00:00')

# s1 = Status.create(title: 'entreprise')

# u1.organisateur = o1
coms = Commentaire.create(comment: "Coucou")
coms.user = u1
coms.evenement = Evenement.last
# p Evenement.last
coms.save!
# o1.user = u1
# o1.save
# u1.section = section
# e1.category = c1
# e1.organisateur = o1
# o1.status = s1


# e1.save
# c1.save
# o1.save
# section.save
# s1.save

# e = Evenement.first
# puts "Section: "+e.section.title
# puts "Organisateur: "+e.organisateur.title
# puts "Section: "+e.category.name
# puts "User:"+u1.organisateur.title

# u2 = User.new
# puts u2
# section = Section.create(title: 'free', duration: '2018-03-12 00:00:00')
# section.save
# u2.section = section

# puts User.first.name

# p u2

