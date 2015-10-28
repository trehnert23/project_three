10.times do
  user = User.create(
    email: 'hello@me.com',
    password: "123"
  )

  item = Item.create(
  	title: 'random item',
  	description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque gravida sollicitudin consequat. Proin non tellus quis massa condimentum dignissim tristique in ipsum. Vivamus tempor mi purus, at ultrices leo euismod eget. Nunc eu porttitor lectus, vitae mattis neque. Etiam quis libero tincidunt, porttitor diam non, blandit nisl. In ac aliquet dui. Curabitur ac scelerisque tellus, sit amet ornare nisi. Nam ullamcorper tortor diam, ac aliquam velit fermentum vehicula. Mauris urna dolor, tristique non nibh et, faucibus dapibus ligula. Aenean rhoncus eu elit quis volutpat. Pellentesque scelerisque tincidunt nibh mattis porta. Etiam non orci mattis, porta ipsum a, vestibulum nulla.',
  	price: 452,
  	photo: 'http://cruisingyachts.com/wp-content/themes/cruisingyachts/images/luxuryyachtcharter.jpg'
  )

  user.items << item

end

10.times do
  user = User.create(
    email: 'whassup@me.com',
    password: "123"
  )

  item = Item.create(
  	title: 'other random image',
  	description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque gravida sollicitudin consequat. Proin non tellus quis massa condimentum dignissim tristique in ipsum. Vivamus tempor mi purus, at ultrices leo euismod eget. Nunc eu porttitor lectus, vitae mattis neque. Etiam quis libero tincidunt, porttitor diam non, blandit nisl. In ac aliquet dui. Curabitur ac scelerisque tellus, sit amet ornare nisi. Nam ullamcorper tortor diam, ac aliquam velit fermentum vehicula. Mauris urna dolor, tristique non nibh et, faucibus dapibus ligula. Aenean rhoncus eu elit quis volutpat. Pellentesque scelerisque tincidunt nibh mattis porta. Etiam non orci mattis, porta ipsum a, vestibulum nulla.',
  	price: 267,
  	photo: 'http://www.emba.org.za/wp-content/uploads/Bike-for-sale.jpg'
  )

  user.items << item

end