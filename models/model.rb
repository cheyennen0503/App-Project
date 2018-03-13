require 'net/http'
require 'json'
require 'pp'

url = "http://api.dataatwork.org/v1/spec/skills-api.json"
uri = URI(url)
response = Net::HTTP.get(uri)
result = JSON.parse(response)
# pp JSON.parse(response)

class Job_word
attr_reader :job_word, :find_word

    def initialize (find_word)
        @find_word = find_word

    end
        def job(find_word)
        begin
            @find_word.gsub(" ", "+")
            url = 'http://api.dataatwork.org/v1/spec/skills-api.json' + "#{@job_word}" 
            uri = URI.parse(URI.encode(url.strip))
            response = Net::HTTP.get(uri)
            result = JSON.parse(response)
            puts "searching.."
            result[find_word]
        rescue
            puts "not working!"
            result = "Sorry, no #{find_word} is found"
        end
    end
end

