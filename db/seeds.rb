# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.new(name:"Test 1",phone:123455,email:"test1@gmail.com",password:"qwertyuiop")
user1.avatar.attach(io: File.open('./app/assets/images/pic.jpg'), filename: 'pic.jpg')
user1.save

user2 = User.new(name:"Test1",phone:123455,email:"test2@gmail.com",password:"123456")
user2.avatar.attach(io: File.open('./app/assets/images/pic.jpg'), filename: 'pic.jpg')
user2.save

user3 = User.new(name:"Test3",phone:123455,email:"test3@gmail.com",password:"567890")
user3.avatar.attach(io: File.open('./app/assets/images/pic.jpg'), filename: 'pic.jpg')
user3.save

user4 = User.new(name:"Test4",phone:123455,email:"test4@gmail.com",password:"qwertyuiop")
user4.avatar.attach(io: File.open('./app/assets/images/pic.jpg'), filename: 'pic.jpg')
user4.save

user5 = User.new(name:"Test5",phone:123455,email:"test5@gmail.com",password:"qwertyuiop")
user5.avatar.attach(io: File.open('./app/assets/images/pic.jpg'), filename: 'pic.jpg')
user5.save


lawyer1 = Lawyer.new(name:"Lawyer1",phone:123455,email:"lawyer1@gmail.com",location:"Nairobi",rates:5,bio:"A very well educated lawyer")
lawyer1.avatar.attach(io: File.open('./app/assets/images/pic.jpg'), filename: 'pic.jpg')
lawyer1.save

lawyer2 = Lawyer.new(name:"Lawyer2",phone:123455,email:"lawyer2@gmail.com",location:"Nairobi",rates: 8,bio:"A lawyer form Havard")
lawyer2.avatar.attach(io: File.open('./app/assets/images/pic.jpg'), filename: 'pic.jpg')
lawyer2.save

lawyer3 = Lawyer.new(name:"Lawyer3",phone:123455,email:"lawyer3@gmail.com",location:"Nairobi",rates:6,bio:"A  must see layer")
lawyer3.avatar.attach(io: File.open('./app/assets/images/pic.jpg'), filename: 'pic.jpg')
lawyer3.save

lawyer4 = Lawyer.new(name:"Lawyer4",phone:123455,email:"lawyer4@gmail.com",location:"Nairobi",rates:5,bio:"A test laywer")
lawyer4.avatar.attach(io: File.open('./app/assets/images/pic.jpg'), filename: 'pic.jpg')
lawyer4.save

lawyer5 = Lawyer.new(name:"Lawyer5",phone:123455,email:"lawyer5@gmail.com",location:"Nairobi",rates:12,bio:"Number one lawyer in the world")
lawyer5.avatar.attach(io: File.open('./app/assets/images/pic.jpg'), filename: 'pic.jpg')
lawyer5.save

Reservation.create(reservationdate:"2022-07-08 16:07:10.782279",  is_active: true, duration: 5, user_id: 1, lawyer_id: 5 )
Reservation.create(reservationdate:"2022-06-08 16:07:10.782279",is_active: true, duration: 3, user_id: 2, lawyer_id: 5 )
Reservation.create(reservationdate:"2022-05-08 16:07:10.782279",is_active: true, duration: 2, user_id: 3, lawyer_id: 5 )

Reservation.create(reservationdate:"2022-04-08 16:07:10.782279",is_active: true, duration: 4, user_id: 4, lawyer_id: 5 )
Reservation.create(reservationdate:"2022-03-08 16:07:10.782279",is_active: true, duration: 1, user_id: 5, lawyer_id: 5 )
Reservation.create(reservationdate:"2022-07-08 16:07:10.782279",is_active: true, duration: 3, user_id: 5, lawyer_id: 5 )

Reservation.create(reservationdate:"2022-02-08 16:07:10.782279", is_active: true, duration: 5, user_id: 4, lawyer_id: 5 )
Reservation.create(reservationdate:"2022-07-04 16:07:10.782279",is_active: true, duration: 3, user_id: 3, lawyer_id: 5 )
Reservation.create(reservationdate:"2022-07-08 16:07:10.782279",is_active: true, duration: 1, user_id: 2, lawyer_id: 5 )

Reservation.create(reservationdate:"2022-07-08 16:07:10.782279",is_active: true, duration: 1, user_id: 1, lawyer_id: 5 )
Reservation.create(reservationdate:"2022-07-08 16:07:10.782279",is_active: true, duration: 4, user_id: 2, lawyer_id: 5 )
Reservation.create(reservationdate:"2022-07-08 16:07:10.782279",is_active: true, duration: 7, user_id: 3, lawyer_id: 5 )

Reservation.create(reservationdate:"2022-07-08 16:07:10.782279",is_active: true, duration: 2, user_id: 4, lawyer_id: 5 )
Reservation.create(reservationdate:"2022-07-08 16:07:10.782279",is_active: true, duration: 3, user_id: 5, lawyer_id: 5 )
Reservation.create(reservationdate:"2022-07-08 16:07:10.782279",is_active: true, duration: 3, user_id: 1, lawyer_id: 5 )
