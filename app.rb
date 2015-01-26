# app.rb
require 'sinatra'

class MyWebApp < Sinatra::Base
  get '/' do
    "Future construction site.  Fabolous content to come! Copyright 2014-#{ Time.now.year } Ryan Hirst."
  end
end