class PagesController < ApplicationController
  def about
    @title = 'About us '
    @content = 'this is about page '
  end
end
