require 'yaml'

module Helpers
	EXPECTED_EXISTING_USER_NAME = 'mcberros'

  def initial_cassette_for_mentions
		VCR.use_cassette('mentions_from_twitter') do
			twitter_service = TwitterAccess.new
			mentions = twitter_service.get_mentions_to_user(EXPECTED_EXISTING_USER_NAME)
		end
		change_mentions_for('mentions_from_twitter', 1)
	end

	def stub_mentions
		'{"statuses":[{"metadata":{"iso_language_code":"es","result_type":"recent"},"created_at":"Thu Aug 07 20:04:32 +0000 2014","id":497473385648386048,"id_str":"497473385648386048","text":"@aitorciki Pregunta a @eamodeorubio @mcberros o @porras, que ellos s\u00ed que est\u00e1n \"viajados\" por Berl\u00edn :-)","source":"\u003ca href=\"http:\/\/twitter.com\/download\/android\" rel=\"nofollow\"\u003eTwitter for Android\u003c\/a\u003e","truncated":false,"in_reply_to_status_id":497466495447101440,"in_reply_to_status_id_str":"497466495447101440","in_reply_to_user_id":54513253,"in_reply_to_user_id_str":"54513253","in_reply_to_screen_name":"aitorciki","user":{"id":17984862,"id_str":"17984862","name":"Jose Manuel Beas ","screen_name":"jmbeas","location":"Madrid (Espa\u00f1a)","description":"Ayudo a desarrollar mejor software. Agilismo para transformar equipos y crear productos. Autoexigencia, autodisciplina y ritmo sostenible.","url":"http:\/\/t.co\/6SGuJXJTZ1","entities":{"url":{"urls":[{"url":"http:\/\/t.co\/6SGuJXJTZ1","expanded_url":"http:\/\/jmbeas.es","display_url":"jmbeas.es","indices":[0,22]}]},"description":{"urls":[]}},"protected":false,"followers_count":2485,"friends_count":234,"listed_count":283,"created_at":"Tue Dec 09 05:18:12 +0000 2008","favourites_count":11170,"utc_offset":7200,"time_zone":"Madrid","geo_enabled":false,"verified":false,"statuses_count":47747,"lang":"es","contributors_enabled":false,"is_translator":false,"is_translation_enabled":false,"profile_background_color":"FF6600","profile_background_image_url":"http:\/\/pbs.twimg.com\/profile_background_images\/378800000151638507\/0fLXFVbE.png","profile_background_image_url_https":"https:\/\/pbs.twimg.com\/profile_background_images\/378800000151638507\/0fLXFVbE.png","profile_background_tile":false,"profile_image_url":"http:\/\/pbs.twimg.com\/profile_images\/491365244825255936\/jxYi_577_normal.jpeg","profile_image_url_https":"https:\/\/pbs.twimg.com\/profile_images\/491365244825255936\/jxYi_577_normal.jpeg","profile_banner_url":"https:\/\/pbs.twimg.com\/profile_banners\/17984862\/1399626300","profile_link_color":"FF6600","profile_sidebar_border_color":"FFFFFF","profile_sidebar_fill_color":"FFFFFF","profile_text_color":"333333","profile_use_background_image":false,"default_profile":false,"default_profile_image":false,"following":null,"follow_request_sent":null,"notifications":null},"geo":null,"coordinates":null,"place":null,"contributors":null,"retweet_count":0,"favorite_count":0,"entities":{"hashtags":[],"symbols":[],"urls":[],"user_mentions":[{"screen_name":"aitorciki","name":"Aitor Guevara","id":54513253,"id_str":"54513253","indices":[0,10]},{"screen_name":"eamodeorubio","name":"Enrique Amodeo Rubio","id":42415655,"id_str":"42415655","indices":[22,35]},{"screen_name":"mcberros","name":"Carmen Berros","id":162684833,"id_str":"162684833","indices":[36,45]},{"screen_name":"porras","name":"Sergio Gil","id":33673,"id_str":"33673","indices":[48,55]}]},"favorited":false,"retweeted":false,"lang":"es"},{"metadata":{"result_type":"recent","iso_language_code":"en"},"created_at":"Wed Aug 06 16:18:54 +0000 2014","id":497054213575548928,"id_str":"497054213575548928","text":"every time i had @mcberros in front of my camera she was smiling. but i like that shot best: https:\/\/t.co\/G4skfFOVih #ec14 #eurucamp","source":"\u003ca href=\"http:\/\/www.echofon.com\/\" rel=\"nofollow\"\u003eEchofon\u003c\/a\u003e","truncated":false,"in_reply_to_status_id":null,"in_reply_to_status_id_str":null,"in_reply_to_user_id":null,"in_reply_to_user_id_str":null,"in_reply_to_screen_name":null,"user":{"id":14282544,"id_str":"14282544","name":"Thilo","screen_name":"freaklikeme","location":"here","description":"just a human being. coworking @co_up \/ @cobot_me, usergrouping @rug_b, web development @upstream_agile, conferencing @eurucamp","url":"http:\/\/t.co\/bzWxJWKmYZ","entities":{"url":{"urls":[{"url":"http:\/\/t.co\/bzWxJWKmYZ","expanded_url":"http:\/\/upstre.am","display_url":"upstre.am","indices":[0,22]}]},"description":{"urls":[]}},"protected":false,"followers_count":1030,"friends_count":489,"listed_count":99,"created_at":"Wed Apr 02 12:25:04 +0000 2008","favourites_count":171,"utc_offset":7200,"time_zone":"Berlin","geo_enabled":true,"verified":false,"statuses_count":9542,"lang":"en","contributors_enabled":false,"is_translator":false,"is_translation_enabled":false,"profile_background_color":"000000","profile_background_image_url":"http:\/\/pbs.twimg.com\/profile_background_images\/409178464\/hs-2010-25-a-full_jpg_compact.jpg","profile_background_image_url_https":"https:\/\/pbs.twimg.com\/profile_background_images\/409178464\/hs-2010-25-a-full_jpg_compact.jpg","profile_background_tile":false,"profile_image_url":"http:\/\/pbs.twimg.com\/profile_images\/497372931047956480\/aXIRCG_5_normal.png","profile_image_url_https":"https:\/\/pbs.twimg.com\/profile_images\/497372931047956480\/aXIRCG_5_normal.png","profile_link_color":"FF0000","profile_sidebar_border_color":"ABB49F","profile_sidebar_fill_color":"FFFFFF","profile_text_color":"0E690A","profile_use_background_image":true,"default_profile":false,"default_profile_image":false,"following":null,"follow_request_sent":null,"notifications":null},"geo":null,"coordinates":null,"place":null,"contributors":null,"retweet_count":0,"favorite_count":1,"entities":{"hashtags":[{"text":"ec14","indices":[117,122]},{"text":"eurucamp","indices":[123,132]}],"symbols":[],"urls":[{"url":"https:\/\/t.co\/G4skfFOVih","expanded_url":"https:\/\/www.flickr.com\/photos\/thilosoph\/14837090624\/","display_url":"flickr.com\/photos\/thiloso\u2026","indices":[93,116]}],"user_mentions":[{"screen_name":"mcberros","name":"Carmen Berros","id":162684833,"id_str":"162684833","indices":[17,26]}]},"favorited":false,"retweeted":false,"possibly_sensitive":false,"lang":"en"}],"search_metadata":{"completed_in":0.01,"max_id":497473385648386048,"max_id_str":"497473385648386048","query":"%40mcberros","refresh_url":"?since_id=497473385648386048&q=%40mcberros&result_type=recent&include_entities=1","count":100,"since_id":0,"since_id_str":"0"}}'
	end

	def initial_cassette_for_exists_user_and_mentions_from_twitter
		VCR.use_cassette('exists_user_and_mentions_from_twitter') do
			allow(STDIN).to receive(:gets) {EXPECTED_EXISTING_USER_NAME}

			TwitterController.new.latest_mentions_to_user
		end
		change_mentions_for('exists_user_and_mentions_from_twitter', 2)
	end

  private

	def change_mentions_for(cassette_name, request_number)
		cassette_file = File.join(__dir__, "../vcr_cassettes/#{cassette_name}.yml")
		mentions = YAML::load_file(cassette_file)
		mentions["http_interactions"][request_number]["response"]["body"]["string"] = stub_mentions
		File.open(cassette_file, 'w') {|f| f.write mentions.to_yaml }
	end

end
