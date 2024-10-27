class HomesController < ApplicationController
  def about
    @posts = Post.all.includes(:user)
  end
end
