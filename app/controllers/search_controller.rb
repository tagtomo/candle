#= Top page for application

class SearchController < ApplicationController

  def search
  end

  def index
    @articles = Article.all
  end
end
