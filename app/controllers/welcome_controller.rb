class WelcomeController < ApplicationController
  def index
    # use in case we want to use a static web page if not it will try to load thw welcome/index.html.erb view
  	#render :file => 'public/index.html'
  	#@pcs = Pc.all
  end
end
