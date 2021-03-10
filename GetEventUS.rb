require 'rubygems'
require 'dogapi'
require 'yaml'

secrets = YAML.load(File.read("secrets.yaml"))

api_key = secrets["DD_API_KEY_US"]
app_key = secrets["DD_APP_KEY_US"]

dog = Dogapi::Client.new(api_key, app_key)

puts dog.class

event_id = '5889977076272676880'
puts dog.get_event(event_id)