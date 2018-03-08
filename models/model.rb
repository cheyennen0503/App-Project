require 'net/http'
require 'json'
require 'pp'

url = "http://api.dataatwork.org/v1/spec/skills-api.json"
uri = URI(url)
response = Net::HTTP.get(uri)
pp JSON.parse(response)