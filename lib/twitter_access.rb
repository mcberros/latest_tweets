require 'twitter'
require 'yaml'

class TwitterAccess

	def initialize
		config = YAML::load_file(File.join(__dir__, "../config/twitter_config.yml"))
		@app_key = config['app_key']
		@app_secret = config['app_secret']
		@client = create_client
	end

	def exists_user?(name)
		@client.user?(name)
	end

	def get_mentions_to_user(name)
		@client.search("@#{name}", result_type: 'recent')
	end

	private

	def create_client
		Twitter::REST::Client.new do |config|
			config.consumer_key = @app_key
			config.consumer_secret = @app_secret
		end
	end
end