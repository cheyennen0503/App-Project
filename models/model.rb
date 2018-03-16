require 'net/http'
require 'json'
require 'pp'

url = "http://api.dataatwork.org/v1/jobs/autocomplete?contains="
uri = URI(url)
response = Net::HTTP.get(uri)
result = JSON.parse(response)
# pp JSON.parse(response)

class Job_word
attr_reader :find_word

    def initialize (find_word)
        @find_word = find_word
    end
    def find_job
        begin
            @find_word.gsub(" ", "+")
            url = 'http://api.dataatwork.org/v1/jobs/autocomplete?contains=' + "#{@find_word}" 
            # uri = URI.parse(URI.encode(url.strip))
            uri = URI(url)
            response = Net::HTTP.get(uri)
            result = JSON.parse(response)
            puts result.inspect 
            result.each do |suggestion|
                
                
            end 
            puts "searching.."
            result[@find_word]
        rescue
            puts "not working!"
            result = "Sorry, no #{@find_word} jobs can be found."
        end
    end
end
software = Job_word.new("software")
puts software.find_job
