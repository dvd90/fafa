User.destroy_all
Jewel.destroy_all
Order.destroy_all
User.create(email: "fafa@fafa.com", name: "Fafa", adress: "TLV", admin: true, password: "123456")
Jewel.create(name: "Ring", description: "Amazing", price: 100)
Jewel.create(name: "Neckless", description: "Amazing", price: 100)
Jewel.create(name: "Sextoy", description: "Amazing", price: 100)
Jewel.create(name: "Vibrator", description: "Amazing", price: 100)
Jewel.create(name: "Mister Universe", description: "Amazing", price: 100)
