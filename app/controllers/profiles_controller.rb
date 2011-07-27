class ProfilesController < ApplicationController
  def new;end
  
  def create
    puts params.keys.join(', ')
    @keys = [:first_name, :last_name, :email]
  end
end
