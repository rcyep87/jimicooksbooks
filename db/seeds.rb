# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.new({
  email:      "jimi@example.com"
  })
  user.password = "password"
  user.save!

account = Account.create({
  acct_type:         "savings",
  balance:      245.98,
  acct_number:  12987497,
  user_id:      1
  })

account = Account.create({
  acct_type:         "checking",
  balance:      125.98,
  acct_number:  12987499,
  user_id:      1
  })


payee = Payee.create({
  name:     "Citibank",
  user_id:  1
  })

payee = Payee.create({
  name:     "Bank of America",
  user_id:  1
  })

transaction = Transaction.create({
  date:       Date.now,
  credit:     0,
  debit:      90,
  user_id:    1,
  account_id: 1,
  payee_id:   1
  })


transaction = Transaction.create({
  date:       Date.now,
  credit:     12,
  debit:      0,
  user_id:    1,
  account_id: 2,
  payee_id:   2
  })
