class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/parts_list" do
    
    Part.all.to_json
  end
  get "/cart" do
    
    User.first.carts.all.to_json
  end
  get "/cart/:id" do
    
    Cart.find(params[:id]).to_json
  end


  post "/cart" do
    add = Cart.create(
      user_id: params[:user_id],
      part_id: params[:part_id],
      
      item_name: params[:item_name],
      make: params[:make],
      model: params[:model],
      year: params[:year],
      price: params[:price],

    )
    add.to_json
  end
  delete "/cart/:id" do
  cart = Cart.find(params[:id])
  cart.destroy
  cart.to_json

  end


end
