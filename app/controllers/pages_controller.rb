class PagesController < ApplicationController
  def home
  end

  def index
    # @latestposts = Post.all.where(:category_id => '1')
    @latestposts= Post.select(:category_id).distinct

  end
end
