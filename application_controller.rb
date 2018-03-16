require 'dotenv/load'
require 'bundler'
Bundler.require
require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  

  post '/result' do
  @user_word = params[:find_job] #putting user word into all the info and checking to choose one that is most similar to it
  puts @user_word
  @user_result = Job_word.new(@user_word) #shows the use the result
  puts @user_result.inspect
  @word = @user_result.find_job #word shows up based on teh users request
  puts @word #word is sent back to user with job availabilities
    erb :result
    
  end
  end
