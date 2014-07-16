require 'rest_client'

#puts RestClient.get('http://api.openweathermap.org/data/2.5/weather',{:params => {:q => 'Fortaleza'}})
#'http://api.openweathermap.org/data/2.5/weather?q=Fortaleza'

puts RestClient.get('http://md5.jsontest.com/',{:params => {:text=>"beep"}})