class PostsController < ApplicationController
    def index 
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end
    def new 
        @post = Post.new
    end
    def create 
        #render plain: params[:post].inspect 
        @post = Post.new(post_param)
       if(@post.save) 
        redirect_to @post
       else 
        render 'new'
       end
    end 

    private def post_param
        params.require(:post).permit(:title, :body)

    end
end
