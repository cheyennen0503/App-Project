require 'net/http'
require 'json'
require 'pp'

url = "http://api.dataatwork.org/v1/jobs/autocomplete?contains="
uri = URI(url)
response = Net::HTTP.get(uri)
result = JSON.parse(response)
# pp JSON.parse(response)

class Job_word
attr_reader :find_word, :related_jobs #makes these writable and readable

    def initialize (find_word)
        @find_word = find_word
        @related_jobs = [] #creates an array
    end
    def find_job
        begin
            @find_word.gsub(" ", "+")
            url = 'http://api.dataatwork.org/v1/jobs/autocomplete?contains=' + "#{@find_word}" #link to API
            #uri = URI.parse(URI.encode(url.strip))
            uri = URI(url)
            response = Net::HTTP.get(uri)
            result = JSON.parse(response)
            puts result.inspect 
            
            result.each do |job|
              @related_jobs << job["suggestion"] #uses the array to show the user all available options for them regarding a job based on teh wrod they chose
               result[@related_jobs]

            end 
            puts "searching.." #shows the user it is searching for jobs
            result[@find_word] #shows word and jobs
        rescue
            puts "not working!"

            result = "Sorry, no #{@find_word} jobs can be found." #if the word doesn't show that the user inputs, this will pop up
        end 
    end
end


software = Job_word.new("software")
pp software.find_job


