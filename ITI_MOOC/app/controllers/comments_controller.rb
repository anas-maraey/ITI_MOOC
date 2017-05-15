class CommentsController < ApplicationController

  def create
    @lecture = Lecture.find(params[:lecture_id])
      @comment = @lecture.comments.create(params[:comment].permit(:body, :user).merge(user: current_user))

    @comment.save

    redirect_to lecture_path(@lecture)
  end
end
