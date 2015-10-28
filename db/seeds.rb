require 'ffaker'

100.times do
	email = FFaker::Internet::email;
	user = User.create(
		email: email,
		password: "password"
	)

	item = Item.create(
		title: FFaker::Product.product,
		price: Random.rand(0...5000),
		description: FFaker::Lorem.paragraph,
		photo: 'image'+(Random.rand(0...9)).to_s+'.jpg'
	)

	user.items << item
end



email2 = 'me@me.com';
user2 = User.create(
	email: email2,
	password: "123"
)

15.times do
	item = Item.create(
		title: FFaker::Product.product,
		price: Random.rand(0...5000),
		description: FFaker::Lorem.paragraph,
		photo: 'image'+(Random.rand(0...9)).to_s+'.jpg'
	)

	user2.items << item
end
