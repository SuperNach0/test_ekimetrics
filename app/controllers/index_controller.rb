class IndexController < ApplicationController
  def index

  @posts = Post.all #Recupere les valeurs de la BDD

  end


  def show#montrer
    @post = Post.find(params[:id])

  end

  def edit
    @post = Post.find(params[:id])

  end

  def new
      @post = Post.new
  end

  def create#créé un élem
    post = Post.create(post_params)
    redirect_to root_path #retour à l'index quand on a fini de créer
  end
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path

  end

  private
  def post_params
    params.require(:post).permit(:title, :content)

  end

end
