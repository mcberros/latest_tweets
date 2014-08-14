class Printer
  def print_tweets(tweets)
  	tweets.each do |tweet|
  		puts "#{tweet.created_at} #{tweet.full_text}"
  	end
  end

  def print_error(error_message)
  	puts error_message
  end
end