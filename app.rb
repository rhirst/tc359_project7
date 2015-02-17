# app.rb

require 'sinatra'
require 'holidapi'

class HolidaysApp < Sinatra::Base
  get '/' do
    @Holidata = HolidApi.get(country: 'us', year: Time.now.year, month: Time.now.month).flatten
    @Bdata = HolidApi.get(year: 1992, month: 4).flatten
    erb :"index#{ rand(3) + 1}"
  end	
end


