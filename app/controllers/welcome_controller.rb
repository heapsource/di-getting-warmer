class WelcomeController < ApplicationController

  def index
    @songs = Song.order('created_at desc')
  end

  def how
    
  end

end
