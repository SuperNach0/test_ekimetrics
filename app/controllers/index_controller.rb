class IndexController < ApplicationController
  def index

  @posts = Post.all #Recupere les valeurs de la BDD

  end


  def show
    @post = Post.find(params[:id])

  end

  def edit
    @post = Post.find(params[:id])

  end

  def new
      @post = Post.new
  end
end
