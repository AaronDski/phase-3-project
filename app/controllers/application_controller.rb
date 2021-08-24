class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/parts_list" do
    { message: "Parts List!" }.to_json
    Part.all.to_json
  end
  get "/cart" do
    { message: "cart!" }.to_json
    Cart.all.to_json
  end
  

end
