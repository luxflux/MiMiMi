require 'tweethose'


TweetHose::Config.username = ''
TweetHose::Config.password = ''
TweetHose::Config.track_keywords = Array['#MiMiMiThis']

TweetHose::Config.on_new_tweet do |status|
  require 'pp'
  status[:entities][:user_mentions].each do |user_mention|
    name = user_mention["screen_name"]
    person = Person.find_or_create_by_name(name)

    text = status.text.gsub(/RT /,'').gsub(/ ?@#{name} /,'').gsub(/ ?#MiMiMiThis/,'')

    person.quotes.create(:body => text, :created_at => status.created_at)
  end
end

TweetHose::Config.on_delete_tweet do |status_id|
	puts "Delete tweet #{status_id}"
end

TweetHose::Config.on_error do |message|
	puts "Error received from Twitter #{message}"
end
