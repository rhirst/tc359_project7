# app.rb

require 'sinatra'
require 'holidapi'

class HolidaysApp < Sinatra::Base
  get '/' do
    puts params
    params['holiday_country'] ||= 'us'
    params['holiday_year'] ||= Time.now.year 
    if params['holiday_year'] == ""
      params['holiday_year'] = Time.now.year
    end
  	
    params['holiday_month'] ||= 1
    puts params
    @Holidata = HolidApi.get(country: params['holiday_country'], year: params['holiday_year'], month: params['holiday_month']).flatten
    @Bdata = HolidApi.get(year: 1992, month: 4).flatten
    erb :"index#{ rand(3) + 1}"
  end	
end


