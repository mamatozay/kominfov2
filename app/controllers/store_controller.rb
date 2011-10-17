class StoreController < ApplicationController
  def index
    @postsMainDinamic = Post.where("position = ? AND typepost = ?", "mainpost", "2")
    @postsMinipost1 = Post.where(["position = ?", "minipost1"]).limit(1)
    @postsListMainDinamic= Post.where("position = ? AND typepost = ?", "mainpost", "2")
  end

end
