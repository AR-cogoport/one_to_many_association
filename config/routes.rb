Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
   post "/author" , to: "author#add"
   get "/author" , to: "author#index"
   delete "/author" , to: "author#delete"
   post "/book" , to: "book#add"
   get "/book" , to: "book#index"
  # get "/author" , to: "author#books_info"

end

