require File.expand_path('../spec_helper', File.dirname(__FILE__))
require 'printer'
require 'twitter_controller'
require 'twitter_access'

describe 'latest tweets' do
	context 'the user name exists' do
		it 'print mentions of user name' do
			initial_cassette_for_mentions
			change_mentions_from_twitter_cassette
				VCR.use_cassette('mentions_from_twitter') do
					twitter_service = TwitterAccess.new
					mentions = twitter_service.get_mentions_to_user('mcberros')
					expect(STDOUT).to receive(:puts).with("2014-08-07 22:04:32 +0200 @aitorciki Pregunta a @eamodeorubio @mcberros o @porras, que ellos s\u00ED que est\u00E1n \"viajados\" por Berl\u00EDn :-)")
		   		expect(STDOUT).to receive(:puts).with("2014-08-06 18:18:54 +0200 every time i had @mcberros in front of my camera she was smiling. but i like that shot best: https://t.co/G4skfFOVih #ec14 #eurucamp")
					Printer.new.print_tweets(mentions)
				end
		end
	end

	context 'the user name does not exist' do
		it 'prints error message' do
			VCR.use_cassette('user_not_exists') do
				allow(STDIN).to receive(:gets) {'twitter_mcberros'}

				expect {TwitterController.new.latest_mentions_to_user}.to output(/User does not exist/).to_stdout
			end
		end
	end

end