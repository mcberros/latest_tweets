require File.expand_path('../spec_helper', File.dirname(__FILE__))
require 'twitter_access'

describe 'twitter_access' do

	it 'get mentions of user name' do
		initial_cassette_for_mentions
		change_mentions_from_twitter_cassette
		VCR.use_cassette('mentions_from_twitter') do
			twitter_service = TwitterAccess.new
			mentions = twitter_service.get_mentions_to_user('mcberros')
			expect(mentions.count).to eql(2)
			expect(mentions.first.full_text).to match(/Pregunta a/)
		end
	end
end