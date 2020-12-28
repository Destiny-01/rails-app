class CommentsController < ApplicationController
    before_action :comment, only: [:destroy]
    before_action :authenticate_user!, except: [:show]
    def create
        @blog = Blog.find(params[:blog_id])
        @comment = @blog.comments.create(comment_params)
        redirect_to blog_path(@blog)
    end

    def destroy
        @blog = Blog.find(params[:blog_id])
        @comment = @blog.comments.find(params[:id])
        @comment.destroy
        redirect_to blog_path(@blog)
    end

    def show
    end

    # def correct_user
    #     @blog = Blog.find(params[:blog_id])
    #     @comment.user_id = current_user.id
    #     @comment.save!
    # end

     def comment
        @blog = Blog.find(params[:blog_id])
        @comment= @blog.comments.create(params[:comment])
    end

    private

    def comment_params
        params.require(:comment).permit(:name, :body, :user_id)
    end
end
