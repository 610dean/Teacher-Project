class ProfilesController < ApplicationController
  def new;end
  
  def create
    render :text => display_params( :first_name, :last_name, :email )
  end

private

  def display_params *keys
    keys.inject('') do |result, key|
      result << "<p>#{key.to_s.titleize}: #{ params[key] }</p>\n" if params[key]
    end
  end
end
