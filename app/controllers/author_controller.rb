class AuthorController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index 
        if params[:id]
            @d=Author.find(params[:id])
            c=Book.where(author_id: @d.id)
        else
            c=Author.all
        end
        render json: c
    end
    
    def add
        c=Author.create(author: params[:author],age: params[:age],email: params[:email] , phone: params[:phone])
    end

    def delete
        c=Author.destroy(params[:id])
    end

    #  def books_info
       
    #  end
end

