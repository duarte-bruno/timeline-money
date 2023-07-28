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

income = EntryType.create(name: 'income')
expense = EntryType.create(name: 'expense')

# Entry --------------------------

Entry.create(account: itau_account, entry_type: income, value: 1000.0, date: Date.today, description: 'Salário Bruno')
Entry.create(account: itau_account, entry_type: income, value: 1000.0, date: Date.today, description: 'Salário Bruna')
Entry.create(account: nubank_bruna_account, entry_type: income, value: 1000.0, date: Date.today, description: 'Reserva de emergência')
Entry.create(account: nubank_bruno_account, entry_type: income, value: 100.0, date: Date.today, description: 'Dinheiro extra')

Entry.create(account: itau_account, entry_type: expense, value: 12.50, date: Date.today, description: 'Padaria')
Entry.create(account: itau_account, entry_type: expense, value: 100.0, date: Date.today, description: 'IFood')
Entry.create(account: itau_account, entry_type: expense, value: 58.30, date: Date.today, description: 'Gasolina')
Entry.create(account: itau_account, entry_type: expense, value: 300, date: Date.today, description: 'Mercado')

Entry.create(account: nubank_bruna_account, entry_type: expense, value: 300.0, date: Date.today, description: 'Emergência')

Entry.create(account: nubank_bruno_account, entry_type: expense, value: 10.0, date: Date.today, description: 'Mercado')