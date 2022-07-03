class PagesController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def create
    if params[:censored] != nil
      filtered = params[:content].gsub(params[:censored],"")
    else
      filtered = params[:content]
    end

    @post = Post.create(title: params[:title], 
                        image_url: params[:image_url], 
                        content: filtered.gsub(/\s+/," ").strip)
  end
end
