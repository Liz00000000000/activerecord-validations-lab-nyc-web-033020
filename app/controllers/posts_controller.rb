class PostsController < ApplicationController
    before_action :find_post, only: [:show, :edit, :destroy, :update]
    def index
       @posts = Post.all 
    end
    
    def new
        @post = Post.new
    end
    
    def create
        @post.update(post_params)
    end
    
    def edit
    
    end
    
    def update
    
    end
    
    def show
    
    end
    
    def destroy
    
    end

    private 

    def post_params
        params.require(:posts).permit(:title, :content, :summary, :category)
    end 

    def find_post
        @post = Post.find(params[:id])
    end 
end
