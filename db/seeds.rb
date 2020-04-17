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
  points: 3
})
c2.save!
puts "Creating Marques Anthony"
c3 = Category.create!({
  title: "Parmi ces marques, laquelle n’a pas été un client d’Anthony ? ",
  points: 5
})
c3.save!
c4 = Category.create!({
  title: "Quel est le surnom qu'il donne à son Boys Club avec Kévin et François ? ",
  points: 3
})
c4.save!
c5 = Category.create!({
  title: "Quel était le nom de la professeur de mathématiques d’Anthony qui avait de la barbe, et à qui Anthony a offert un rasoir à la fin de l’année scolaire ? ",
  points: 7
})
c5.save!
c6 = Category.create!({
  title: "Dans quelle région d’Italie, la famille d’Anthony a-t-elle un pied-à-terre ?",
  points: 5
})
c6.save!
c7 = Category.create!({
  title: "Parmi les surnoms suivants, lequel n’a-t-il pas donné à sa mère ?",
  points: 7
})
c7.save!
c8 = Category.create!({
  title: "Dans quelle commune Anthony s’est-il déféqué sur la main ?",
  points: 5
})
c8.save!
c9 = Category.create!({
  title: "Sur quelle chanson, Anthony est-il passé dans l’émission « Les 500 choristes » en 2005 en tant que pointe du coeur des choristes ?",
  points: 7
})
c9.save!
c10 = Category.create!({
  title: "Quel est l’accessoire dont Anthony s’est épris de passion ces dernières années ?",
  points: 3
})
c10.save!
c11 = Category.create!({
  title: "Quels sont les noms des chiens qu’Anthony a eu dans sa vie ?",
  points: 7
})
c11.save!
c12 = Category.create!({
  title: "Quel est le nom de son entreprise qu’il a créé en 2019 ?",
  points: 5
})
c12.save!
c13 = Category.create!({
  title: "Dans quel pays n'a-t-il pas élu résidence ?",
  points: 7
})
c13.save!
c14 = Category.create!({
  title: "Laquelle des activités suivantes n’a pas été une passion dans sa vie ?",
  points: 5
})
c14.save!
c15 = Category.create!({
  title: "En quelle année a-t-il fait son coming out ?",
  points: 7
})
c15.save!
c16 = Category.create!({
  title: "Sélectionnez le nom d’une des camarades de classe d’Anthony quand il était à l’école",
  points: 7
})
c16.save!
c17 = Category.create!({
  title: "Lorsqu’il était en école de commerce, Anthony fut un membre éminent du Bureau des Arts, quel était son nom ?",
  points: 5
})
c17.save!
c18 = Category.create!({
  title: "Quelle extravagance s'est-il permis de faire l'été dernier ?",
  points: 3
})
c18.save!
c19 = Category.create!({
  title: "Avec quel représentant de corps de métier, et sur son lieu de travail, Anthony a-t-il déjà eu une relation charnelle ?",
  points: 5
})
c19.save!
c20 = Category.create!({
  title: "Parmi les nombreux talents d'Antho, citez celui qu'il ne sait pas faire ?",
  points: 5
})
c20.save!
puts "Categories created !"
puts "Creating the nominees..."
n1 = Nominee.create({
  name: "Saint-Avold",
  real: "Moselle",
  winner: true
})
n1.category_id = c1.id
photo_n1 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1586773300/saint-avold_tojnbb.jpg")
n1.photo.attach(io: photo_n1, filename: 'photo_n1.jpg', content_type: 'image/jpg')
n1.save!
n2 = Nominee.create({
  name: "Paris",
  real: "Île-De-France",
  winner: false
})
n2.category_id = c1.id
photo_n2 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1586775049/paris-2017-home_xpfpkg.jpg")
n2.photo.attach(io: photo_n2, filename: 'photo_n2.jpg', content_type: 'image/jpg')
n2.save!
n3 = Nominee.create({
  name: "Creutzwald",
  real: "Moselle",
  winner: false
})
n3.category_id = c1.id
photo_n3 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1586775129/creutzwald_zglwpp.jpg")
n3.photo.attach(io: photo_n3, filename: 'photo_n3.jpg', content_type: 'image/jpg')
n3.save!
n4 = Nominee.create({
  name: "Remiremont",
  real: "Vosges",
  winner: false
})
n4.category_id = c1.id
photo_n4 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1586775129/remiremont_dpytzn.jpg")
n4.photo.attach(io: photo_n4, filename: 'photo_n4.jpg', content_type: 'image/jpg')
n4.save!
n5 = Nominee.create({
  name: "L'amour...",
  real: "Ca fait souffrir",
  winner: false
})
n5.category_id = c2.id
photo_n5 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587048796/amour_souffrir_hfyuqk.jpg")
n5.photo.attach(io: photo_n5, filename: 'photo_n5.jpg', content_type: 'image/jpg')
n5.save!
n6 = Nominee.create({
  name: "L'amour...",
  real: "Ça fait mal",
  winner: true
})
n6.category_id = c2.id
photo_n6 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587048796/amour_mal_p7feje.jpg")
n6.photo.attach(io: photo_n6, filename: 'photo_n6.jpg', content_type: 'image/jpg')
n6.save!
n7 = Nominee.create({
  name: "L'amour...",
  real: "C'est méchant",
  winner: false
})
n7.category_id = c2.id
photo_n7 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587048796/amour_me%CC%81chant_vdtdir.jpg")
n7.photo.attach(io: photo_n7, filename: 'photo_n7.jpg', content_type: 'image/jpg')
n7.save!
n8 = Nominee.create({
  name: "L'amour...",
  real: "C'est d'la merde...",
  winner: false

})
n8.category_id = c2.id
photo_n8 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587110499/amour-merde_zfo6bh.jpg")
n8.photo.attach(io: photo_n8, filename: 'photo_n8.jpg', content_type: 'image/jpg')
n8.save!
n9 = Nominee.create({
  name: "Netflix",
  real: "Toudouuuuuuum",
  winner: false
})
n9.category_id = c3.id
photo_n9 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1586851745/13502130_10153696123838870_522765110773053650_n-796x796-2_svnvzb.png")
n9.photo.attach(io: photo_n9, filename: 'photo_n9.png', content_type: 'image/png')
n9.save!
n10 = Nominee.create({
  name: "Cartel",
  real: "Pop culture agency",
  winner: false
})
n10.category_id = c3.id
photo_n10 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1586853065/des-nouvelles-de-cartel-1249x545_xswnde.png")
n10.photo.attach(io: photo_n10, filename: 'photo_n10.png', content_type: 'image/png')
n10.save!
n11 = Nominee.create({
  name: "We Love Art",
  real: "Les parents de We Love Green",
  winner: false
})
n11.category_id = c3.id
photo_n11 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1586853670/XXEtjHiJ_uucndn.png")
n11.photo.attach(io: photo_n11, filename: 'photo_n11.png', content_type: 'image/png')
n11.save!
n12 = Nominee.create({
  name: "JO 2024",
  real: "À Paris",
  winner: true
})
n12.category_id = c3.id
photo_n12 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1586851890/JO-paris_qfy24g.png")
n12.photo.attach(io: photo_n12, filename: 'photo_n12.jpg', content_type: 'image/png')
n12.save!
n13 = Nominee.create({
  name: "Le Crew",
  real: "Queer",
  winner: false
})
n13.category_id = c4.id
photo_n13 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587049116/crew_queer_rhvj7c.jpg")
n13.photo.attach(io: photo_n13, filename: 'photo_n13.jpg', content_type: 'image/jpg')
n13.save!
n14 = Nominee.create({
  name: "Le Crew",
  real: "Gay",
  winner: true
})
n14.category_id = c4.id
photo_n14 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587049115/crew_gay_yynw08.jpg")
n14.photo.attach(io: photo_n14, filename: 'photo_n14.jpg', content_type: 'image/jpg')
n14.save!
n15 = Nominee.create({
  name: "The Gay's",
  real: "Club",
  winner: false
})
n15.category_id = c4.id
photo_n15 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587049116/gays_club_fiepgh.jpg")
n15.photo.attach(io: photo_n15, filename: 'photo_n15.jpg', content_type: 'image/jpg')
n15.save!
n16 = Nominee.create({
  name: "La bande",
  real: "à Basile",
  winner: false
})
n16.category_id = c4.id
photo_n16 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587049116/bande_basile_tgevx7.jpg")
n16.photo.attach(io: photo_n16, filename: 'photo_n16.jpg', content_type: 'image/jpg')
n16.save!
n17 = Nominee.create({
  name: "Madame",
  real: "Grand",
  winner: false
})
n17.category_id = c5.id
photo_n17 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587049475/Madame_grand_ycigbg.jpg")
n17.photo.attach(io: photo_n17, filename: 'photo_n17.jpg', content_type: 'image/jpg')
n17.save!
n18 = Nominee.create({
  name: "Madame",
  real: "Petit",
  winner: true
})
n18.category_id = c5.id
photo_n18 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587049475/Madame_petit_qbnbln.jpg")
n18.photo.attach(io: photo_n18, filename: 'photo_n18.jpg', content_type: 'image/jpg')
n18.save!
n19 = Nominee.create({
  name: "Madame",
  real: "Large",
  winner: false
})
n19.category_id = c5.id
photo_n19 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587049475/Madame_large_lfuxcd.jpg")
n19.photo.attach(io: photo_n19, filename: 'photo_n19.jpg', content_type: 'image/jpg')
n19.save!
n20 = Nominee.create({
  name: "Madame",
  real: "Michelin",
  winner: false
})
n20.category_id = c5.id
photo_n20 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587049475/Madame_michelin_rlxzs9.jpg")
n20.photo.attach(io: photo_n20, filename: 'photo_n20.jpg', content_type: 'image/jpg')
n20.save!
n21 = Nominee.create({
  name: "Lombardie",
  real: "Nord de l'Italie",
  winner: false
})
n21.category_id = c6.id
photo_n21 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587049761/lombardie_lnbbqd.jpg")
n21.photo.attach(io: photo_n21, filename: 'photo_n21.jpg', content_type: 'image/jpg')
n21.save!
n22 = Nominee.create({
  name: "Sicile",
  real: "Ouest de l'Italie",
  winner: false
})
n22.category_id = c6.id
photo_n22 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587049761/sicile_ofbvsq.jpg")
n22.photo.attach(io: photo_n22, filename: 'photo_n22.jpg', content_type: 'image/jpg')
n22.save!
n23 = Nominee.create({
  name: "Pouilles",
  real: "Est de l'Italie",
  winner: false
})
n23.category_id = c6.id
photo_n23 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587049761/pouilles_h7tybn.jpg")
n23.photo.attach(io: photo_n23, filename: 'photo_n23.jpg', content_type: 'image/jpg')
n23.save!
n24 = Nominee.create({
  name: "Calabre",
  real: "Sud de l'Italie",
  winner: true
})
n24.category_id = c6.id
photo_n24 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587049761/calabre_lreb1d.jpg")
n24.photo.attach(io: photo_n24, filename: 'photo_n24.jpg', content_type: 'image/jpg')
n24.save!
n25 = Nominee.create({
  name: "Panta...",
  real: "...gruel",
  winner: false
})
n25.category_id = c7.id
photo_n25 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587050065/pantagruel_bfrztd.jpg")
n25.photo.attach(io: photo_n25, filename: 'photo_n25.jpg', content_type: 'image/jpg')
n25.save!
n26 = Nominee.create({
  name: "Mummy",
  real: "Pig",
  winner: true
})
n26.category_id = c7.id
photo_n26 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587050065/mummy_pig_vf4uzj.jpg")
n26.photo.attach(io: photo_n26, filename: 'photo_n26.jpg', content_type: 'image/jpg')
n26.save!
n27 = Nominee.create({
  name: "Big",
  real: "Mamma",
  winner: false
})
n27.category_id = c7.id
photo_n27 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587050065/big-momma_xgjcef.jpg")
n27.photo.attach(io: photo_n27, filename: 'photo_n27.jpg', content_type: 'image/jpg')
n27.save!
n28 = Nominee.create({
  name: "Ballon de",
  real: "baudruche",
  winner: false
})
n28.category_id = c7.id
photo_n28 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587050065/ballon-baudruche_azyybw.jpg")
n28.photo.attach(io: photo_n28, filename: 'photo_n28.jpg', content_type: 'image/jpg')
n28.save!
n29 = Nominee.create({
  name: "Mimizan",
  real: "Dans le pays de Born",
  winner: true
})
n29.category_id = c8.id
photo_n29 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587050431/mimizan_c84gon.jpg")
n29.photo.attach(io: photo_n29, filename: 'photo_n29.jpg', content_type: 'image/jpg')
n29.save!
n30 = Nominee.create({
  name: "Aureilhan",
  real: "Toujours dans le pays de Born",
  winner: false
})
n30.category_id = c8.id
photo_n30 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587050431/aureilhan_ghjrr4.jpg")
n30.photo.attach(io: photo_n30, filename: 'photo_n30.jpg', content_type: 'image/jpg')
n30.save!
n31 = Nominee.create({
  name: "Bayonne",
  real: "Aux fêteuh de Bayonne",
  winner: false
})
n31.category_id = c8.id
photo_n31 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587050431/bayonne_whqljb.jpg")
n31.photo.attach(io: photo_n31, filename: 'photo_n31.jpg', content_type: 'image/jpg')
n31.save!
n32 = Nominee.create({
  name: "Biscarosse",
  real: "Aux fêteuh de Biscarosse",
  winner: false
})
n32.category_id = c8.id
photo_n32 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587050431/Biscarosse_zk3hsq.jpg")
n32.photo.attach(io: photo_n32, filename: 'photo_n32.jpg', content_type: 'image/jpg')
n32.save!
n33 = Nominee.create({
  name: "Je ne vous oublie pas",
  real: "Céline Dion",
  winner: false
})
n33.category_id = c9.id
photo_n33 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587050694/ce%CC%81line_dion_xaqjpo.jpg")
n33.photo.attach(io: photo_n33, filename: 'photo_n33.jpg', content_type: 'image/jpg')
n33.save!
n34 = Nominee.create({
  name: "Belle",
  real: "Garou, Patrick Fiori, et Daniel Lavoie",
  winner: false
})
n34.category_id = c9.id
photo_n34 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587050694/lavoie_garou_fiori_eki8ly.jpg")
n34.photo.attach(io: photo_n34, filename: 'photo_n34.jpg', content_type: 'image/jpg')
n34.save!
n35 = Nominee.create({
  name: "L'envie",
  real: "Céline Dion et Johnny Hallyday",
  winner: false
})
n35.category_id = c9.id
photo_n35 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587050694/ce%CC%81line-dion_johnny_ijogos.jpg")
n35.photo.attach(io: photo_n35, filename: 'photo_n35.jpg', content_type: 'image/jpg')
n35.save!
n36 = Nominee.create({
  name: "D'aventure en aventure",
  real: "Serge Lama & Isabelle Boulay",
  winner: true
})
n36.category_id = c9.id
photo_n36 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587050694/lama_boulay_gbpljo.jpg")
n36.photo.attach(io: photo_n36, filename: 'photo_n36.jpg', content_type: 'image/jpg')
n36.save!
n37 = Nominee.create({
  name: "Le bracelet",
  real: "de force",
  winner: false
})
n37.category_id = c10.id
photo_n37 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587051034/Bracelet-force_waz4ws.jpg")
n37.photo.attach(io: photo_n37, filename: 'photo_n37.jpg', content_type: 'image/jpg')
n37.save!
n38 = Nominee.create({
  name: "La casquette",
  real: "de daddy",
  winner: true
})
n38.category_id = c10.id
photo_n38 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587051034/Casquette_yy77ew.jpg")
n38.photo.attach(io: photo_n38, filename: 'photo_n38.jpg', content_type: 'image/jpg')
n38.save!
n39 = Nominee.create({
  name: "Le bandana",
  real: "de pirate",
  winner: false
})
n39.category_id = c10.id
photo_n39 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587051033/Bandana_fnp3s6.jpg")
n39.photo.attach(io: photo_n39, filename: 'photo_n39.jpg', content_type: 'image/jpg')
n39.save!
n40 = Nominee.create({
  name: "Le peignoir",
  real: "Dior",
  winner: false
})
n40.category_id = c10.id
photo_n40 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587051034/Peignoir_Dior_bpp6gx.jpg")
n40.photo.attach(io: photo_n40, filename: 'photo_n40.jpg', content_type: 'image/jpg')
n40.save!
n41 = Nominee.create({
  name: "Johnny, Pirate...",
  real: "et Sneakers",
  winner: false
})
n41.category_id = c11.id
photo_n41 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587051343/chien1_nqbar9.jpg")
n41.photo.attach(io: photo_n41, filename: 'photo_n41.jpg', content_type: 'image/jpg')
n41.save!
n42 = Nominee.create({
  name: "Jimmy, Bandit...",
  real: "et Bounty",
  winner: true
})
n42.category_id = c11.id
photo_n42 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587051343/chien2_cgxh3r.jpg")
n42.photo.attach(io: photo_n42, filename: 'photo_n42.jpg', content_type: 'image/jpg')
n42.save!
n43 = Nominee.create({
  name: "Jessie, Gangster...",
  real: "et Twix",
  winner: false
})
n43.category_id = c11.id
photo_n43 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587051344/chien3_nad6bb.png")
n43.photo.attach(io: photo_n43, filename: 'photo_n43.jpg', content_type: 'image/jpg')
n43.save!
n44 = Nominee.create({
  name: "Jerry, Corsaire...",
  real: "et KitKat",
  winner: false
})
n44.category_id = c11.id
photo_n44 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587051343/chien4_zvk1qm.jpg")
n44.photo.attach(io: photo_n44, filename: 'photo_n44.jpg', content_type: 'image/jpg')
n44.save!
n45 = Nominee.create({
  name: "Sublime",
  real: "Anthony Nasso",
  winner: false
})
n45.category_id = c12.id
photo_n45 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587051659/sublime_oafrln.jpg")
n45.photo.attach(io: photo_n45, filename: 'photo_n45.jpg', content_type: 'image/jpg')
n45.save!
n46 = Nominee.create({
  name: "Sensass'",
  real: "Anthony Nasso",
  winner: false
})
n46.category_id = c12.id
photo_n46 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587051659/Sensass_wxwvwl.jpg")
n46.photo.attach(io: photo_n46, filename: 'photo_n46.jpg', content_type: 'image/jpg')
n46.save!
n47 = Nominee.create({
  name: "Superbe",
  real: "Anthony Nasso",
  winner: true
})
n47.category_id = c12.id
photo_n47 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587051659/Superbe_oioi81.jpg")
n47.photo.attach(io: photo_n47, filename: 'photo_n47.jpg', content_type: 'image/jpg')
n47.save!
n48 = Nominee.create({
  name: "Splendide",
  real: "Anthony Nasso",
  winner: false
})
n48.category_id = c12.id
photo_n48 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587051659/Splendide_m1g14v.jpg")
n48.photo.attach(io: photo_n48, filename: 'photo_n48.jpg', content_type: 'image/jpg')
n48.save!
n49 = Nominee.create({
  name: "Chine",
  real: "Berceau du Covid-19",
  winner: false
})
n49.category_id = c13.id
photo_n49 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587052212/Chine_zk5q8m.jpg")
n49.photo.attach(io: photo_n49, filename: 'photo_n49.jpg', content_type: 'image/jpg')
n49.save!
n50 = Nominee.create({
  name: "France",
  real: "La patrie mère",
  winner: false
})
n50.category_id = c13.id
photo_n50 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587052213/France_fz9axg.jpg")
n50.photo.attach(io: photo_n50, filename: 'photo_n50.jpg', content_type: 'image/jpg')
n50.save!
n51 = Nominee.create({
  name: "Italie",
  real: "La vie douce",
  winner: false
})
n51.category_id = c13.id
photo_n51 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587052212/italie_ci9cip.jpg")
n51.photo.attach(io: photo_n51, filename: 'photo_n51.jpg', content_type: 'image/jpg')
n51.save!
n52 = Nominee.create({
  name: "États-Unis",
  real: "Pays de tous les interdits",
  winner: true
})
n52.category_id = c13.id
photo_n52 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587052213/E%CC%81tats-Unis_tj3idj.jpg")
n52.photo.attach(io: photo_n52, filename: 'photo_n52.jpg', content_type: 'image/jpg')
n52.save!
n53 = Nominee.create({
  name: "Les mangas",
  real: "japonais",
  winner: false
})
n53.category_id = c14.id
photo_n53 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587070714/mangas_pdvfst.jpg")
n53.photo.attach(io: photo_n53, filename: 'photo_n53.jpg', content_type: 'image/jpg')
n53.save!
n54 = Nominee.create({
  name: "Faire la",
  real: "féfête",
  winner: false
})
n54.category_id = c14.id
photo_n54 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587070715/faire-fe%CC%82te_xdxunm.jpg")
n54.photo.attach(io: photo_n54, filename: 'photo_n54.jpg', content_type: 'image/jpg')
n54.save!
n55 = Nominee.create({
  name: "Faire du",
  real: "théâtre",
  winner: false
})
n55.category_id = c14.id
photo_n55 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587070714/the%CC%81a%CC%82tre_tb3zyh.jpg")
n55.photo.attach(io: photo_n55, filename: 'photo_n55.jpg', content_type: 'image/jpg')
n55.save!
n56 = Nominee.create({
  name: "Faire de",
  real: "l'escalade",
  winner: true
})
n56.category_id = c14.id
photo_n56 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587070714/escalade_yhhzge.jpg")
n56.photo.attach(io: photo_n56, filename: 'photo_n56.jpg', content_type: 'image/jpg')
n56.save!
n57 = Nominee.create({
  name: "2005",
  real: "",
  winner: true
})
n57.category_id = c15.id
photo_n57 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587071419/93219313_684597502291247_2238387223525326848_n_rjnwjn.jpg")
n57.photo.attach(io: photo_n57, filename: 'photo_n57.jpg', content_type: 'image/jpg')
n57.save!
n58 = Nominee.create({
  name: "2007",
  real: "",
  winner: false
})
n58.category_id = c15.id
photo_n58 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587071419/IMG_5890_fseljq.jpg")
n58.photo.attach(io: photo_n58, filename: 'photo_n58.jpg', content_type: 'image/jpg')
n58.save!
n59 = Nominee.create({
  name: "2009",
  real: "",
  winner: false
})
n59.category_id = c15.id
photo_n59 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587071419/92822901_1702651703207634_3316475700457766912_n_qaf6fn.jpg")
n59.photo.attach(io: photo_n59, filename: 'photo_n59.jpg', content_type: 'image/jpg')
n59.save!
n60 = Nominee.create({
  name: "2012",
  real: "",
  winner: false
})
n60.category_id = c15.id
photo_n60 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587071419/93398359_1125364464481646_3959658189883965440_n_qgxfkn.jpg")
n60.photo.attach(io: photo_n60, filename: 'photo_n60.jpg', content_type: 'image/jpg')
n60.save!
n61 = Nominee.create({
  name: "Laurence",
  real: "Pressée",
  winner: false
})
n61.category_id = c16.id
photo_n61 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587071718/laurence-presse%CC%81e_ughdke.jpg")
n61.photo.attach(io: photo_n61, filename: 'photo_n61.jpg', content_type: 'image/jpg')
n61.save!
n62 = Nominee.create({
  name: "Hillary",
  real: "Collet",
  winner: true
})
n62.category_id = c16.id
photo_n62 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587071719/hillary-collet_afmdkm.jpg")
n62.photo.attach(io: photo_n62, filename: 'photo_n62.jpg', content_type: 'image/jpg')
n62.save!
n63 = Nominee.create({
  name: "Félicie",
  real: "Tation",
  winner: false
})
n63.category_id = c16.id
photo_n63 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587071718/fe%CC%81licie-tation_bbfj5e.jpg")
n63.photo.attach(io: photo_n63, filename: 'photo_n63.jpg', content_type: 'image/jpg')
n63.save!
n64 = Nominee.create({
  name: "Daisy",
  real: "Dratée",
  winner: false
})
n64.category_id = c16.id
photo_n64 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587071718/daisy-drate%CC%81e_d9dxga.jpg")
n64.photo.attach(io: photo_n64, filename: 'photo_n64.jpg', content_type: 'image/jpg')
n64.save!
n65 = Nominee.create({
  name: "Art En Track's",
  real: "Trash Trash",
  winner: false
})
n65.category_id = c17.id
photo_n65 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587072150/293087_3278223486037_652709791_n_vz8o12.jpg")
n65.photo.attach(io: photo_n65, filename: 'photo_n65.jpg', content_type: 'image/jpg')
n65.save!
n66 = Nominee.create({
  name: "Glorious Bast'Art",
  real: "Votez GBA",
  winner: true
})
n66.category_id = c17.id
photo_n66 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587072151/286682_2162821041673_526536760_o_tf8etj.jpg")
n66.photo.attach(io: photo_n66, filename: 'photo_n66.jpg', content_type: 'image/jpg')
n66.save!
n67 = Nominee.create({
  name: "Art'oMix",
  real: "MixMix",
  winner: false
})
n67.category_id = c17.id
photo_n67 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587072151/172879_1689462047994_2401854_o_diaxum.jpg")
n67.photo.attach(io: photo_n67, filename: 'photo_n67.jpg', content_type: 'image/jpg')
n67.save!
n68 = Nominee.create({
  name: "Bidul'Art",
  real: "Machin Pouet !",
  winner: false
})
n68.category_id = c17.id
photo_n68 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587072151/318459_10150357818681293_4065348_n_tcydry.jpg")
n68.photo.attach(io: photo_n68, filename: 'photo_n68.jpg', content_type: 'image/jpg')
n68.save!
n69 = Nominee.create({
  name: "Faire",
  real: "du botox",
  winner: false
})
n69.category_id = c18.id
photo_n69 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587072556/refaire-visage_e6mqmk.jpg")
n69.photo.attach(io: photo_n69, filename: 'photo_n69.jpg', content_type: 'image/jpg')
n69.save!
n70 = Nominee.create({
  name: "Se teindre",
  real: "les cheveux en blond",
  winner: true
})
n70.category_id = c18.id
photo_n70 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587072556/teindre-blond_qkuave.jpg")
n70.photo.attach(io: photo_n70, filename: 'photo_n70.jpg', content_type: 'image/jpg')
n70.save!
n71 = Nominee.create({
  name: "Se teindre",
  real: "les poils de l'anus en rouge",
  winner: false
})
n71.category_id = c18.id
photo_n71 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587072556/poils_de_l_anus_en_rouge_rnaehc.jpg")
n71.photo.attach(io: photo_n71, filename: 'photo_n71.jpg', content_type: 'image/jpg')
n71.save!
n72 = Nominee.create({
  name: "Se teindre",
  real: "les poils de nez en pourpre",
  winner: false
})
n72.category_id = c18.id
photo_n72 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587072559/poil-nez-pourpre_rf8rpb.jpg")
n72.photo.attach(io: photo_n72, filename: 'photo_n72.jpg', content_type: 'image/jpg')
n72.save!
n73 = Nominee.create({
  name: "Restaurateur",
  real: "Un petit tartare ?",
  winner: false
})
n73.category_id = c19.id
photo_n73 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587072863/restaurateur_vm6omc.jpg")
n73.photo.attach(io: photo_n73, filename: 'photo_n73.jpg', content_type: 'image/jpg')
n73.save!
n74 = Nominee.create({
  name: "Un contrôleur RATP",
  real: "Une petite amende ?",
  winner: false
})
n74.category_id = c19.id
photo_n74 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587072863/contro%CC%82leur_ratp_gvbtbc.jpg")
n74.photo.attach(io: photo_n74, filename: 'photo_n74.jpg', content_type: 'image/jpg')
n74.save!
n75 = Nominee.create({
  name: "Un boucher-charcutier",
  real: "Une petite bavette ?",
  winner: false
})
n75.category_id = c19.id
photo_n75 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587072863/boucher-charcutier_yxyxor.jpg")
n75.photo.attach(io: photo_n75, filename: 'photo_n75.jpg', content_type: 'image/jpg')
n75.save!
n76 = Nominee.create({
  name: "Un kinésithérapeute",
  real: "Un petit massage ?",
  winner: true
})
n76.category_id = c19.id
photo_n76 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587072863/kine%CC%81sithe%CC%81rapeute_vgjhmz.jpg")
n76.photo.attach(io: photo_n76, filename: 'photo_n76.jpg', content_type: 'image/jpg')
n76.save!
n77 = Nominee.create({
  name: "Faire le bruit",
  real: "du dauphin",
  winner: false
})
n77.category_id = c20.id
photo_n77 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587073301/bruit-dauphins_utl3em.jpg")
n77.photo.attach(io: photo_n77, filename: 'photo_n77.jpg', content_type: 'image/jpg')
n77.save!
n78 = Nominee.create({
  name: "Faire des prouts",
  real: "avec ses aisselles",
  winner: false
})
n78.category_id = c20.id
photo_n78 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587073301/prouts-aisselles_niiyrc.jpg")
n78.photo.attach(io: photo_n78, filename: 'photo_n78.jpg', content_type: 'image/jpg')
n78.save!
n79 = Nominee.create({
  name: "Créer un tableau",
  real: "de Kandinski avec ses miasmes",
  winner: false
})
n79.category_id = c20.id
photo_n79 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587073301/kandinski_yiwlgh.jpg")
n79.photo.attach(io: photo_n79, filename: 'photo_n79.jpg', content_type: 'image/jpg')
n79.save!
n80 = Nominee.create({
  name: "Faire le bruit de la baleine",
  real: "avec ses fesses",
  winner: true
})
n80.category_id = c20.id
photo_n80 = URI.open("https://res.cloudinary.com/ddlesqeup/image/upload/v1587073301/bruits-baleines-fesses_pyzbso.jpg")
n80.photo.attach(io: photo_n80, filename: 'photo_n80.jpg', content_type: 'image/jpg')
n80.save!

