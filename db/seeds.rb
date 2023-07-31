# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Users --------------------------

user = User.create(name: 'Bruno Duarte Pereira Santos', email: 'brunopereiras@icloud.com', password: 'Brunops-01', terms_of_service: '1')

# Accounts --------------------------

itau_account = Account.create(user: user, name: 'Itaú Conjunto')
nubank_bruno_account = Account.create(user: user, name: 'Nubank Bruno')
nubank_bruna_account = Account.create(user: user, name: 'Nubank Bruna')

# EntryTypes --------------------------

income = EntryType.create(name: 'Income')
expense = EntryType.create(name: 'Expense')
recurring_income = EntryType.create(name: 'Recurring income')
recurring_expense = EntryType.create(name: 'Recurring expense')
