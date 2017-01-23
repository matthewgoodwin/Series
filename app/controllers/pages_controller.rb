class PagesController < ApplicationController
  def home
  end

  def contact
  end

  def about
  end

  def search
    #build the 'show' instance here
    @show = Show.new

  end

  def shell
  end
end
