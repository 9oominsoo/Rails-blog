class SearchesController < ApplicationController

  def result
    @post=Post.find(params[:id])
    @searches = eval(params[:bulletin]).where('created_at >= :years_ago', :years_ago => Time.now - 1.years).where("title like ?", "%#{params[:search_text]}%")
  end

  def search_home
  end

end
