# latest_tweets

This is a Ruby command line application that asks for a Twitter user name and shows the latest tweets mentioning that user.
The application tests if the user exists, if not writes a message warning about it.

## Usage
* Obtain the app_key and the app_secret for using the twitter api. For this you should visit https://apps.twitter.com/ and create an application. You don't need a callback URL. For the website you can write any valid URL. We won't use it.

* Copy the file config/twitter_config_empty.yml as config/twitter_config.yml and write your app_key and app_secret

* To test the application write the command `rspec`

* To run the application
	* (For UNIX) Make the file latest_tweets.rb executable:
		`chmod u+x latest_tweets.rb`
	* Write the command
		`./latest_tweets`
	* It will ask a twitter user name. You can give the name with the character '@' or without it

##License
This project is released under the [MIT License](https://opensource.org/licenses/MIT)
