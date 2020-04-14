# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning the DB..."
Category.destroy_all
Nominee.destroy_all
Answer.destroy_all
User.destroy_all
puts "DB cleaned."


puts "Creating the user..."
u1 = User.create!({
  email: "contact@mathilderobert.com",
  prenom: "Mathilde",
  nom: "Robert",
  password: "5656vbui"
})

puts "Creating the categories..."
puts "Creating Commune naissance Anthony"
c1 = Category.create!({
  title: "Dans quelle commune est né Anthony ?",
  points: 5
})
c1.save!
puts "Creating Phrase Anthony"
c2 = Category.create!({
  title: "Quelle est une des phrases qu’Anthony adore prononcer ? ",
  points: 5
})
c2.save!
puts "Categories created !"
puts "Creating the nominees..."
n1 = Nominee.create({
  name: "Saint-Avold",
  real: "Moselle"
})
n1.category_id = c1.id
photo_n1 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1586773300/saint-avold_tojnbb.jpg")
n1.photo.attach(io: photo_n1, filename: 'photo_n1.jpg', content_type: 'image/jpg')
n1.save!
n2 = Nominee.create({
  name: "Paris",
  real: "Île-De-France"
})
n2.category_id = c1.id
photo_n2 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1586775049/paris-2017-home_xpfpkg.jpg")
n2.photo.attach(io: photo_n2, filename: 'photo_n2.jpg', content_type: 'image/jpg')
n2.save!
n3 = Nominee.create({
  name: "Creutzwald",
  real: "Moselle"
})
n3.category_id = c1.id
photo_n3 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1586775129/creutzwald_zglwpp.jpg")
n3.photo.attach(io: photo_n3, filename: 'photo_n3.jpg', content_type: 'image/jpg')
n3.save!
n4 = Nominee.create({
  name: "Remiremont",
  real: "Vosges"
})
n4.category_id = c1.id
photo_n4 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1586775129/remiremont_dpytzn.jpg")
n4.photo.attach(io: photo_n4, filename: 'photo_n4.jpg', content_type: 'image/jpg')
n4.save!
n5 = Nominee.create({
  name: "Saint-Avold",
  real: "Moselle"
})
n1.category_id = c1.id
photo_n1 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1586773300/saint-avold_tojnbb.jpg")
n1.photo.attach(io: photo_n1, filename: 'photo_n1.jpg', content_type: 'image/jpg')
n1.save!
n2 = Nominee.create({
  name: "Paris",
  real: "Île-De-France"
})
n2.category_id = c1.id
photo_n2 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1586775049/paris-2017-home_xpfpkg.jpg")
n2.photo.attach(io: photo_n2, filename: 'photo_n2.jpg', content_type: 'image/jpg')
n2.save!
n3 = Nominee.create({
  name: "Creutzwald",
  real: "Moselle"
})
n3.category_id = c1.id
photo_n3 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1586775129/creutzwald_zglwpp.jpg")
n3.photo.attach(io: photo_n3, filename: 'photo_n3.jpg', content_type: 'image/jpg')
n3.save!
n4 = Nominee.create({
  name: "Remiremont",
  real: "Vosges"
})
n4.category_id = c1.id
photo_n4 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1586775129/remiremont_dpytzn.jpg")
n4.photo.attach(io: photo_n4, filename: 'photo_n4.jpg', content_type: 'image/jpg')
n4.save!
# puts "Creating Meilleur espoir masculin"
# c2 = Category.create!({
#   title: "Meilleur espoir masculin",
#   points: 5
# })
# c2.save!
# puts "Creating Meilleur acteur dans un second rôle"
# c3 = Category.create!({
#   title: "Meilleur acteur dans un second rôle",
#   points: 3
# })
# c3.save!
# puts "Creating Meilleurs costumes"
# c4 = Category.create!({
#   title: "Meilleurs costumes",
#   points: 10
# })
# c4.save!
# puts "Creating Meilleurs décors"
# c5 = Category.create!({
#   title: "Meilleurs décors",
#   points: 10
# })
# c5.save!
# puts "Creating Meilleur animation court métrage"
# c6 = Category.create!({
#   title: "Meilleur animation court métrage",
#   points: 10
# })
# c6.save!
# puts "Creating Meilleur animation long métrage"
# c7 = Category.create!({
#   title: "Meilleur animation long métrage",
#   points: 5
# })
# c7.save!
# puts "Creating Meilleure photographie"
# c8 = Category.create!({
#   title: "Meilleure photographie",
#   points: 10
# })
# c8.save!
# puts "Creating Meilleur adaptation"
# c9 = Category.create!({
#   title: "Meilleure adaptation",
#   points: 5
# })
# c9.save!
# puts "Creating Meilleur montage"
# c10 = Category.create!({
#   title: "Meilleur montage",
#   points: 10
# })
# c10.save!
# puts "Creating Meilleur son"
# c11 = Category.create!({
#   title: "Meilleur son",
#   points: 10
# })
# c11.save!
# puts "Creating meilleur Film de court métrage"
# c12 = Category.create!({
#   title: "Meilleur film de court métrage",
#   points: 10
# })
# c12.save!
# puts "Creating meilleure actrice dans un second rôle"
# c13 = Category.create!({
#   title: "Meilleure actrice dans un second rôle",
#   points: 5
# })
# c13.save!
# puts "Creating meilleur premier film"
# c14 = Category.create!({
#   title: "Meilleur premier film",
#   points: 5
# })
# c14.save!
# puts "Creating meilleur film documentaire"
# c15 = Category.create!({
#   title: "Meilleur film documentaire",
#   points: 10
# })
# c15.save!
# puts "Creating meilleure musique originale"
# c16 = Category.create!({
#   title: "Meilleure musique originale",
#   points: 10
# })
# c16.save!
# puts "Creating meilleur scénario original"
# c17 = Category.create!({
#   title: "Meilleur scénario original",
#   points: 3
# })
# c17.save!
# puts "Creating meilleur film étranger"
# c18 = Category.create!({
#   title: "Meilleur film étranger",
#   points: 5
# })
# c18.save!
# puts "Creating Meilleure réalisation"
# c19 = Category.create!({
#   title: "Meilleure réalisation",
#   points: 3
# })
# c19.save!
# puts "Creating Meilleur acteur"
# c20 = Category.create!({
#   title: "Meilleur acteur",
#   points: 3
# })
# c20.save!
# puts "Creating Meilleure actrice"
# c21 = Category.create!({
#   title: "Meilleure actrice",
#   points: 3
# })
# c21.save!
# puts "Creating Meilleur film"
# c22 = Category.create!({
#   title: "Meilleur film",
#   points: 3
# })
# c22.save!
# puts "Creating Meilleur film du public"
# c23 = Category.create!({
#   title: "Meilleur film du public",
#   points: 3
# })
# c23.save!
# puts "Categories created !"
# puts "Creating the nominees..."
# n1 = Nominee.create({
#   name: "Anaïs Demoustier",
#   real: "Alice et le maire"
# })
# n1.category_id = c21.id
# photo_n1 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581670234/anais-demoustier_zgwzai.jpg")
# n1.photo.attach(io: photo_n1, filename: 'photo_n1.jpg', content_type: 'image/jpg')
# n1.save!
# n2 = Nominee.create({
#   name: "Eva Green",
#   real: "Proxima"
# })
# n2.category_id = c21.id
# photo_n2 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581670234/eva-green_tnw7ce.jpg")
# n2.photo.attach(io: photo_n2, filename: 'photo_n1.jpg', content_type: 'image/jpg')
# n2.save!
# n3 = Nominee.create({
#   name: "Adèle Haenel",
#   real: "Portrait de la jeune fille en feu"
# })
# n3.category_id = c21.id
# photo_n3 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581670234/adele-haenel_wvjoww.jpg")
# n3.photo.attach(io: photo_n3, filename: 'photo_n3.jpg', content_type: 'image/jpg')
# n3.save!
# n4 = Nominee.create({
#   name: "Chiara Mastroianni",
#   real: "Chambre 212"
# })
# n4.category_id = c21.id
# photo_n4 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581670236/chiara-mastroianni_bkxoof.jpg")
# n4.photo.attach(io: photo_n4, filename: 'photo_n4.jpg', content_type: 'image/jpg')
# n4.save!
# n5 = Nominee.create({
#   name: "Noémie Merlant",
#   real: "Portrait de la jeune fille en feu"
# })
# n5.category_id = c21.id
# photo_n5 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581670235/noemie-merlant_e2zmuj.jpg")
# n5.photo.attach(io: photo_n5, filename: 'photo_n5.jpg', content_type: 'image/jpg')
# n5.save!
# n6 = Nominee.create({
#   name: "Doria Tillier",
#   real: "La belle époque"
# })
# n6.category_id = c21.id
# photo_n6 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581670234/doria-tillier_ifeiok.jpg")
# n6.photo.attach(io: photo_n6, filename: 'photo_n6.jpg', content_type: 'image/jpg')
# n6.save!
# n7 = Nominee.create({
#   name: "Karin Viard",
#   real: "Chanson douce"
# })
# n7.category_id = c21.id
# photo_n7 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581670234/karin-viard_keddke.jpg")
# n7.photo.attach(io: photo_n7, filename: 'photo_n7.jpg', content_type: 'image/jpg')
# n7.save!
# n8 = Nominee.create({
#   name: "Daniel Auteuil",
#   real: "La belle époque"
# })
# n8.category_id = c20.id
# photo_n8 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581672338/daniel-auteuil_urrgci.jpg")
# n8.photo.attach(io: photo_n8, filename: 'photo_n8.jpg', content_type: 'image/jpg')
# n8.save!
# n9 = Nominee.create({
#   name: "Damien Bonnard",
#   real: "Les Misérables"
# })
# n9.category_id = c20.id
# photo_n9 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581672337/damien-bonnard_rvqmyr.jpg")
# n9.photo.attach(io: photo_n9, filename: 'photo_n9.jpg', content_type: 'image/jpg')
# n9.save!
# n10 = Nominee.create({
#   name: "Vincent Cassel",
#   real: "Hors Normes"
# })
# n10.category_id = c20.id
# photo_n10 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581672338/vincent-cassel_sz4eab.jpg")
# n10.photo.attach(io: photo_n10, filename: 'photo_n10.jpg', content_type: 'image/jpg')
# n10.save!
# n11 = Nominee.create({
#   name: "Jean Dujardin",
#   real: "J'accuse"
# })
# n11.category_id = c20.id
# photo_n11 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581672337/jean-dujardin_mpduzg.jpg")
# n11.photo.attach(io: photo_n11, filename: 'photo_n11.jpg', content_type: 'image/jpg')
# n11.save!
# n12 = Nominee.create({
#   name: "Reda Kateb",
#   real: "Hors normes"
# })
# n12.category_id = c20.id
# photo_n12 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581672338/reda-kateb_ibcnk6.jpg")
# n12.photo.attach(io: photo_n12, filename: 'photo_n12.jpg', content_type: 'image/jpg')
# n12.save!
# n13 = Nominee.create({
#   name: "Melvil Poupaud",
#   real: "Grâce à dieu"
# })
# n13.category_id = c20.id
# photo_n13 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581672337/melvil-poupaud_ef6dzf.jpg")
# n13.photo.attach(io: photo_n13, filename: 'photo_n13.jpg', content_type: 'image/jpg')
# n13.save!
# n14 = Nominee.create({
#   name: "Roschdy Zem",
#   real: "Roubaix, une lumière"
# })
# n14.category_id = c20.id
# photo_n14 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581672337/roshdy-zem_kbyvj2.jpg")
# n14.photo.attach(io: photo_n14, filename: 'photo_n14.jpg', content_type: 'image/jpg')
# n14.save!
# n15 = Nominee.create({
#   name: "Fanny Ardant",
#   real: "La belle époque"
# })
# n15.category_id = c13.id
# photo_n15 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581673430/fanny-ardant_nfaw29.jpg")
# n15.photo.attach(io: photo_n15, filename: 'photo_n15.jpg', content_type: 'image/jpg')
# n15.save!
# n16 = Nominee.create({
#   name: "Josiane Balasko",
#   real: "Grâce à dieu"
# })
# n16.category_id = c13.id
# photo_n16 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581673430/josiane-balasko_g4zstb.jpg")
# n16.photo.attach(io: photo_n16, filename: 'photo_n16.jpg', content_type: 'image/jpg')
# n16.save!
# n17 = Nominee.create({
#   name: "Laure Calamy",
#   real: "Seules les bêtes"
# })
# n17.category_id = c13.id
# photo_n17 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581673430/laure-calamy_i7pszi.jpg")
# n17.photo.attach(io: photo_n17, filename: 'photo_n17.jpg', content_type: 'image/jpg')
# n17.save!
# n18 = Nominee.create({
#   name: "Sara Forestier",
#   real: "Roubaix, une lumière"
# })
# n18.category_id = c13.id
# photo_n18 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581673430/sara-forestier_p8hzk7.jpg")
# n18.photo.attach(io: photo_n18, filename: 'photo_n18.jpg', content_type: 'image/jpg')
# n18.save!
# n19 = Nominee.create({
#   name: "Hélène Vincent",
#   real: "Hors Normes"
# })
# n19.category_id = c13.id
# photo_n19 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581673430/helene-vincent_ui39qd.jpg")
# n19.photo.attach(io: photo_n19, filename: 'photo_n19.jpg', content_type: 'image/jpg')
# n19.save!
# n20 = Nominee.create({
#   name: "Swann Arlaud",
#   real: "Grâce à Dieu"
# })
# n20.category_id = c3.id
# photo_n20 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581674237/swann-arlaud_yzksmh.jpg")
# n20.photo.attach(io: photo_n20, filename: 'photo_n20.jpg', content_type: 'image/jpg')
# n20.save!
# n21 = Nominee.create({
#   name: "Grégory Gadebois",
#   real: "J'accuse"
# })
# n21.category_id = c3.id
# photo_n21 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581674235/gregory-gadebois_bgidt7.jpg")
# n21.photo.attach(io: photo_n21, filename: 'photo_n21.jpg', content_type: 'image/jpg')
# n21.save!
# n22 = Nominee.create({
#   name: "Louis Garrel",
#   real: "J'accuse"
# })
# n22.category_id = c3.id
# photo_n22 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581674235/louis-garrel_mbbzz1.jpg")
# n22.photo.attach(io: photo_n22, filename: 'photo_n21.jpg', content_type: 'image/jpg')
# n22.save!
# n23 = Nominee.create({
#   name: "Benjamin Lavernhe",
#   real: "Mon inconnue"
# })
# n23.category_id = c3.id
# photo_n23 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581674237/benjamin-lavernhe_rdbjk2.jpg")
# n23.photo.attach(io: photo_n23, filename: 'photo_n23.jpg', content_type: 'image/jpg')
# n23.save!
# n24 = Nominee.create({
#   name: "Denis Ménochet",
#   real: "Grâce à Dieu"
# })
# n24.category_id = c3.id
# photo_n24 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581674235/denis-menochet_t0m4qo.jpg")
# n24.photo.attach(io: photo_n24, filename: 'photo_n24.jpg', content_type: 'image/jpg')
# n24.save!
# n25 = Nominee.create({
#   name: "Luàna Bajrami",
#   real: "Portrait de la jeune fille en feu"
# })
# n25.category_id = c1.id
# photo_n25 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581674638/luana-bajrami_bo1q0e.jpg")
# n25.photo.attach(io: photo_n25, filename: 'photo_n25.jpg', content_type: 'image/jpg')
# n25.save!
# n26 = Nominee.create({
#   name: "Céleste Brunnquell",
#   real: "Les Éblouis"
# })
# n26.category_id = c1.id
# photo_n26 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581674639/celeste-brunnquell_bzqden.jpg")
# n26.photo.attach(io: photo_n26, filename: 'photo_n26.jpg', content_type: 'image/jpg')
# n26.save!
# n27 = Nominee.create({
#   name: "Lyna Khoudri",
#   real: "Papicha"
# })
# n27.category_id = c1.id
# photo_n27 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581674639/lyna-khoudri_sjre90.jpg")
# n27.photo.attach(io: photo_n27, filename: 'photo_n27.jpg', content_type: 'image/jpg')
# n27.save!
# n28 = Nominee.create({
#   name: "Nina Meurisse",
#   real: "Camille"
# })
# n28.category_id = c1.id
# photo_n28 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581674639/nina-meurisse_nrqqn6.jpg")
# n28.photo.attach(io: photo_n28, filename: 'photo_n28.jpg', content_type: 'image/jpg')
# n28.save!
# n29 = Nominee.create({
#   name: "Mama Sané",
#   real: "Atlantique"
# })
# n29.category_id = c1.id
# photo_n29 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581674639/mame-bineta-sane_liy3ob.jpg")
# n29.photo.attach(io: photo_n29, filename: 'photo_n29.jpg', content_type: 'image/jpg')
# n29.save!
# n30 = Nominee.create({
#   name: "Anthony Bajon",
#   real: "Au nom de la terre"
# })
# n30.category_id = c2.id
# photo_n30 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581673934/anthony-bajon_eyqrfe.jpg")
# n30.photo.attach(io: photo_n30, filename: 'photo_n30.jpg', content_type: 'image/jpg')
# n30.save!
# n31 = Nominee.create({
#   name: "Benjamin Lesieur",
#   real: "Hors Normes"
# })
# n31.category_id = c2.id
# photo_n31 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1582577808/lesieur_zzuzfj.jpg")
# n31.photo.attach(io: photo_n31, filename: 'photo_n31.jpg', content_type: 'image/jpg')
# n31.save!
# n32 = Nominee.create({
#   name: "Alexis Manenti",
#   real: "Les Misérables"
# })
# n32.category_id = c2.id
# photo_n32 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581673934/alexis-manenti_yhmmcl.jpg")
# n32.photo.attach(io: photo_n32, filename: 'photo_n32.jpg', content_type: 'image/jpg')
# n32.save!
# n33 = Nominee.create({
#   name: "Liam Pierron",
#   real: "La Vie Scolaire"
# })
# n33.category_id = c2.id
# photo_n33 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581673934/liam-pierron_iknklp.jpg")
# n33.photo.attach(io: photo_n33, filename: 'photo_n33.jpg', content_type: 'image/jpg')
# n33.save!
# n34 = Nominee.create({
#   name: "Djebril Zonga",
#   real: "Les Misérables"
# })
# n34.category_id = c2.id
# photo_n34 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581673934/djebril-zonga_sb6vy0.jpg")
# n34.photo.attach(io: photo_n34, filename: 'photo_n34.jpg', content_type: 'image/jpg')
# n34.save!
# n35 = Nominee.create({
#   name: "Nicolas Bedos",
#   real: "La belle époque"
# })
# n35.category_id = c17.id
# photo_n35 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1582577326/belle_epoque_qdibin.jpg")
# n35.photo.attach(io: photo_n35, filename: 'photo_n35.jpg', content_type: 'image/jpg')
# n35.save!
# n36 = Nominee.create({
#   name: "François Ozon",
#   real: "Grâce à Dieu"
# })
# n36.category_id = c17.id
# photo_n36 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1582577525/Grace_a_Dieu_lqoczk.jpg")
# n36.photo.attach(io: photo_n36, filename: 'photo_n36.jpg', content_type: 'image/jpg')
# n36.save!
# n37 = Nominee.create({
#   name: "Eric Toledano, Olivier Nakache",
#   real: "Hors Normes"
# })
# n37.category_id = c17.id
# photo_n37 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581675620/toledano_scc1b5.jpg")
# n37.photo.attach(io: photo_n37, filename: 'photo_n37.jpg', content_type: 'image/jpg')
# n37.save!
# n38 = Nominee.create({
#   name: "Ladj Ly, Giordano Gederlini, Alexis Manenti",
#   real: "Les Misérables"
# })
# n38.category_id = c17.id
# photo_n38 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1582576798/Les_Miserables_fdkeok.jpg")
# n38.photo.attach(io: photo_n38, filename: 'photo_n38.jpg', content_type: 'image/jpg')
# n38.save!
# n39 = Nominee.create({
#   name: "Céline Sciamma",
#   real: "Portrait de la jeune fille en feu"
# })
# n39.category_id = c17.id
# photo_n39 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581675620/celine-sciamma_k99nzj.jpg")
# n39.photo.attach(io: photo_n39, filename: 'photo_n39.jpg', content_type: 'image/jpg')
# n39.save!
# n40 = Nominee.create({
#   name: "Costa-Gavras",
#   real: "Adults in the room"
# })
# n40.category_id = c9.id
# photo_n40 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1582577864/Adults_in_the_Room_bw6zue.jpg")
# n40.photo.attach(io: photo_n40, filename: 'photo_n40.jpg', content_type: 'image/jpg')
# n40.save!
# n41 = Nominee.create({
#   name: "Roman Polanski, Robert Harris",
#   real: "J'accuse"
# })
# n41.category_id = c9.id
# photo_n41 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581676225/j-accuse_i2k1pg.jpg")
# n41.photo.attach(io: photo_n41, filename: 'photo_n41.jpg', content_type: 'image/jpg')
# n41.save!
# n42 = Nominee.create({
#   name: "Jérémy Clapin, Guillaume Laurent",
#   real: "J'ai perdu mon corps"
# })
# n42.category_id = c9.id
# photo_n42 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581676224/perdu-mon-corps_cdhlro.jpg")
# n42.photo.attach(io: photo_n42, filename: 'photo_n42.jpg', content_type: 'image/jpg')
# n42.save!
# n43 = Nominee.create({
#   name: "Arnaud Desplechin, Léa Mysius",
#   real: "Roubaix, une lumière"
# })
# n43.category_id = c9.id
# photo_n43 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581676225/roubaix_wz2k8j.jpg")
# n43.photo.attach(io: photo_n43, filename: 'photo_n43.jpg', content_type: 'image/jpg')
# n43.save!
# n44 = Nominee.create({
#   name: "Dominik Moll, Gilles Marchand",
#   real: "Seules les bêtes"
# })
# n44.category_id = c9.id
# photo_n44 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581676225/roubaix_wz2k8j.jpg")
# n44.photo.attach(io: photo_n44, filename: 'photo_n44.jpg', content_type: 'image/jpg')
# n44.save!
# n45 = Nominee.create({
#   name: "Fatima Al Qadiri",
#   real: "Atlantique"
# })
# n45.category_id = c16.id
# photo_n45 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1582577927/Atlantique_g0lwuo.jpg")
# n45.photo.attach(io: photo_n45, filename: 'photo_n45.jpg', content_type: 'image/jpg')
# n45.save!
# n46 = Nominee.create({
#   name: "Alexandre Desplat",
#   real: "J'accuse"
# })
# n46.category_id = c16.id
# photo_n46 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581676225/j-accuse_i2k1pg.jpg")
# n46.photo.attach(io: photo_n46, filename: 'photo_n46.jpg', content_type: 'image/jpg')
# n46.save!
# n47 = Nominee.create({
#   name: "Dan Lévy",
#   real: "J'ai perdu mon corps"
# })
# n47.category_id = c16.id
# photo_n47 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581676224/perdu-mon-corps_cdhlro.jpg")
# n47.photo.attach(io: photo_n47, filename: 'photo_n47.jpg', content_type: 'image/jpg')
# n47.save!
# n48 = Nominee.create({
#   name: "Marco Casanova, Kim Chapiron pour le groupe Pink Noise",
#   real: "Les Misérables"
# })
# n48.category_id = c16.id
# photo_n48 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1582576798/Les_Miserables_fdkeok.jpg")
# n48.photo.attach(io: photo_n48, filename: 'photo_n48.jpg', content_type: 'image/jpg')
# n48.save!
# n49 = Nominee.create({
#   name: "Grégoire Hetzel",
#   real: "Roubaix, une lumière"
# })
# n49.category_id = c16.id
# photo_n49 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581676225/roubaix_wz2k8j.jpg")
# n49.photo.attach(io: photo_n49, filename: 'photo_n49.jpg', content_type: 'image/jpg')
# n49.save!
# n50 = Nominee.create({
#   name: "Rémi Daru, Séverin Favriau, Jean-Paul Hurier",
#   real: "La belle époque"
# })
# n50.category_id = c11.id
# photo_n50 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1582577326/belle_epoque_qdibin.jpg")
# n50.photo.attach(io: photo_n50, filename: 'photo_n50.jpg', content_type: 'image/jpg')
# n50.save!
# n51 = Nominee.create({
#   name: "Nicolas Cantin, Thomas Desjonquères, Raphaël Mouterde, Olivier Goinard, Randy Thom",
#   real: "Le chant du loup"
# })
# n51.category_id = c11.id
# photo_n51 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1582575661/chant-loup_egzrld.jpg")
# n51.photo.attach(io: photo_n51, filename: 'photo_n51.jpg', content_type: 'image/jpg')
# n51.save!
# n52 = Nominee.create({
#   name: "Lucien Balibar, Aymeric Devoldère, Cyril Holtz, Niels Barletta",
#   real: "J'accuse"
# })
# n52.category_id = c11.id
# photo_n52 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581676225/j-accuse_i2k1pg.jpg")
# n52.photo.attach(io: photo_n52, filename: 'photo_n52.jpg', content_type: 'image/jpg')
# n52.save!
# n53 = Nominee.create({
#   name: "Arnaud Lavaleix, Jérôme Gonthier, Marco Casanova",
#   real: "Les Misérables"
# })
# n53.category_id = c11.id
# photo_n53 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1582576798/Les_Miserables_fdkeok.jpg")
# n53.photo.attach(io: photo_n53, filename: 'photo_n53.jpg', content_type: 'image/jpg')
# n53.save!
# n54 = Nominee.create({
#   name: "Julien Sicart, Valérie De Loof, Daniel Sobrino",
#   real: "Portrait de la jeune fille en feu"
# })
# n54.category_id = c11.id
# photo_n54 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581675620/celine-sciamma_k99nzj.jpg")
# n54.photo.attach(io: photo_n54, filename: 'photo_n54.jpg', content_type: 'image/jpg')
# n54.save!
# n55 = Nominee.create({
#   name: "Nicolas Bolduc",
#   real: "La Belle Époque"
# })
# n55.category_id = c8.id
# photo_n55 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1582577326/belle_epoque_qdibin.jpg")
# n55.photo.attach(io: photo_n55, filename: 'photo_n55.jpg', content_type: 'image/jpg')
# n55.save!
# n56 = Nominee.create({
#   name: "Pawel Edelman",
#   real: "J'accuse"
# })
# n56.category_id = c8.id
# photo_n56 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581676225/j-accuse_i2k1pg.jpg")
# n56.photo.attach(io: photo_n56, filename: 'photo_n56.jpg', content_type: 'image/jpg')
# n56.save!
# n57 = Nominee.create({
#   name: "Julien Poupard",
#   real: "Les Misérables"
# })
# n57.category_id = c8.id
# photo_n57 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1582576798/Les_Miserables_fdkeok.jpg")
# n57.photo.attach(io: photo_n57, filename: 'photo_n57.jpg', content_type: 'image/jpg')
# n57.save!
# n58 = Nominee.create({
#   name: "Claire Mathon",
#   real: "Portrait de la jeune fille en feu"
# })
# n58.category_id = c8.id
# photo_n58 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581675620/celine-sciamma_k99nzj.jpg")
# n58.photo.attach(io: photo_n58, filename: 'photo_n58.jpg', content_type: 'image/jpg')
# n58.save!
# n59 = Nominee.create({
#   name: "Irina Lubtchansky",
#   real: "Roubaix, une lumière"
# })
# n59.category_id = c8.id
# photo_n59 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581676225/roubaix_wz2k8j.jpg")
# n59.photo.attach(io: photo_n59, filename: 'photo_n59.jpg', content_type: 'image/jpg')
# n59.save!
# n60 = Nominee.create({
#   name: "Anny Danché, Florent Vassault",
#   real: "La belle époque"
# })
# n60.category_id = c10.id
# photo_n60 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1582577326/belle_epoque_qdibin.jpg")
# n60.photo.attach(io: photo_n60, filename: 'photo_n60.jpg', content_type: 'image/jpg')
# n60.save!
# n61 = Nominee.create({
#   name: "Laure Gardette",
#   real: "Grâce à Dieu"
# })
# n61.category_id = c10.id
# photo_n61 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1582577525/Grace_a_Dieu_lqoczk.jpg")
# n61.photo.attach(io: photo_n61, filename: 'photo_n61.jpg', content_type: 'image/jpg')
# n61.save!
# n62 = Nominee.create({
#   name: "Dorian Rigal-Ansous",
#   real: "Hors Normes"
# })
# n62.category_id = c10.id
# photo_n62 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581675620/toledano_scc1b5.jpg")
# n62.photo.attach(io: photo_n62, filename: 'photo_n62.jpg', content_type: 'image/jpg')
# n62.save!
# n63 = Nominee.create({
#   name: "Hervé De Luze",
#   real: "J'accuse"
# })
# n63.category_id = c10.id
# photo_n63 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581676225/j-accuse_i2k1pg.jpg")
# n63.photo.attach(io: photo_n63, filename: 'photo_n63.jpg', content_type: 'image/jpg')
# n63.save!
# n64 = Nominee.create({
#   name: "Flora Volpelière",
#   real: "Les Misérables"
# })
# n64.category_id = c10.id
# photo_n64 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1582576798/Les_Miserables_fdkeok.jpg")
# n64.photo.attach(io: photo_n64, filename: 'photo_n64.jpg', content_type: 'image/jpg')
# n64.save!
# n65 = Nominee.create({
#   name: "Emmanuelle Youchnovski",
#   real: "La belle époque"
# })
# n65.category_id = c4.id
# photo_n65 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1582577326/belle_epoque_qdibin.jpg")
# n65.photo.attach(io: photo_n65, filename: 'photo_n65.jpg', content_type: 'image/jpg')
# n65.save!
# n66 = Nominee.create({
#   name: "Thierry Delettre",
#   real: "Edmond"
# })
# n66.category_id = c4.id
# photo_n66 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581678008/edmond_lm4irn.jpg")
# n66.photo.attach(io: photo_n66, filename: 'photo_n66.jpg', content_type: 'image/jpg')
# n66.save!
# n67 = Nominee.create({
#   name: "Pascaline Chavanne",
#   real: "J'accuse"
# })
# n67.category_id = c4.id
# photo_n67 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581676225/j-accuse_i2k1pg.jpg")
# n67.photo.attach(io: photo_n67, filename: 'photo_n67.jpg', content_type: 'image/jpg')
# n67.save!
# n68 = Nominee.create({
#   name: "Alexandra Charles",
#   real: "Jeanne"
# })
# n68.category_id = c4.id
# photo_n68 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581678271/jeanne_tzzxe9.jpg")
# n68.photo.attach(io: photo_n68, filename: 'photo_n68.jpg', content_type: 'image/jpg')
# n68.save!
# n69 = Nominee.create({
#   name: "Dorothée Guiraud",
#   real: "Portrait de la jeune fille en feu"
# })
# n69.category_id = c4.id
# photo_n69 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581675620/celine-sciamma_k99nzj.jpg")
# n69.photo.attach(io: photo_n69, filename: 'photo_n69.jpg', content_type: 'image/jpg')
# n69.save!
# n70 = Nominee.create({
#   name: "Stéphane Rozenbaum",
#   real: "La belle époque"
# })
# n70.category_id = c5.id
# photo_n70 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1582577326/belle_epoque_qdibin.jpg")
# n70.photo.attach(io: photo_n70, filename: 'photo_n70.jpg', content_type: 'image/jpg')
# n70.save!
# n71 = Nominee.create({
#   name: "Benoit Barouh",
#   real: "Le chant du loup"
# })
# n71.category_id = c5.id
# photo_n71 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1582575661/chant-loup_egzrld.jpg")
# n71.photo.attach(io: photo_n71, filename: 'photo_n71.jpg', content_type: 'image/jpg')
# n71.save!
# n72 = Nominee.create({
#   name: "Franck Schwarz",
#   real: "Edmond"
# })
# n72.category_id = c5.id
# photo_n72 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581678008/edmond_lm4irn.jpg")
# n72.photo.attach(io: photo_n72, filename: 'photo_n72.jpg', content_type: 'image/jpg')
# n72.save!
# n73 = Nominee.create({
#   name: "Jean Rabasse",
#   real: "J'accuse"
# })
# n73.category_id = c5.id
# photo_n73 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581676225/j-accuse_i2k1pg.jpg")
# n73.photo.attach(io: photo_n73, filename: 'photo_n73.jpg', content_type: 'image/jpg')
# n73.save!
# n74 = Nominee.create({
#   name: "Thomas Grézaud",
#   real: "Portrait de la jeune fille en feu"
# })
# n74.category_id = c5.id
# photo_n74 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581675620/celine-sciamma_k99nzj.jpg")
# n74.photo.attach(io: photo_n74, filename: 'photo_n74.jpg', content_type: 'image/jpg')
# n74.save!
# n75 = Nominee.create({
#   name: "Nicolas Bedos",
#   real: "La belle époque"
# })
# n75.category_id = c19.id
# photo_n75 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1582577326/belle_epoque_qdibin.jpg")
# n75.photo.attach(io: photo_n75, filename: 'photo_n75.jpg', content_type: 'image/jpg')
# n75.save!
# n76 = Nominee.create({
#   name: "François Ozon",
#   real: "Grâce à Dieu"
# })
# n76.category_id = c19.id
# photo_n76 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1582577525/Grace_a_Dieu_lqoczk.jpg")
# n76.photo.attach(io: photo_n76, filename: 'photo_n76.jpg', content_type: 'image/jpg')
# n76.save!
# n77 = Nominee.create({
#   name: "Eric Toledano, Olivier Nakache",
#   real: "Hors Normes"
# })
# n77.category_id = c19.id
# photo_n77 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581675620/toledano_scc1b5.jpg")
# n77.photo.attach(io: photo_n77, filename: 'photo_n77.jpg', content_type: 'image/jpg')
# n77.save!
# n78 = Nominee.create({
#   name: "Roman Polanski",
#   real: "J'accuse"
# })
# n78.category_id = c19.id
# photo_n78 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581676225/j-accuse_i2k1pg.jpg")
# n78.photo.attach(io: photo_n78, filename: 'photo_n78.jpg', content_type: 'image/jpg')
# n78.save!
# n79 = Nominee.create({
#   name: "Ladj Ly",
#   real: "Les misérables"
# })
# n79.category_id = c19.id
# photo_n79 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1582576798/Les_Miserables_fdkeok.jpg")
# n79.photo.attach(io: photo_n79, filename: 'photo_n79.jpg', content_type: 'image/jpg')
# n79.save!
# n80 = Nominee.create({
#   name: "Céline Sciamma",
#   real: "Portrait de la jeune fille en feu"
# })
# n80.category_id = c19.id
# photo_n80 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581675620/celine-sciamma_k99nzj.jpg")
# n80.photo.attach(io: photo_n80, filename: 'photo_n80.jpg', content_type: 'image/jpg')
# n80.save!
# n81 = Nominee.create({
#   name: "Arnaud Desplechin",
#   real: "Roubaix, une lumière"
# })
# n81.category_id = c19.id
# photo_n81 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581676225/roubaix_wz2k8j.jpg")
# n81.photo.attach(io: photo_n81, filename: 'photo_n81.jpg', content_type: 'image/jpg')
# n81.save!
# n82 = Nominee.create({
#   name: "Beautiful Loser",
#   real: "réalisé par Maxime Roy, produit par Alice Bloch"
# })
# n82.category_id = c12.id
# photo_n82 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581679449/beautiful-loser_s1zhzo.jpg")
# n82.photo.attach(io: photo_n82, filename: 'photo_n82.jpg', content_type: 'image/jpg')
# n82.save!
# n83 = Nominee.create({
#   name: "Le chant d'Ahmed",
#   real: "réalisé par Foued Mansour, produit par Rafael Andrea Soatto"
# })
# n83.category_id = c12.id
# photo_n83 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581679449/chant-ahmed_frtdfs.jpg")
# n83.photo.attach(io: photo_n83, filename: 'photo_n83.jpg', content_type: 'image/jpg')
# n83.save!
# n84 = Nominee.create({
#   name: "Chien bleu",
#   real: "réalisé par Fanny Liatard, Jérémy Trouilh, produit par Nérimen Hadrami"
# })
# n84.category_id = c12.id
# photo_n84 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581679449/chien-bleu_dkiwff.jpg")
# n84.photo.attach(io: photo_n84, filename: 'photo_n84.jpg', content_type: 'image/jpg')
# n84.save!
# n85 = Nominee.create({
#   name: "Nefta Football Club",
#   real: "réalisé par Yves Piat, produit par Justin Pechberty, Damien Megherbi"
# })
# n85.category_id = c12.id
# photo_n85 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581679449/nefta-football-club_rncbpb.jpg")
# n85.photo.attach(io: photo_n85, filename: 'photo_n85.jpg', content_type: 'image/jpg')
# n85.save!
# n86 = Nominee.create({
#   name: "Pile Poil",
#   real: "réalisé par Lauriane Escaffre, Yvonnick Muller, produit par Emmanuel Wahl, Adrien Bretet"
# })
# n86.category_id = c12.id
# photo_n86 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581679449/pile-poil_rxomnp.jpg")
# n86.photo.attach(io: photo_n86, filename: 'photo_n86.jpg', content_type: 'image/jpg')
# n86.save!
# n87 = Nominee.create({
#   name: "Ce magnifique gâteau !",
#   real: "réalisé par Emma De Swaef, Marc James Roels, produit par Jean-François Le Corre, Mathieu Courtois"
# })
# n87.category_id = c6.id
# photo_n87 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581680155/magnifique-ga%CC%82teau_qzmgx2.jpg")
# n87.photo.attach(io: photo_n87, filename: 'photo_n87.jpg', content_type: 'image/jpg')
# n87.save!
# n88 = Nominee.create({
#   name: "Je sors acheter des cigarettes",
#   real: "réalisé par Osman Cerfon, produit par Emmanuel-Alain Raynal, Pierre Baussaron"
# })
# n88.category_id = c6.id
# photo_n88 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581680156/acheter-cigarettes_w02bsl.jpg")
# n88.photo.attach(io: photo_n88, filename: 'photo_n88.jpg', content_type: 'image/jpg')
# n88.save!
# n89 = Nominee.create({
#   name: "Make it soul",
#   real: "réalisé par Jean-Charles Mbotti Malolo, produit par Amaury Ovise"
# })
# n89.category_id = c6.id
# photo_n89 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581680156/make-it-soul_usq9ml.jpg")
# n89.photo.attach(io: photo_n89, filename: 'photo_n89.jpg', content_type: 'image/jpg')
# n89.save!
# n90 = Nominee.create({
#   name: "La nuit des sacs plastique",
#   real: "réalisé par Gabriel Harel, produit par Amaury Ovise"
# })
# n90.category_id = c6.id
# photo_n90 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581680156/nuit-sacs-plastiques_kh5dmc.jpg")
# n90.photo.attach(io: photo_n90, filename: 'photo_n90.jpg', content_type: 'image/jpg')
# n90.save!
# n91 = Nominee.create({
#   name: "La fameuse invasion des ours en Sicile",
#   real: "réalisé par Lorenzo Mattoti, produit par Valérie Schermann, Christophe Jankovic"
# })
# n91.category_id = c7.id
# photo_n91 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1582577998/La_Fameuse_Invasion_des_Ours_en_Sicile_eutnwk.jpg")
# n91.photo.attach(io: photo_n91, filename: 'photo_n91.jpg', content_type: 'image/jpg')
# n91.save!
# n92 = Nominee.create({
#   name: "Les hirondelles de Kaboul",
#   real: "réalisé par Zabou Breitman, Éléa Gobbé-Mévellec, produit par Reginald De Guillebon"
# })
# n92.category_id = c7.id
# photo_n92 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1582578066/Les_Hirondelles_de_Kaboul_q6h8ix.jpg")
# n92.photo.attach(io: photo_n92, filename: 'photo_n92.jpg', content_type: 'image/jpg')
# n92.save!
# n93 = Nominee.create({
#   name: "J'ai perdu mon corps",
#   real: "réalisé par Jérémy Clapin, produit par Marc Du Pontavice"
# })
# n93.category_id = c7.id
# photo_n93 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581676224/perdu-mon-corps_cdhlro.jpg")
# n93.photo.attach(io: photo_n93, filename: 'photo_n93.jpg', content_type: 'image/jpg')
# n93.save!
# n94 = Nominee.create({
#   name: "68, mon père et les clous",
#   real: "réalisé par Samuel Bigiaoui, produit par Rebecca Houzel, Camille Laemlé"
# })
# n94.category_id = c15.id
# photo_n94 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581680837/68-mon-pe%CC%80re_ljgmu9.jpg")
# n94.photo.attach(io: photo_n94, filename: 'photo_n94.jpg', content_type: 'image/jpg')
# n94.save!
# n95 = Nominee.create({
#   name: "La cordillère des songes",
#   real: "réalisé par Patricio Guzmàn, produit par Renate Sachse"
# })
# n95.category_id = c15.id
# photo_n95 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581680838/cordille%CC%80re-songes_k9g1x3.jpg")
# n95.photo.attach(io: photo_n95, filename: 'photo_n95.jpg', content_type: 'image/jpg')
# n95.save!
# n96 = Nominee.create({
#   name: "Lourdes",
#   real: "réalisé par Thierry Demaizière, Alban Teurlai, produit par Stéphanie Schorter, Thierry Demaizière, Alban Teurlai, Stéphane Célérier, Valérie Garcia"
# })
# n96.category_id = c15.id
# photo_n96 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581680837/lourdes_dvhmp1.jpg")
# n96.photo.attach(io: photo_n96, filename: 'photo_n96.jpg', content_type: 'image/jpg')
# n96.save!
# n97 = Nominee.create({
#   name: "M",
#   real: "réalisé par Yolande Zauberman, produit par Charles Gillibert, Yolande Zauberman, Fabrice Bigio"
# })
# n97.category_id = c15.id
# photo_n97 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581680837/M_nky5vm.jpg")
# n97.photo.attach(io: photo_n97, filename: 'photo_n97.jpg', content_type: 'image/jpg')
# n97.save!
# n98 = Nominee.create({
#   name: "Wonder Boy Olivier Rousteing, Né sous X",
#   real: "réalisé par Anissa Bonnefont, produit par Anissa Bonnefont"
# })
# n98.category_id = c15.id
# photo_n98 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581680837/wonder-boy_aiigp8.jpg")
# n98.photo.attach(io: photo_n98, filename: 'photo_n98.jpg', content_type: 'image/jpg')
# n98.save!
# n99 = Nominee.create({
#   name: "Atlantique",
#   real: "réalisé par Mati Diop, produit par Judith Lou Lévy, Eve Robin"
# })
# n99.category_id = c14.id
# photo_n99 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1582577927/Atlantique_g0lwuo.jpg")
# n99.photo.attach(io: photo_n99, filename: 'photo_n99.jpg', content_type: 'image/jpg')
# n99.save!
# n100 = Nominee.create({
#   name: "Au nom de la terre",
#   real: "réalisé par Édouard Bergeron, produit par Christophe Rossignon, Philip Boëffard"
# })
# n100.category_id = c14.id
# photo_n100 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581681376/au-nom-de-la-terre_jjxpc4.jpg")
# n100.photo.attach(io: photo_n100, filename: 'photo_n100.jpg', content_type: 'image/jpg')
# n100.save!
# n101 = Nominee.create({
#   name: "Le chant du loup",
#   real: "réalisé par Antonin Baudry, produit par Jérôme Seydoux, Alain Attal"
# })
# n101.category_id = c14.id
# photo_n101 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1582575661/chant-loup_egzrld.jpg")
# n101.photo.attach(io: photo_n101, filename: 'photo_n101.jpg', content_type: 'image/jpg')
# n101.save!
# n102 = Nominee.create({
#   name: "Les misérables",
#   real: "réalisé par Ladj Ly, produit par Toufik Ayadi, Christophe Barral"
# })
# n102.category_id = c14.id
# photo_n102 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1582576798/Les_Miserables_fdkeok.jpg")
# n102.photo.attach(io: photo_n102, filename: 'photo_n102.jpg', content_type: 'image/jpg')
# n102.save!
# n103 = Nominee.create({
#   name: "Papicha",
#   real: "réalisé par Mounia Meddour, produit par Patrick André, Xavier Gens, Grégoire Gensollen"
# })
# n103.category_id = c14.id
# photo_n103 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581681376/papicha_wpf6xl.jpg")
# n103.photo.attach(io: photo_n103, filename: 'photo_n103.jpg', content_type: 'image/jpg')
# n103.save!
# n104 = Nominee.create({
#   name: "Douleur et gloire",
#   real: "réalisé par Pedro Almodovar, distribution France Pathé"
# })
# n104.category_id = c18.id
# photo_n104 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581681952/douleur-gloire_nonsfn.jpg")
# n104.photo.attach(io: photo_n104, filename: 'photo_n104.jpg', content_type: 'image/jpg')
# n104.save!
# n105 = Nominee.create({
#   name: "Le jeune Ahmed",
#   real: "réalisé par Jean-Pierre Dardenne, Luc Dardenne, coproduction France Archipel 35 (Denis Freyd)"
# })
# n105.category_id = c18.id
# photo_n105 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581681952/jeune-ahmed_pb1a7k.jpg")
# n105.photo.attach(io: photo_n105, filename: 'photo_n105.jpg', content_type: 'image/jpg')
# n105.save!
# n106 = Nominee.create({
#   name: "Joker",
#   real: "réalisé par Todd Phillips, distribution France Warner Bros"
# })
# n106.category_id = c18.id
# photo_n106 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581681951/joker_plzcqx.jpg")
# n106.photo.attach(io: photo_n106, filename: 'photo_n106.jpg', content_type: 'image/jpg')
# n106.save!
# n107 = Nominee.create({
#   name: "Lola vers la mer",
#   real: "réalisé par Laurent Micheli, coproduction France 10:15! Productions (Sébastien Haguenauer)"
# })
# n107.category_id = c18.id
# photo_n107 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581681952/lola-mer_q0mpyx.jpg")
# n107.photo.attach(io: photo_n107, filename: 'photo_n107.jpg', content_type: 'image/jpg')
# n107.save!
# n108 = Nominee.create({
#   name: "Once upon a time... in Hollywood",
#   real: "réalisé par Quentin Tarantino, distribution France Sony Pictures Releasing France"
# })
# n108.category_id = c18.id
# photo_n108 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1582577054/a3378998b6e42c1f2712229459b1ac78b4a24776_lldiuy.jpg")
# n108.photo.attach(io: photo_n108, filename: 'photo_n108.jpg', content_type: 'image/jpg')
# n108.save!
# n109 = Nominee.create({
#   name: "Parasite",
#   real: "réalisé par Bong Joon-Ho, distribution France Les Bookmakers - The Jokers"
# })
# n109.category_id = c18.id
# photo_n109 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1582577144/parasite_drrgqs.jpg")
# n109.photo.attach(io: photo_n109, filename: 'photo_n109.jpg', content_type: 'image/jpg')
# n109.save!
# n110 = Nominee.create({
#   name: "Le traître",
#   real: "réalisé par Marco Bellochio, coproduction France AD Vitam Production (Alexandra Henochsberg)"
# })
# n110.category_id = c18.id
# photo_n110 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1582577207/Le_Traitre_raky3s.jpg")
# n110.photo.attach(io: photo_n110, filename: 'photo_n110.jpg', content_type: 'image/jpg')
# n110.save!
# n111 = Nominee.create({
#   name: "La belle époque",
#   real: "produit par Francois Kraus, Denis Pineau-Valencienne, réalisé par Nicolas Bedos"
# })
# n111.category_id = c22.id
# photo_n111 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1582577326/belle_epoque_qdibin.jpg")
# n111.photo.attach(io: photo_n111, filename: 'photo_n111.jpg', content_type: 'image/jpg')
# n111.save!
# n112 = Nominee.create({
#   name: "Grâce à Dieu",
#   real: "produit par Eric Altmayer, Nicolas Altmayer, réalisé par François Ozon"
# })
# n112.category_id = c22.id
# photo_n112 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1582577525/Grace_a_Dieu_lqoczk.jpg")
# n112.photo.attach(io: photo_n112, filename: 'photo_n112.jpg', content_type: 'image/jpg')
# n112.save!
# n113 = Nominee.create({
#   name: "Hors Normes",
#   real: "produit par Nicolas Duval Adassovsky, réalisé par Éric Toledano, Olivier Nakache"
# })
# n113.category_id = c22.id
# photo_n113 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581675620/toledano_scc1b5.jpg")
# n113.photo.attach(io: photo_n113, filename: 'photo_n113.jpg', content_type: 'image/jpg')
# n113.save!
# n114 = Nominee.create({
#   name: "J'accuse",
#   real: "produit par Alain Goldman, réalisé par Roman Polanski"
# })
# n114.category_id = c22.id
# photo_n114 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581676225/j-accuse_i2k1pg.jpg")
# n114.photo.attach(io: photo_n114, filename: 'photo_n114.jpg', content_type: 'image/jpg')
# n114.save!
# n115 = Nominee.create({
#   name: "Les misérables",
#   real: "produit par Toufik Ayadi, Christophe Barral, réalisé par Ladj Ly"
# })
# n115.category_id = c22.id
# photo_n115 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1582576798/Les_Miserables_fdkeok.jpg")
# n115.photo.attach(io: photo_n115, filename: 'photo_n115.jpg', content_type: 'image/jpg')
# n115.save!
# n116 = Nominee.create({
#   name: "Portrait de la jeune fille en feu",
#   real: "produit par Bénédicte Couvreur, réalisé par Céline Sciamma"
# })
# n116.category_id = c22.id
# photo_n116 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581675620/celine-sciamma_k99nzj.jpg")
# n116.photo.attach(io: photo_n116, filename: 'photo_n116.jpg', content_type: 'image/jpg')
# n116.save!
# n117 = Nominee.create({
#   name: "Roubaix, une lumière",
#   real: "produit par Pascal Caucheteux, Grégoire Sorlat, réalisé par Arnaud Desplechin"
# })
# n117.category_id = c22.id
# photo_n117 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581676225/roubaix_wz2k8j.jpg")
# n117.photo.attach(io: photo_n117, filename: 'photo_n117.jpg', content_type: 'image/jpg')
# n117.save!
# n118 = Nominee.create({
#   name: "Qu'est-ce qu'on a encore fait au bon dieu ?",
#   real: "réalisé par Philippe De Chauveron, produit par Romain Rojtman"
# })
# n118.category_id = c23.id
# photo_n118 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1582577652/Qu_est_ce_qu_on_a_encore_fait_au_Bon_Dieu_xrswk3.jpg")
# n118.photo.attach(io: photo_n118, filename: 'photo_n118.jpg', content_type: 'image/jpg')
# n118.save!
# n119 = Nominee.create({
#   name: "Nous finirons ensemble",
#   real: "réalisé par Guillaume Canet, produit par Alain Attal"
# })
# n119.category_id = c23.id
# photo_n119 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581686921/finirons-ensemble_ejkgcz.jpg")
# n119.photo.attach(io: photo_n119, filename: 'photo_n119.jpg', content_type: 'image/jpg')
# n119.save!
# n120 = Nominee.create({
#   name: "Hors Normes",
#   real: "réalisé par Eric Toledano, Olivier Nakache, produit par Nicolas Duval Adassovsky"
# })
# n120.category_id = c23.id
# photo_n120 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581675620/toledano_scc1b5.jpg")
# n120.photo.attach(io: photo_n120, filename: 'photo_n120.jpg', content_type: 'image/jpg')
# n120.save!
# n121 = Nominee.create({
#   name: "Au nom de la terre",
#   real: "réalisé par Édouard Bergeon, produit par Christophe Rossignon, Philip Boëffard"
# })
# n121.category_id = c23.id
# photo_n121 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1581681376/au-nom-de-la-terre_jjxpc4.jpg")
# n121.photo.attach(io: photo_n121, filename: 'photo_n121.jpg', content_type: 'image/jpg')
# n121.save!
# n122 = Nominee.create({
#   name: "Les misérables",
#   real: "réalisé par Ladj Ly, produit par Toufik Ayadi, Christophe Barral"
# })
# n122.category_id = c23.id
# photo_n122 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1582576798/Les_Miserables_fdkeok.jpg")
# n122.photo.attach(io: photo_n122, filename: 'photo_n122.jpg', content_type: 'image/jpg')
# n122.save!


