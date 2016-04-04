100.times do
	require 'ffaker'
	email = FFaker::Internet::email;
	user = User.create(
		email: email,
		password: "password"
	)

	item = Item.create(
		title: FFaker::Product.product,
		price: Random.rand(0...5000),
		description: FFaker::Lorem.paragraph,
		photo: 'image'+(Random.rand(0...20)).to_s+'.jpg'
	)

	user.items << item
end



email2 = 'me@me.com';
user2 = User.create(
	email: email2,
	password: "123"
)

15.times do
	require 'ffaker'
	item = Item.create(
		title: FFaker::Product.product,
		price: Random.rand(0...5000),
		description: FFaker::Lorem.paragraph,
		photo: 'image'+(Random.rand(0...20)).to_s+'.jpg'
	)

	user2.items << item
end

