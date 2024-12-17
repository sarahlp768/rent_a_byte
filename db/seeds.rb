require "open-uri"

# Nettoyage des anciennes données
User.destroy_all
Computer.destroy_all

# Création des utilisateurs avec nom complet
user1 = User.create!(email: "user1@example.com", password: "password123", first_name: "John", last_name: "Doe")
user2 = User.create!(email: "user2@example.com", password: "password123", first_name: "Jane", last_name: "Smith")
user3 = User.create!(email: "user3@example.com", password: "password123", first_name: "Michael", last_name: "Johnson")
user4 = User.create!(email: "user4@example.com", password: "password123", first_name: "Emily", last_name: "Davis")
user5 = User.create!(email: "user5@example.com", password: "password123", first_name: "Daniel", last_name: "Harris")
user6 = User.create!(email: "user6@example.com", password: "password123", first_name: "Sarah", last_name: "Clark")

# Création des ordinateurs avec les données d'exemple
Computer.create!(
  name: "Commodore 64",
  creation_year: 1982,
  brand: "Commodore",
  processor: "6510 1 MHz",
  memory: "64 KB",
  price_per_day: 5,
  availability_start_date: DateTime.now + rand(1..27).days,
  availability_end_date: DateTime.now + rand(28..50).days,
  operating_system: "Commodore 64 OS",
  description: "An iconic 8-bit home computer from the early 80s.",
  image: "https://upload.wikimedia.org/wikipedia/commons/e/ee/Commodore_64_D.jpg",
  user_id: user1.id
)

Computer.create!(
  name: "Apple II",
  creation_year: 1977,
  brand: "Apple",
  processor: "MOS Technology 6502 1 MHz",
  memory: "4 KB",
  price_per_day: 10,
  availability_start_date: DateTime.now + rand(1..27).days,
  availability_end_date: DateTime.now + rand(28..50).days,
  operating_system: "Apple DOS",
  description: "The first personal computer developed by Apple.",
  image: "https://upload.wikimedia.org/wikipedia/commons/4/47/Apple_II_Computer.jpg",
  user_id: user2.id
)

Computer.create!(
  name: "IBM PC 5150",
  creation_year: 1981,
  brand: "IBM",
  processor: "Intel 8088 4.77 MHz",
  memory: "64 KB",
  price_per_day: 15,
  availability_start_date: DateTime.now + rand(1..27).days,
  availability_end_date: DateTime.now + rand(28..50).days,
  operating_system: "PC-DOS",
  description: "The first IBM personal computer, a milestone in computing history.",
  image: "https://upload.wikimedia.org/wikipedia/commons/0/05/IBM_PC_5150.jpg",
  user_id: user3.id
)

Computer.create!(
  name: "Atari 2600",
  creation_year: 1977,
  brand: "Atari",
  processor: "6507 1.19 MHz",
  memory: "128 bytes",
  price_per_day: 8,
  availability_start_date: DateTime.now + rand(1..27).days,
  availability_end_date: DateTime.now + rand(28..50).days,
  operating_system: "Atari OS",
  description: "A home video game console that became a classic.",
  image: "https://upload.wikimedia.org/wikipedia/commons/2/2f/Atari_2600.jpg",
  user_id: user4.id
)

Computer.create!(
  name: "Sinclair ZX Spectrum",
  creation_year: 1982,
  brand: "Sinclair",
  processor: "Zilog Z80 3.5 MHz",
  memory: "16 KB",
  price_per_day: 6,
  availability_start_date: DateTime.now + rand(1..27).days,
  availability_end_date: DateTime.now + rand(28..50).days,
  operating_system: "Sinclair OS",
  description: "A popular 8-bit personal computer in the 1980s.",
  image: "https://upload.wikimedia.org/wikipedia/commons/6/6f/ZX_Spectrum.jpg",
  user_id: user5.id
)

Computer.create!(
  name: "Amiga 500",
  creation_year: 1987,
  brand: "Commodore",
  processor: "Motorola 68000 7.14 MHz",
  memory: "512 KB",
  price_per_day: 12,
  availability_start_date: DateTime.now + rand(1..27).days,
  availability_end_date: DateTime.now + rand(28..50).days,
  operating_system: "AmigaOS",
  description: "An advanced personal computer for its time with powerful graphics.",
  image: "https://upload.wikimedia.org/wikipedia/commons/a/a0/Amiga_500.jpg",
  user_id: user6.id
)

Computer.create!(
  name: "Macintosh 128K",
  creation_year: 1984,
  brand: "Apple",
  processor: "Motorola 68000 8 MHz",
  memory: "128 KB",
  price_per_day: 20,
  availability_start_date: DateTime.now + rand(1..27).days,
  availability_end_date: DateTime.now + rand(28..50).days,
  operating_system: "System Software 1.0",
  description: "Apple's first Macintosh personal computer, known for its graphical user interface.",
  image: "https://upload.wikimedia.org/wikipedia/commons/5/5d/Macintosh_128K.jpg",
  user_id: user1.id
)

Computer.create!(
  name: "Tandy TRS-80",
  creation_year: 1977,
  brand: "Tandy",
  processor: "Zilog Z80 1.77 MHz",
  memory: "4 KB",
  price_per_day: 7,
  availability_start_date: DateTime.now + rand(1..27).days,
  availability_end_date: DateTime.now + rand(28..50).days,
  operating_system: "TRSDOS",
  description: "One of the first mass-market personal computers, produced by Tandy.",
  image: "https://upload.wikimedia.org/wikipedia/commons/9/9f/TRS-80_Model_I.jpg",
  user_id: user2.id
)

Computer.create!(
  name: "NEC PC-8001",
  creation_year: 1979,
  brand: "NEC",
  processor: "Zilog Z80 4 MHz",
  memory: "16 KB",
  price_per_day: 10,
  availability_start_date: DateTime.now + rand(1..27).days,
  availability_end_date: DateTime.now + rand(28..50).days,
  operating_system: "NEC BASIC",
  description: "One of the first Japanese personal computers, popular in the 80s.",
  image: "https://upload.wikimedia.org/wikipedia/commons/2/2f/NEC_PC-8001.jpg",
  user_id: user3.id
)

# Ajouter encore plus d'ordinateurs si nécessaire...

puts "Users and computers created!"
