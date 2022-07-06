# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

nike = Seller.create(name:'Nike')
fender = Seller.create(name:'Fender')

bob = User.create(name:'Bob')
sally = User.create(name:'Sally')

aj3 = nike.products.create(name:'Air Jordan 3',retail_price:199.95, quantity_in_stock:1233)
aj2 = nike.products.create(name:'Air Jordan 2',retail_price:299.95, quantity_in_stock:2233)
aj4 = nike.products.create(name:'Air Jordan 4',retail_price:99.95, quantity_in_stock:233)

strat = fender.products.create(name:'Strat',retail_price:1999.95, quantity_in_stock:2233)
tele = fender.products.create(name:'Telecaster',retail_price:2999.95, quantity_in_stock:233)

bob_o1 = bob.orders.create(order_date:  DateTime.now - 10, tracking_number:1234 )
bob_o2 = bob.orders.create(order_date:  DateTime.now - 20, tracking_number:234 )
sally_o1 = sally.orders.create(order_date:  DateTime.now - 15, tracking_number:4234 )

# bob order 1 orders
ProductOrder.create(order_id:bob_o1.id, product_id:aj3.id, sold_price: 149.95)
ProductOrder.create(order_id:bob_o1.id, product_id:tele.id, sold_price: 1949.95)

# bob order 2 orders
ProductOrder.create(order_id:bob_o2.id, product_id:aj2.id, sold_price: 129.95)
ProductOrder.create(order_id:bob_o2.id, product_id:aj4.id, sold_price: 229.95)

# sally order 1 orders
ProductOrder.create(order_id:sally_o1.id, product_id:strat.id, sold_price: 1229.95)
