class StoreController < ApplicationController
  def index
    @postsMainDinamic = Post.where("position = ? AND typepost = ?", "mainpost", "2").order("updated_at DESC")
    @postsMinipost1 = Post.where(["position = ?", "minipost1"]).limit(5).order("updated_at DESC")
    @postsListMainDinamic= Post.where("position = ? AND typepost = ?", "mainpost", "2").order("updated_at DESC")
    @postsRightSidebar1 = Post.where("position = ? AND typepost = ?", "mainpost", "2").limit(1)
  end

end
