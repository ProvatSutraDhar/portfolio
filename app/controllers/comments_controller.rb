class CommentsController < ApplicationController
  before_action :find_commentable, only: [:create]
  before_action :set_comment, except: [:create]
  before_action :authenticate_user!

  def create
    @comment = @commentable.comments.build(comment_params)
    @comment.user = current_user
    @comment.reply = true if params[:comment_id]
    @comment.save
      redirect_to @commentable
  end

  def edit
  end

  def update
    if @comment.edit_history = 'Original: ' + @comment.body.body.to_plain_text + "\n"
    else
      @comment.edit_history = @comment.edit_history + 'Edit: ' + params[:comment][:body]+ "\n"
    end
    @comment.update(comment_params)
  end
  def destroy
    @comment.destroy

  end
  def history


  end

  private

    def comment_params
      params.require(:comment).permit(:body)
    end

    def find_commentable
      if params[:comment_id]
        @commentable = Comment.find_by_id(params[:comment_id])
      elsif
        @commentable = Blog.find_by_id(params[:blog_id])
      end
    end
def set_comment
  @comment = Comment.find(params[:id])

end

end
