class StoreController < ApplicationController
  def index
    @postsMain = Post.where(["position = ?", "mainpost"])
    @postsMinipost1 = Post.where(["position = ?", "minipost1"]).limit(1)
  end

end
