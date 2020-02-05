class SessionsController < ApplicationController
    def new
        # nothing to do here!
    end

    def create
      if params[:name] != nil || !params.has_key?(:name)
        session[:name] = params[:name]
        redirect_to '/'
      else
        redirect_to '/login'
      end
    end

    def destroy
      session.delete :name
    end
end
