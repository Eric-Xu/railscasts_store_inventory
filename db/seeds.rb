electronics = Category.create!(name: "Electronics")
toys = Category.create!(name: "Toys & Games")
clothes = Category.create!(name: "Clothes")
furniture = Category.create!(name: "Furniture")
foods = Category.create!(name: "Foods")

Product.create!(name: "Settlers of Catan", price_in_cents: 3495, released_at: rand(1..90).days.ago, category_id: toys.id)
Product.create!(name: "Red Shirt", price_in_cents: 1249, released_at: rand(1..90).days.ago, category_id: clothes.id)
Product.create!(name: "Oak Coffee Table", price_in_cents: 22399, released_at: rand(1..90).days.ago, category_id: furniture.id)
Product.create!(name: "Technodrome", price_in_cents: 2799, released_at: rand(1..90).days.ago, category_id: toys.id)
Product.create!(name: "Oh's Cereal", price_in_cents: 395, released_at: rand(1..90).days.ago, category_id: foods.id)
Product.create!(name: "Game Console", price_in_cents: 29995, released_at: rand(1..90).days.ago, category_id: toys.id)
Product.create!(name: "Video Game", price_in_cents: 2995, released_at: rand(1..90).days.ago, category_id: toys.id)
Product.create!(name: "Lawn Chair", price_in_cents: 3499, released_at: rand(1..90).days.ago, category_id: furniture.id)
Product.create!(name: "Dog Toy Bone", price_in_cents: 299, released_at: rand(1..90).days.ago, category_id: toys.id)
Product.create!(name: "Heated Blanket", price_in_cents: 2795, released_at: 10.days.from_now, category_id: furniture.id)
Product.create!(name: "Flux Capacitor", price_in_cents: 1955, released_at: rand(1..90).days.ago, category_id: electronics.id)
Product.create!(name: "Chocolate Pie", price_in_cents: 314, released_at: rand(1..90).days.ago, category_id: foods.id)
Product.create!(name: "Acoustic Guitar", price_in_cents: 102400, released_at: rand(1..90).days.ago, category_id: electronics.id)
Product.create!(name: "Model Enterprise", price_in_cents: 2799, released_at: rand(1..90).days.ago, category_id: toys.id)
Product.create!(name: "Agricola", price_in_cents: 4599, released_at: rand(1..90).days.ago, category_id: toys.id)
Product.create!(name: "Stone Age", price_in_cents: 3499, released_at: 15.days.from_now, category_id: toys.id)
Product.create!(name: "7 Wonders", price_in_cents: 2875, released_at: rand(1..90).days.ago, category_id: toys.id)
Product.create!(name: "Seafarers of Catan", price_in_cents: 1995, released_at: rand(1..90).days.ago, category_id: toys.id)
Product.create!(name: "Knights of Catan", price_in_cents: 1995, released_at: rand(1..90).days.ago, category_id: toys.id)
Product.create!(name: "Starfarers of Catan", price_in_cents: 1995, released_at: 90.days.ago, category_id: toys.id)
Product.create!(name: "Answer to Everything", price_in_cents: 4200, released_at: rand(1..90).days.ago, category_id: electronics.id)
Product.create!(name: "Box Kite", price_in_cents: 6300, released_at: rand(1..90).days.ago, category_id: toys.id)
Product.create!(name: "1000 Piece Jigsaw Puzzle", price_in_cents: 1499, released_at: rand(1..90).days.ago, category_id: toys.id)
Product.create!(name: "Rubber Ducky", price_in_cents: 475, released_at: rand(1..90).days.ago, category_id: toys.id)
Product.create!(name: "Unicorn Action Figure", price_in_cents: 875, released_at: rand(1..90).days.ago, category_id: toys.id)
Product.create!(name: "Rack", price_in_cents: 3249, released_at: rand(1..90).days.ago, category_id: furniture.id)
Product.create!(name: "Model Train Rails", price_in_cents: 4500, released_at: rand(1..90).days.ago, category_id: toys.id)
Product.create!(name: "CanCan Music Record", price_in_cents: 299, released_at: rand(1..90).days.ago, category_id: electronics.id)

p = Product.first
p.tags << Tag.create!(name: "boardgames")
p.tags << Tag.create!(name: "euro")
p.tags << Tag.create!(name: "family")

AgeGroup.create!(description: "0-2")
AgeGroup.create!(description: "2-4")
AgeGroup.create!(description: "4-8")
AgeGroup.create!(description: "8-12")
AgeGroup.create!(description: "12+")

AgeGrouping.create!(age_group_id: 1, product_id: 2)
AgeGrouping.create!(age_group_id: 1, product_id: 5)
AgeGrouping.create!(age_group_id: 2, product_id: 12)
AgeGrouping.create!(age_group_id: 2, product_id: 28)
AgeGrouping.create!(age_group_id: 3, product_id: 29)
AgeGrouping.create!(age_group_id: 3, product_id: 27)
AgeGrouping.create!(age_group_id: 4, product_id: 1)
AgeGrouping.create!(age_group_id: 4, product_id: 28)
AgeGrouping.create!(age_group_id: 5, product_id: 1)
AgeGrouping.create!(age_group_id: 5, product_id: 3)
