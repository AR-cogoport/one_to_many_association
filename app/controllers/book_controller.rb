class BookController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index 
        c=Book.all
        render json: c
    end
    
    def add
        c=Book.create(title: params[:title],author_id: params[:author_id],published_at: params[:published_at])
    end
        

end
