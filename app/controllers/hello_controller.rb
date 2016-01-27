class HelloController < ApplicationController

  def hi
    @comments = Comment.order('created_at desc').page(comment_page).per(comments_per_page)
  end

  def comment
    @comment = Comment.create(comment_params)
    redirect_to hi_path
  end

  private

  def comment_params
    params.require(:comment).permit(:title, :body)
  end

  def comment_page
    params[:page] || 1
  end

  def comments_per_page
    20
  end

end
