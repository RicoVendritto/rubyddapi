require 'rubygems'
require 'dogapi'
require 'yaml'

secrets = YAML.load(File.read("secrets.yaml"))

ENV['DATADOG_HOST'] = "https://api.datadoghq.eu"

api_key = secrets["DD_API_KEY_EU"]
application_key = secrets["DD_APP_KEY_EU"]

dog = Dogapi::Client.new(api_key, application_key)

event_id = '5889971494703363835'
puts dog.get_event(event_id)