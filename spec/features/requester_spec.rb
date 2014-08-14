require File.expand_path('../spec_helper', File.dirname(__FILE__))
require 'requester'

describe 'requester' do

	it 'ask the twitter user name' do
		allow(STDIN).to receive(:gets) {'mcberros'}
		requester = Requester.new

		expect(requester.get_twitter_name).to eql('mcberros')
	end

end