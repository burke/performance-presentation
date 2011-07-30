class TimelineController < ApplicationController

  def index
    @tweets = Tweet.order('created_at DESC').limit(2000)
  end 

  def fancy
    @tweets = Tweet.order('created_at DESC').limit(100)
  end 

end 
