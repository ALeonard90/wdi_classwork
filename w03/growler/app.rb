require 'pg'
require 'pry'
require 'active_record'

ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.establish_connection(
	adapter: 'postgresql',
	host: 'localhost',
	database: 'growler'
)

class User < ActiveRecord::Base
	has_many :growls
	validates :username, uniqueness: true
end

class Growl < ActiveRecord::Base
	belongs_to :user
end

binding.pry