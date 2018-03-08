require 'net/http'
require 'json'
require 'pp'

url = ""
uri = URI(url)
response = Net::HTTP.get(uri)
pp JSON.parse(response)

class Job
attr_reader :job_word
end