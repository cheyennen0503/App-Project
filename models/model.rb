require 'net/http'
require 'json'
require 'pp'

url = "http://api.dataatwork.org/v1/spec/skills-api.json"
uri = URI(url)
response = Net::HTTP.get(uri)
pp JSON.parse(response)

class Job_word
attr_reader :job_word, :find_word
   
    def initialize (job_word)
        @job_word = job_word
    end

    def find_word 
        def get_info(find_word)
        begin
            @job_word.gsub(" ", "+")
            url = 'http://api.dataatwork.org/v1/jobs' + "#{@name}" 
            uri = URI.parse(URI.encode(url.strip))
            response = Net::HTTP.get(uri)
            result = JSON.parse(response)
            puts "searching.."
            result[type]
        rescue
            puts "not working!"
            result = "Sorry, no #{find_word} is found"
        end
    end
end


end