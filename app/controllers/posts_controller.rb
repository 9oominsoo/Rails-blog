class PostsController < ApplicationController

  def new
    # show basic features of create post pagges
    @post=Post.new
  end

  def create
    #action that create posts in new pages
    @post=Post.create post_params
    @post.user_id=current_user.id
    @post.save
    #Post.new(post_params)
    redirect_to posts_list_path
  end

  def list
    #show all post which created in new page
    @post=Post.all
    @user=User.all
  end

  def show
    #show particular post that clicked
    @post=Post.find(params[:id])
    @user=User.all
  end

  def edit
    #edit post contents
    @post=Post.find(params[:id])
  end

  def update
  end

  def destroy
    #delete posts, automatically linked with "delete moethod" by restsful interface
    @post=Post.find(params[:id])
    @post.destroy
    redirect_to posts_list_path
  end

  def my
    @user=User.find(current_user.id)
    @post=Post.where(user_id: current_user.id)
  end

  def add_like
    @post = Post.find(params[:id])
    @post.likes.create(user_id: current_user.id)
    redirect_to posts_list_path
  end

  def delete_like
    @post = Post.find(params[:id])
    if params[:user_id]
        @post.likes.where(user:params[:user_id]).first.destroy
    end
  end

  def make_comment
    @post=Post.find(params[:id])
    @post.comments.create(params[:comments].permit(:body))
    @post.comments.user_id=current_user.id
    @post.save
    redirect_to posts_list_path
  end

  private
    def comment_params
      params.require(:comment).permit(:msg)
    end

    def post_params
      #parameter
      params.require(:post).permit(:title, :body)
      #params.permit(:title, :body)
    end

end
