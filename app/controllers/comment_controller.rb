class CommentController < ApplicationController
  def add
    @comment = Comment.new(params[:comment])
    if @comment.save
      @sucess = true
    else
      @sucess = false
    end
  end

end
