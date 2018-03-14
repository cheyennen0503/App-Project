require 'dotenv/load'
require 'bundler'
Bundler.require
require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  

  post '/result' do
    
  @user_word = params[:find_word]
  puts @user_word
  @user_result = Job_word.new(@user_word)
  puts @user_result.inspect
  @word = @user_result.find_job
  puts @word
    erb :result
    
  end
  end
