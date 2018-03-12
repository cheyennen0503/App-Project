require 'net/http'
require 'json'
require 'pp'

url = "http://api.dataatwork.org/v1/spec/skills-api.json"
uri = URI(url)
response = Net::HTTP.get(uri)
pp JSON.parse(response)

class Job_word
attr_reader :job_word
   
    def initialize (job_word)
        # response = Net::HTTP.get(uri)
        # result = JSON.parse(response)
        # result[type]
        @job_word = job_word
    end

    def find_word 
        begin
            fetcher =  :Fetcher.new
            job_word = fetcher.search(@job_word)
             @job_word = job_word.body.split('\n')
        rescue
            @job_word = ["Sorry, that word wasn't found!"]
        end
    end


end