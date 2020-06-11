# Create an Administrator user for convenience
User.create! username: 'Administrator', email: 'admin@example.com', password: '123456', password_confirmation: '123456'

[
  { name: 'Strong', slug: 'strong' },
  { name: 'Anime', slug: 'anime' },
  { name: 'Books', slug: 'books' },
  { name: 'Music', slug: 'music' },
].each { |h| Category.create h }

[
  { name: 'TaoKY', slug: 'taoky', description: 'TaoKY **Strong**!', category_id: 1 },
].each { |h| Item.create h }
