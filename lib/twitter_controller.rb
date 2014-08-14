require_relative 'requester'
require_relative 'twitter_access'
require_relative 'printer'

class TwitterController
	def initialize
		@requester = Requester.new
		@twitter_service = TwitterAccess.new
		@printer = Printer.new
	end

	def latest_mentions_to_user
		twitter_name = @requester.get_twitter_name
		if @twitter_service.exists_user?(twitter_name)
			mentions = @twitter_service.get_mentions_to_user(twitter_name)
			@printer.print_tweets(mentions)
		else
			@printer.print_error("User does not exist")
		end
	end
end