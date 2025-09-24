Rails.application.routes.draw do
get "/", to: "items#index"
get "/backdoor", to: "items#new_item_form"
post "/insert_item", to: "items#create_new_item"
end
