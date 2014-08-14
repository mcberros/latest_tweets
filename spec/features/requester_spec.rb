require File.expand_path('../spec_helper', File.dirname(__FILE__))
require 'requester'

describe 'requester' do

	it 'ask the twitter user name' do
		allow(STDIN).to receive(:gets) { Helpers::EXPECTED_EXISTING_USER_NAME }
		requester = Requester.new

		expect(requester.get_twitter_name).to eql( Helpers::EXPECTED_EXISTING_USER_NAME )
	end

end