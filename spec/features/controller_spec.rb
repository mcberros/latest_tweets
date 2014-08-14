require File.expand_path('../spec_helper', File.dirname(__FILE__))
require 'twitter_controller'

describe 'controller' do
	context 'the user name exists' do
		it 'print mentions of user name' do
			initial_cassette_for_exists_user_and_mentions_from_twitter
			VCR.use_cassette('exists_user_and_mentions_from_twitter') do
				allow(STDIN).to receive(:gets) { Helpers::EXPECTED_EXISTING_USER_NAME }

				expect(STDOUT).to receive(:puts).with(/Pregunta a/)
	   		expect(STDOUT).to receive(:puts).with(/every time/)

				TwitterController.new.latest_mentions_to_user
			end
		end
	end

	context 'the user name does not exist' do
		it 'prints error message' do
			VCR.use_cassette('user_not_exists') do
				# https://support.twitter.com/articles/101299-why-can-t-i-register-certain-usernames
				# Names can not contain twitter or admin
				allow(STDIN).to receive(:gets) {'twitter_mcberros'}

				expect {TwitterController.new.latest_mentions_to_user}.to output(/User does not exist/).to_stdout
			end
		end
	end

end