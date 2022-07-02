class PagesController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def create
    filtered = params[:content].gsub(params[:censored],"")

    @post = Post.create(title: params[:title], 
                        image_url: params[:image_url], 
                        content: filtered.gsub(/\s+/," ").strip)
  end
end
