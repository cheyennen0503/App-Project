require 'dotenv/load'
require 'bundler'
Bundler.require
require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  

  post '/result' do
    
  @user_word = params[:job_word]
  @user_result = Job_word.new(@user_word)
  @user_result.find_job

    erb :result
  end
  end
