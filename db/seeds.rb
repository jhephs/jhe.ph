print 'Creating users'
user = User.create first_name: 'Jeriel Paul', last_name: 'Abayon'
puts '.'

print 'Creating accounts'
user.accounts.create(
  email: 'jerielabayon@gmail.com',
  username: 'jhephs',
  password: 'password',
  password_confirmation: 'password'
)
puts '.'
