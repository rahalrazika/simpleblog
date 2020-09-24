class PostsController < ApplicationController
    def index 
    end

    def show
        @post = Post.find(params[:id])
    end
    def new 
    end
    def create 
        #render plain: params[:post].inspect 
        @post = Post.new(params[:post])
        @post.save
        redirect_to @post
    end 

    private def post_param
        params.require(:post).permit(:title, :body)

    end
end
