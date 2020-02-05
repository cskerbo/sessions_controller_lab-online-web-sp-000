class SessionsController < ApplicationController
    def new
        # nothing to do here!
    end

    def create
      if session[:name] = params[:name]
        redirect_to '/'
      elsif session
        redirect_to '/login'
      end
    end

    def destroy
      session.delete :name
    end
end
