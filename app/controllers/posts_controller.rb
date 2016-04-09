class PostsController < ApplicationController

  def index

    @posts = Post.all   #need to create scope for feed and for current user.

  end

  def create

    @post = current_user.Post.new(post_params)

    if @post.save
      flash[:notice] = "Post has been created"
    else
      flash[:error] = "There was an error creating the post"
    end

  end

  def destroy

    @post = Post.find(params[:id])

    if @post.destroyed
      flash[:notice] = "Post has been deleted"
    else
      flash[:error] = "There was an error deleting the post"
    end

  end


  private

  def post_params

    params.require(:post).permit(:title, :body)

  end


end
