class Requester

	PROMPT = "Please give me a Twitter user name > "

	def get_twitter_name
		print PROMPT
		$stdin.gets.chomp
	end
end