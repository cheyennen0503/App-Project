require 'dotenv/load'
require 'bundler'
Bundler.require

require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  
  # post '/result' do
  #   @job_word = params[:job_word]
  #   @job_word.get_info
    
    
  # end
  
  erb :result
end
