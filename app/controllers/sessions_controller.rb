class SessionsController < ApplicationController
    def new
        # nothing to do here!
    end

    def create
      if session[:name] = params[:name] && params[:name] != nil
        redirect_to '/'
      else
        redirect_to '/login'
      end
    end

    def destroy
      session.delete :name
    end
end
