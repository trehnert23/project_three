# Wipe the database
Item.destroy_all
# Let's create a bunch of records
Item.create([
  {
    title: 'bike',
    description: 'goes fast',
    price: 45,
    photo: 'https://s-media-cache-ak0.pinimg.com/736x/a1/e3/6b/a1e36bcb8ce179bd8cc8db28ff4ef6fb.jpg'
  }
])