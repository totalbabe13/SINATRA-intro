require 'sinatra'
require 'sinatra/reloader'

number = rand(100)
def check_guess(guess,number)
	if guess == number
		message = "YOU GUESSED IT! The SECRET number is #{number}"	
	elsif guess > number + 5
	    message = 'WAY too high!'
	elsif guess > number  && guess < number + 5
	    message = 'Too high'	    
    elsif guess < number - 5
     	message = 'WAY too low!'
    elsif guess < number && guess > number - 5
        message = "Too low!"  	
    end	
end    
  
get '/' do
	guess = params["guess"].to_i
	message = check_guess(guess,number)
    erb :index, :locals => {:number => number, :message => message}
end