class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  post /signup do 
    if User.find_by(username: user_params["username"])
      { message: "You have already Signed up. Please login"}.to_json
    else
      @user = User.create(user_params)
      @user,to_json
  end
end
