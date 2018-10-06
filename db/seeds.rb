puts 'Cleaning database...'
User.destroy_all
Log.destroy_all

puts 'Creating users...'
user = User.new(email: "takuma@gmail.com", password: "123456")

puts 'Creating logs...'
logs_attr = [
  {
    title:        'daily reading',
    date:         Date.today,
    spread_memo:  'Daily',
    card_name:    'King of cups',
    description:  'I will have a great day'
  },
  {
    title:        'weekly reading',
    date:         Date.today,
    spread_memo:  '7 days individual',
    card_name:    'Justice',
    description:  'This week, I should take a good rest'
  }
]
Log.create!(logs_attr)

puts 'Finished!'
