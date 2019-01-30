require 'sinatra'
require 'sinatra/reloader'

get '/' do
random_number = rand(1..100)

 "The secret number is #{random_number},  ->yolo!"
end 