class PostsController < ApplicationController

  before_fillter :authenticate_user!, :only => [:new, :create]

  def new
    @group = Group.find(params[:group_id])
    @post = Post.new
  end

  def create
    @group = Group.find(params[:group_id])
    @post = post.new(post_params)
    @post.group = @group
    @post.user = current_user

    if @post.save
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:content)
end

end
