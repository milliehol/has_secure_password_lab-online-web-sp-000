class UsersController < ApplicationController
  
  def create
        return redirect_to(controller: 'sessions',
                       action: 'new') if !params[:name] || params[:name].empty?
                       
        session[:name] = params[:name]
        redirect_to '/'
   end
end