require_relative "./app.rb"

User.delete_all # prevent dupilicates

users = User.create(
	[
		{ username: 'sungkim' },
		{ username: 'andyl' },
		{ username: 'jameskim' },
		{ username: 'jungunkim' },
		{ username: 'mattcho' }
	]
)

growls = Growl.create(
	[
		{ body: 'hi', user_id: 76 },
		# { body: 'dd', user_id: 1 },
		# { body: 'ff', user_id: 2 },
		# { body: 'aa', user_id: 3 },
		# { body: 'kk', user_id: 4 },
		# { body: 'kk', user_id: 5 }
	]
)