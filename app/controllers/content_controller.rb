class ContentController < ApplicationController
  def menu2_1
    @postsMainDinamic = Post.where("position = ? AND typepost = ?", "mainpost", "menu2_1")
    @postsMinipost1 = Post.where(["position = ?", "minipost1"]).limit(5).order("updated_at DESC")
    @postsMinipost2 = Post.where(["position = ?", "minipost2"]).limit(5).order("updated_at DESC")
    @postsMinipost3 = Post.where(["position = ?", "minipost3"]).limit(5).order("updated_at DESC")    
    @postsListMainDinamic= Post.where("position = ? AND typepost = ?", "mainpost", "2").order("updated_at DESC")
  end

  def menu2_2
    @postsMainDinamic = Post.where("position = ? AND typepost = ?", "mainpost", "menu2_2")
    @postsMinipost1 = Post.where(["position = ?", "minipost1"]).limit(5).order("updated_at DESC")
    @postsMinipost2 = Post.where(["position = ?", "minipost2"]).limit(5).order("updated_at DESC")
    @postsMinipost3 = Post.where(["position = ?", "minipost3"]).limit(5).order("updated_at DESC")    
    @postsListMainDinamic= Post.where("position = ? AND typepost = ?", "mainpost", "2").order("updated_at DESC")
  end

  def menu2_3
    @postsMainDinamic = Post.where("position = ? AND typepost = ?", "mainpost", "menu2_3")
    @postsMinipost1 = Post.where(["position = ?", "minipost1"]).limit(5).order("updated_at DESC")
    @postsMinipost2 = Post.where(["position = ?", "minipost2"]).limit(5).order("updated_at DESC")
    @postsMinipost3 = Post.where(["position = ?", "minipost3"]).limit(5).order("updated_at DESC")    
    @postsListMainDinamic= Post.where("position = ? AND typepost = ?", "mainpost", "2").order("updated_at DESC")
  end

  def menu2_4
    @postsMainDinamic = Post.where("position = ? AND typepost = ?", "mainpost", "menu2_4")
    @postsMinipost1 = Post.where(["position = ?", "minipost1"]).limit(5).order("updated_at DESC")
    @postsMinipost2 = Post.where(["position = ?", "minipost2"]).limit(5).order("updated_at DESC")
    @postsMinipost3 = Post.where(["position = ?", "minipost3"]).limit(5).order("updated_at DESC")    
    @postsListMainDinamic= Post.where("position = ? AND typepost = ?", "mainpost", "2").order("updated_at DESC")
  end

  def menu3_1
    @postsMainDinamic = Post.where("position = ? AND typepost = ?", "mainpost", "menu3_1")
    @postsMinipost1 = Post.where(["position = ?", "minipost1"]).limit(5).order("updated_at DESC")
    @postsMinipost2 = Post.where(["position = ?", "minipost2"]).limit(5).order("updated_at DESC")
    @postsMinipost3 = Post.where(["position = ?", "minipost3"]).limit(5).order("updated_at DESC")    
    @postsListMainDinamic= Post.where("position = ? AND typepost = ?", "mainpost", "2").order("updated_at DESC")
  end

  def menu3_2
    @postsMainDinamic = Post.where("position = ? AND typepost = ?", "mainpost", "menu3_2")
    @postsMinipost1 = Post.where(["position = ?", "minipost1"]).limit(5).order("updated_at DESC")
    @postsMinipost2 = Post.where(["position = ?", "minipost2"]).limit(5).order("updated_at DESC")
    @postsMinipost3 = Post.where(["position = ?", "minipost3"]).limit(5).order("updated_at DESC")    
    @postsListMainDinamic= Post.where("position = ? AND typepost = ?", "mainpost", "2").order("updated_at DESC")
  end

  def menu4_1
    @postsMainDinamic = Post.where("position = ? AND typepost = ?", "mainpost", "menu4_1")
    @postsMinipost1 = Post.where(["position = ?", "minipost1"]).limit(5).order("updated_at DESC")
    @postsMinipost2 = Post.where(["position = ?", "minipost2"]).limit(5).order("updated_at DESC")
    @postsMinipost3 = Post.where(["position = ?", "minipost3"]).limit(5).order("updated_at DESC")    
    @postsListMainDinamic= Post.where("position = ? AND typepost = ?", "mainpost", "2").order("updated_at DESC")
  end

  def menu4_1_1
    @postsMainDinamic = Post.where("position = ? AND typepost = ?", "mainpost", "menu4_1_1")
    @postsMinipost1 = Post.where(["position = ?", "minipost1"]).limit(5).order("updated_at DESC")
    @postsMinipost2 = Post.where(["position = ?", "minipost2"]).limit(5).order("updated_at DESC")
    @postsMinipost3 = Post.where(["position = ?", "minipost3"]).limit(5).order("updated_at DESC")    
    @postsListMainDinamic= Post.where("position = ? AND typepost = ?", "mainpost", "2").order("updated_at DESC")
  end

  def menu4_1_2
    @postsMainDinamic = Post.where("position = ? AND typepost = ?", "mainpost", "menu4_1_2")
    @postsMinipost1 = Post.where(["position = ?", "minipost1"]).limit(5).order("updated_at DESC")
    @postsMinipost2 = Post.where(["position = ?", "minipost2"]).limit(5).order("updated_at DESC")
    @postsMinipost3 = Post.where(["position = ?", "minipost3"]).limit(5).order("updated_at DESC")    
    @postsListMainDinamic= Post.where("position = ? AND typepost = ?", "mainpost", "2").order("updated_at DESC")
  end

  def menu4_1_3
    @postsMainDinamic = Post.where("position = ? AND typepost = ?", "mainpost", "menu4_1_3")
    @postsMinipost1 = Post.where(["position = ?", "minipost1"]).limit(5).order("updated_at DESC")
    @postsMinipost2 = Post.where(["position = ?", "minipost2"]).limit(5).order("updated_at DESC")
    @postsMinipost3 = Post.where(["position = ?", "minipost3"]).limit(5).order("updated_at DESC")    
    @postsListMainDinamic= Post.where("position = ? AND typepost = ?", "mainpost", "2").order("updated_at DESC")
  end

  def menu4_2
    @postsMainDinamic = Post.where("position = ? AND typepost = ?", "mainpost", "menu4_2")
    @postsMinipost1 = Post.where(["position = ?", "minipost1"]).limit(5).order("updated_at DESC")
    @postsMinipost2 = Post.where(["position = ?", "minipost2"]).limit(5).order("updated_at DESC")
    @postsMinipost3 = Post.where(["position = ?", "minipost3"]).limit(5).order("updated_at DESC")    
    @postsListMainDinamic= Post.where("position = ? AND typepost = ?", "mainpost", "2").order("updated_at DESC")
  end

  def menu4_2_1
    @postsMainDinamic = Post.where("position = ? AND typepost = ?", "mainpost", "menu4_2_1")
    @postsMinipost1 = Post.where(["position = ?", "minipost1"]).limit(5).order("updated_at DESC")
    @postsMinipost2 = Post.where(["position = ?", "minipost2"]).limit(5).order("updated_at DESC")
    @postsMinipost3 = Post.where(["position = ?", "minipost3"]).limit(5).order("updated_at DESC")    
    @postsListMainDinamic= Post.where("position = ? AND typepost = ?", "mainpost", "2").order("updated_at DESC")
  end

  def menu4_2_2
    @postsMainDinamic = Post.where("position = ? AND typepost = ?", "mainpost", "menu4_2_2")
    @postsMinipost1 = Post.where(["position = ?", "minipost1"]).limit(5).order("updated_at DESC")
    @postsMinipost2 = Post.where(["position = ?", "minipost2"]).limit(5).order("updated_at DESC")
    @postsMinipost3 = Post.where(["position = ?", "minipost3"]).limit(5).order("updated_at DESC")    
    @postsListMainDinamic= Post.where("position = ? AND typepost = ?", "mainpost", "2").order("updated_at DESC")
  end

  def menu4_2_3
    @postsMainDinamic = Post.where("position = ? AND typepost = ?", "mainpost", "menu4_2_3")
    @postsMinipost1 = Post.where(["position = ?", "minipost1"]).limit(5).order("updated_at DESC")
    @postsMinipost2 = Post.where(["position = ?", "minipost2"]).limit(5).order("updated_at DESC")
    @postsMinipost3 = Post.where(["position = ?", "minipost3"]).limit(5).order("updated_at DESC")    
    @postsListMainDinamic= Post.where("position = ? AND typepost = ?", "mainpost", "2").order("updated_at DESC")
  end

  def menu4_3
    @postsMainDinamic = Post.where("position = ? AND typepost = ?", "mainpost", "menu4_3")
    @postsMinipost1 = Post.where(["position = ?", "minipost1"]).limit(5).order("updated_at DESC")
    @postsMinipost2 = Post.where(["position = ?", "minipost2"]).limit(5).order("updated_at DESC")
    @postsMinipost3 = Post.where(["position = ?", "minipost3"]).limit(5).order("updated_at DESC")    
    @postsListMainDinamic= Post.where("position = ? AND typepost = ?", "mainpost", "2").order("updated_at DESC")
  end

  def menu4_3_1
    @postsMainDinamic = Post.where("position = ? AND typepost = ?", "mainpost", "menu4_3_1")
    @postsMinipost1 = Post.where(["position = ?", "minipost1"]).limit(5).order("updated_at DESC")
    @postsMinipost2 = Post.where(["position = ?", "minipost2"]).limit(5).order("updated_at DESC")
    @postsMinipost3 = Post.where(["position = ?", "minipost3"]).limit(5).order("updated_at DESC")    
    @postsListMainDinamic= Post.where("position = ? AND typepost = ?", "mainpost", "2").order("updated_at DESC")
  end

  def menu4_3_2
    @postsMainDinamic = Post.where("position = ? AND typepost = ?", "mainpost", "menu4_3_2")
    @postsMinipost1 = Post.where(["position = ?", "minipost1"]).limit(5).order("updated_at DESC")
    @postsMinipost2 = Post.where(["position = ?", "minipost2"]).limit(5).order("updated_at DESC")
    @postsMinipost3 = Post.where(["position = ?", "minipost3"]).limit(5).order("updated_at DESC")    
    @postsListMainDinamic= Post.where("position = ? AND typepost = ?", "mainpost", "2").order("updated_at DESC")
  end

  def menu4_3_3
    @postsMainDinamic = Post.where("position = ? AND typepost = ?", "mainpost", "menu4_3_3")
    @postsMinipost1 = Post.where(["position = ?", "minipost1"]).limit(5).order("updated_at DESC")
    @postsMinipost2 = Post.where(["position = ?", "minipost2"]).limit(5).order("updated_at DESC")
    @postsMinipost3 = Post.where(["position = ?", "minipost3"]).limit(5).order("updated_at DESC")    
    @postsListMainDinamic= Post.where("position = ? AND typepost = ?", "mainpost", "2").order("updated_at DESC")
  end

  def menu4_4
    @postsMainDinamic = Post.where("position = ? AND typepost = ?", "mainpost", "menu4_4")
    @postsMinipost1 = Post.where(["position = ?", "minipost1"]).limit(5).order("updated_at DESC")
    @postsMinipost2 = Post.where(["position = ?", "minipost2"]).limit(5).order("updated_at DESC")
    @postsMinipost3 = Post.where(["position = ?", "minipost3"]).limit(5).order("updated_at DESC")    
    @postsListMainDinamic= Post.where("position = ? AND typepost = ?", "mainpost", "2").order("updated_at DESC")
  end

  def menu4_4_1
    @postsMainDinamic = Post.where("position = ? AND typepost = ?", "mainpost", "menu4_4_1")
    @postsMinipost1 = Post.where(["position = ?", "minipost1"]).limit(5).order("updated_at DESC")
    @postsMinipost2 = Post.where(["position = ?", "minipost2"]).limit(5).order("updated_at DESC")
    @postsMinipost3 = Post.where(["position = ?", "minipost3"]).limit(5).order("updated_at DESC")    
    @postsListMainDinamic= Post.where("position = ? AND typepost = ?", "mainpost", "2").order("updated_at DESC")
  end

  def menu4_4_2
    @postsMainDinamic = Post.where("position = ? AND typepost = ?", "mainpost", "menu4_4_2")
    @postsMinipost1 = Post.where(["position = ?", "minipost1"]).limit(5).order("updated_at DESC")
    @postsMinipost2 = Post.where(["position = ?", "minipost2"]).limit(5).order("updated_at DESC")
    @postsMinipost3 = Post.where(["position = ?", "minipost3"]).limit(5).order("updated_at DESC")    
    @postsListMainDinamic= Post.where("position = ? AND typepost = ?", "mainpost", "2").order("updated_at DESC")
  end

  def menu4_4_3
    @postsMainDinamic = Post.where("position = ? AND typepost = ?", "mainpost", "menu4_4_3")
    @postsMinipost1 = Post.where(["position = ?", "minipost1"]).limit(5).order("updated_at DESC")
    @postsMinipost2 = Post.where(["position = ?", "minipost2"]).limit(5).order("updated_at DESC")
    @postsMinipost3 = Post.where(["position = ?", "minipost3"]).limit(5).order("updated_at DESC")    
    @postsListMainDinamic= Post.where("position = ? AND typepost = ?", "mainpost", "2").order("updated_at DESC")
  end

  def menu5_1
    @postsMainDinamic = Post.where("position = ? AND typepost = ?", "mainpost", "menu5_1")
    @postsMinipost1 = Post.where(["position = ?", "minipost1"]).limit(5).order("updated_at DESC")
    @postsMinipost2 = Post.where(["position = ?", "minipost2"]).limit(5).order("updated_at DESC")
    @postsMinipost3 = Post.where(["position = ?", "minipost3"]).limit(5).order("updated_at DESC")    
    @postsListMainDinamic= Post.where("position = ? AND typepost = ?", "mainpost", "2").order("updated_at DESC")
  end

  def menu5_2
    @postsMainDinamic = Post.where("position = ? AND typepost = ?", "mainpost", "menu5_2")
    @postsMinipost1 = Post.where(["position = ?", "minipost1"]).limit(5).order("updated_at DESC")
    @postsMinipost2 = Post.where(["position = ?", "minipost2"]).limit(5).order("updated_at DESC")
    @postsMinipost3 = Post.where(["position = ?", "minipost3"]).limit(5).order("updated_at DESC")    
    @postsListMainDinamic= Post.where("position = ? AND typepost = ?", "mainpost", "2").order("updated_at DESC")
  end

  def menu5_3
    @postsMainDinamic = Post.where("position = ? AND typepost = ?", "mainpost", "menu5_3")
    @postsMinipost1 = Post.where(["position = ?", "minipost1"]).limit(5).order("updated_at DESC")
    @postsMinipost2 = Post.where(["position = ?", "minipost2"]).limit(5).order("updated_at DESC")
    @postsMinipost3 = Post.where(["position = ?", "minipost3"]).limit(5).order("updated_at DESC")    
    @postsListMainDinamic= Post.where("position = ? AND typepost = ?", "mainpost", "2").order("updated_at DESC")
  end

  def menu5_4
    @postsMainDinamic = Post.where("position = ? AND typepost = ?", "mainpost", "menu5_4")
    @postsMinipost1 = Post.where(["position = ?", "minipost1"]).limit(5).order("updated_at DESC")
    @postsMinipost2 = Post.where(["position = ?", "minipost2"]).limit(5).order("updated_at DESC")
    @postsMinipost3 = Post.where(["position = ?", "minipost3"]).limit(5).order("updated_at DESC")    
    @postsListMainDinamic= Post.where("position = ? AND typepost = ?", "mainpost", "2").order("updated_at DESC")
  end

  def menu6_1
    @postsMainDinamic = Post.where("position = ? AND typepost = ?", "mainpost", "menu6_1")
    @postsMinipost1 = Post.where(["position = ?", "minipost1"]).limit(5).order("updated_at DESC")
    @postsMinipost2 = Post.where(["position = ?", "minipost2"]).limit(5).order("updated_at DESC")
    @postsMinipost3 = Post.where(["position = ?", "minipost3"]).limit(5).order("updated_at DESC")    
    @postsListMainDinamic= Post.where("position = ? AND typepost = ?", "mainpost", "2").order("updated_at DESC")
  end

end
