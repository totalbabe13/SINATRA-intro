require 'sinatra'
require 'sinatra/reloader'


number = rand(100)
def check_guess(guess,number)  
	
	if guess == number
		message = "<p style='color:green';> YOU GUESSED IT! The SECRET number is #{number} </p>"	
	elsif guess > number + 5
	    message = "<p style='color:red';> WAY too HIGH! </p>"
	elsif guess > number  && guess < number + 5
	    message = "<p style='color:#ffb3b3';>  Too high </p>"	    
    elsif guess < number - 5
     	message = "<p style='color:red';> WAY too LOW! </p>"
    elsif guess < number && guess > number - 5
        message = "<p style='color:#ffb3b3';>  Too low </p>" 	
    end	
end    
  
get '/' do
	guess = params["guess"].to_i
	message = check_guess(guess,number)
    erb :index, :locals => {:number => number, :message => message }
end