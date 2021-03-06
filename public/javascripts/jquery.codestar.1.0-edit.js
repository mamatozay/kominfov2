jQuery(document).ready(function(){
	jQuery(".toggler").click(function(){
		jQuery(this).toggleClass("active").next(".toggle_container").slideToggle("fast");return false;
	});
	jQuery("ul.tab_container li").hide();jQuery("ul.tabs").each(function(){
		jQuery(this).find("li:first").addClass("active").show();
	});
	jQuery("ul.tab_container").each(function(){
		jQuery(this).find("li:first").show();
	});
	jQuery("ul.tabs li").click(function(){
		var tab_id=jQuery(this).parent().attr("class").split(" ")[0].replace('tabs_','');
		jQuery(".tabs_"+tab_id+" li").removeClass("active");
		jQuery(".tab_"+tab_id+" li").hide();
		jQuery(this).addClass("active");
		var tabNum=(jQuery(this).find("a").attr("href")).replace('#tab','');
		jQuery(".tab_"+tab_id).find("li:nth-child("+tabNum+")").fadeIn();return false;
	});
		jQuery(".box_image_inside a, .image_frame_effect").hover(function(){
			jQuery(this).find("img").stop().animate({"opacity":0.50},500,"easeOutExpo");
		},function(){
			jQuery(this).find("img").stop().animate({"opacity":1},500,"easeOutExpo");
		});
		jQuery(".header_search_button").click(function(){
			jQuery(".header_search_input").css("display","block").animate({"width":250},500,"easeOutExpo");
			s_id=jQuery(this).attr("id");if(s_id==""){
				jQuery(this).attr("id","doSeach");default_val=jQuery(".header_search_input").attr("value");return false;
			}
			if(jQuery(".header_search_input").val()==default_val){
				return false;
			}
		});
		jQuery('input[type="text"], textarea').focus(function(){
			if(this.value==this.defaultValue){
				//this.value='';
			}
		}).blur(function(){
			if(jQuery.trim(this.value)==''){
				this.value=(this.defaultValue?this.defaultValue:'');
			}
		});
		jQuery(".header_icon").hover(function(){position=jQuery(this).position();
		jQuery('.tooltip_text').html(jQuery(this).find("span.tooltip").html());
		c_pad=5;c_width=parseInt(jQuery('.tooltip_content').width()/2)-parseInt(jQuery(this).width()/2+c_pad);
		c_height=parseInt(jQuery(this).height());
		jQuery('.tooltip_content').css({
			"left":position.left-c_width,"top":position.top+c_height
		});
		jQuery('.tooltip_content').fadeIn().stop().css({
			"left":position.left-c_width,"top":position.top+c_height-10
		}).animate({
			"opacity":1,"top":position.top+c_height
		},500,"easeOutExpo");
		},function(){
			jQuery('.tooltip_content').stop().animate({
				"opacity":0				
			},500,"easeOutExpo",function(){
					jQuery('.tooltip_text').html('');
			});
		});
		jQuery(".quickly_support").click(function(){
			jQuery(".quickly_container").css("display","block").hide().fadeIn()
			jQuery(".bottom_up_wrap").animate({
				"height":jQuery(".quickly_content").height()+125
			},500,"easeOutExpo");
			var brow=jQuery.browser.opera?jQuery("html"):jQuery("html, body");
			brow.animate({scrollTop:jQuery(this).offset().top},500);
			return false;
		});
		jQuery(".quickly_close").click(function(){
			jQuery(".quickly_container").fadeOut("fast");
			jQuery(".bottom_up_wrap").animate({"height":80},200,"easeOutExpo");return false;
		});
		jQuery(".quickly_submit, .contact_submit").click(function(){
			var container=jQuery(this).attr("class").split(" ")[0];
			jQuery("."+container).find(".quickly_form_message").hide();
			input_name=jQuery("."+container).find("input[name='name']");
			input_email=jQuery("."+container).find("input[name='email']");
			input_tel=jQuery("."+container).find("input[name='telephone']");
			input_subject=jQuery("."+container).find("input[name='subject']");
			input_message=jQuery("."+container).find("textarea[name='message']");
			isValid=false;
			val_email=input_email.val();
			var pattern=/^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_.-])+\.([a-zA-Z])+([a-zA-Z])+/;
			if(!pattern.test(val_email)){
				isValid=true;		
			}
			if(input_name.val()==_form_name){
				jQuery("."+container).find(".quickly_form_message").html(_error_name).fadeIn("slow");
			}else if(isValid==true){
				jQuery("."+container).find(".quickly_form_message").html(_error_email).fadeIn("slow");
			}else if(input_subject.val()==_form_subject){
				jQuery("."+container).find(".quickly_form_message").html(_error_subject).fadeIn("slow");
			}else if(input_message.val()==_form_message){
				jQuery("."+container).find(".quickly_form_message").html(_error_message).fadeIn("slow");
			}else{
				jQuery("."+container).find(".quickly_form_message").html(_send_message).fadeIn("slow");
					jQuery.post("get_mail.php",{
						name:input_name.val(),email:input_email.val(),tel:input_tel.val(),subject:input_subject.val(),message:input_message.val()
					},function(data){
						jQuery("."+container).find(".quickly_form_message").hide().html(data).fadeIn("slow");
					});
					input_name.val(_form_name);input_email.val(_form_email);input_tel.val(_form_tel);input_subject.val(_form_subject);
					input_message.val(_form_message);
				}
			return false;
		});
		jQuery(".send_comment").click(function(){
			jQuery(".comment_message").hide();
			input_author=jQuery("#respond input[name='author']");
			input_email=jQuery("#respond input[name='email']");
			input_url=jQuery("#respond input[name='url']");
			input_comment=jQuery("#respond textarea[name='comment']");
			isValid=false;
			val_email=input_email.val();
			var pattern=/^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_.-])+\.([a-zA-Z])+([a-zA-Z])+/;
			if(!pattern.test(val_email)){
				isValid=true;				
			}
			if(input_author.val()=="Name *"){
				jQuery(".comment_message").html(_error_name).fadeIn("slow");
				}else if(isValid==true){
					jQuery(".comment_message").html(_error_email).fadeIn("slow");
				}else if(input_comment.val()==_form_comment){
					jQuery(".comment_message").html(_error_comment).fadeIn("slow");
				}else{
					if(input_url.val()==_form_url){
						input_url.val("");						
					}
					jQuery('#sendform').submit();
					return false;
				}
			});
			jQuery(".send_comment_admin").click(function(){
				jQuery(".comment_message").hide();
				input_comment=jQuery("#respond textarea[name='comment']");
				if(input_comment.val()==_form_comment){
					jQuery(".comment_message").html(_error_comment).fadeIn("slow");
				}else{
					jQuery('#sendform').submit();
					return false;
				}
			});
			jQuery("a.top").click(function(){
				var brow=jQuery.browser.opera?jQuery("html"):jQuery("html, body");
				brow.animate({scrollTop:0},500);
				return false;
			});
		});
		(function($){$.fn.codeline=function(settings){
			this.settings=$.extend({},settings);
			var recently=this.settings.recently;
			var line=this.attr("class")+"_cline";
			$(this).find("li").each(function(){
				$(this).bind("line_trig",function(event,t){c_class=$(this).hasClass("current_page_item");
				v_class=$(this).hasClass("current_page_ancestor");
				s_class=$(this).hasClass("current-menu-ancestor");
				r_class=$(this).hasClass("current-page-item");
				if(c_class==true||v_class==true||s_class==true||r_class==true){
					c_pos=$(this).position();
					c_width=$(this).width();
					if(t=="anime"){
						jQuery("."+line).stop().animate({
							"width":c_width,"left":c_pos.left
						},1000,"easeOutExpo");
					}else{
						jQuery("."+line).css({
							"width":c_width,"left":c_pos.left
						});
					}
				}
			});
			$(this).trigger("line_trig");
		});
		if(recently==true){
			$(this).find("li a").click(function(){
				$(this).parent().parent().find("li").removeClass("current_page_item");
				$(this).parent().addClass("current_page_item");get_rc=".recently_boxes";
				get_id=$(this).parent().index();
				get_eq=get_rc+" ul:eq("+get_id+")";
				jQuery(get_rc).find("ul").find("li").hide();
				jQuery(get_eq).show();
				nextli(jQuery(get_eq+" li:first"));
				return false;
			});
			i=0;
			function nextli(li){
				li.stop().css({
					"display":"block","opacity":0
					}).delay(100*li.index()).animate({
						"opacity":1
					});
					if(li.next().length>0){
						nextli(li.next());}else{i=0;
						}
						i=parseInt(i+1);
			}				
		}
		$(this).find("ul:first > li").hover(function(){
			a_pad=20;
			a_pos=$(this).position();
			a_width=$(this).find("a").width()+a_pad;
			jQuery("."+line).stop().animate({
				"width":a_width,"left":a_pos.left
			},500,"easeOutExpo");
		});
		$(this).mouseleave(function(){
			$(this).find("li.current_page_item").trigger("line_trig",["anime"]);
			$(this).find("li.current-page-item").trigger("line_trig",["anime"]);
		});
	};
})
(jQuery);
(function($){
	$.fn.codeslide=function(settings){
		this.settings=$.extend({},this.defaults,settings);
		var cspeed=this.settings.speed;
		var autoplay=this.settings.autoplay;
		var buttons=this.settings.buttons;
		var pos=this.position();
		$(this).each(function(){
			var target="."+$(this).parent().attr("class");
			var sid=0;
			var timer=0;
			var arrows_pad=12;
			$(target).find(".next, .prev").css("top",$(this).height()/2-arrows_pad);
			$(target).find('.codeslide').find("iframe, object, embed").each(function(){
				var url=$(this).attr("src");
				$(this).attr("src",url+"?wmode=transparent").attr("wmode","transparent");
			});
			$(target).find(".nums li:first").addClass("active");
			var rotating=function(t){var oldid=$(t).find(".nums li").index($(t).find(".nums li.active"));
			var sid=$(t).find(".codeslide li").index($cslide);
			if(oldid!=sid){
				$(t).find(".nums li.active").removeClass('active');
				$(t).find(".codeslide li").hide();
				$(t).find(".codeslide li.current").show().removeClass('current').css({
					'position':'absolute','z-index':'0'
				});
				$cslide.addClass('current').css({
				'position':'absolute','z-index':'1'
				}).hide().fadeIn();$cnum.addClass('active');
			}};
			var rotateInterval=function(t,ap){
				$cnum=$(t).find('.nums li.active').next();
				$cslide=$(t).find('.codeslide li.current').next();
				if($cnum.length==0){
					$cnum=$(t).find('.nums li:first');
					$cslide=$(t).find('.codeslide li:first');
				}if(ap=="true"){
					rotating(t);
				}
			};
			$(target).find(".nums li").click(function(){
				$cnum=$(this);
				var index=$(target).find(".nums li").index(this);
				$cslide=$(target).find(".codeslide li:eq("+index+")");
				clearInterval(timer);
				timer=setInterval(function(){
					rotateInterval(target,autoplay);
				},cspeed);
				rotating(target);
				return false;
			});
			$(target).find(".next").click(function(){
				($(target).find('.nums li').length-1!=sid)?sid=(sid+1):sid=0;
				$cnum=$(target).find(".nums li:eq("+sid+")");
				$cslide=$(target).find(".codeslide li:eq("+sid+")");
				clearInterval(timer);
				timer=setInterval(function(){
					rotateInterval(target,autoplay);
				},cspeed);rotating(target);
				return false;
			});
			$(target).find(".prev").click(function(){
				(sid!=0)?sid=(sid-1):sid=$(target).find('.nums li').length-1;
				$cnum=$(target).find(".nums li:eq("+sid+")");
				$cslide=$(target).find(".codeslide li:eq("+sid+")");
				clearInterval(timer);
				timer=setInterval(function(){
					rotateInterval(target,autoplay);
				},cspeed);
				rotating(target);
				return false;
			});
			var target_img=$(target).find(".codeslide li:first img").attr("src");
			if(target_img==undefined){
				target_img="images/blank.gif";
			}
			var img=new Image();
			$(img).load(function(){
				if(buttons!="false"){
					$(target).find(".nums").css("display","block");					
				}
				$(target).find(".codeslide").css("background-image","none");
				$(target).find('.codeslide li:first').addClass("current").hide().fadeIn("fast");
				$(target).find(".codeslide").hover(function(){
					clearInterval(timer);
					$(target).find(".next, .prev").fadeIn("fast");
				},function(){
					clearInterval(timer);
					timer=setInterval(function(){
						rotateInterval(target,autoplay);
					},cspeed);
					$(target).find(".next, .prev").fadeOut("fast");
				});
				timer=setInterval(function(){
					rotateInterval(target,autoplay);
				},cspeed);
			}).attr('src',target_img);
		});
	};
})(jQuery);
(function($){
	$.fn.extend({
		portfoliolist:function(options){
			jQuery(".portfolio_boxes ul li, .recently_boxes ul li").hover(function(){
				jQuery(this).find(".picture").stop().animate({"top":-30},500,"easeOutExpo");
				jQuery(this).find(".alpha a").find("img").stop().animate({
					"opacity":0.50
				},500,"easeOutExpo");
			},function(){
				jQuery(this).find(".picture").stop().animate({
					"top":0},500,"easeOutExpo");
					jQuery(this).find(".alpha a").find("img").stop().animate({
						"opacity":1
					},500,"easeOutExpo");
			});
		}
	});
})(jQuery);
(function($){
	$.fn.extend({
		fixfooter:function(options){
			var getHeight=$(document.body).height()-$(".sticky_footer").height();
			if(getHeight<$(window).height()){
				var setHeight=$(window).height()-getHeight;
				$(".sticky_footer").height(setHeight);
			}
		}
	});
})(jQuery);
var jqueryslidemenu={
	animateduration:{
		over:100,out:100
	},buildmenu:function(menuid){
		jQuery(document).ready(function($){
			var $mainmenu=$("."+menuid+">ul")
			var $headers=$mainmenu.find("ul").parent()
			$headers.each(function(i){
				var $curobj=$(this)
				var $subul=$(this).find('ul:eq(0)')
				this._dimensions={
					w:this.offsetWidth,h:this.offsetHeight,subulw:$subul.outerWidth(),subulh:$subul.outerHeight()
				}
				this.istopheader=$curobj.parents("ul").length==1?true:false
				$subul.css({
					top:this.istopheader?this._dimensions.h+"px":-5
				})
				$curobj.hover(function(e){
					var $targetul=$(this).children("ul:eq(0)")
					this._offsets={
						left:$(this).offset().left,top:$(this).offset().top						
					}
					var menuleft=this.istopheader?0:this._dimensions.w
					menuleft=(this._offsets.left+menuleft+this._dimensions.subulw>$(window).width())?(this.istopheader?-this._dimensions.subulw+this._dimensions.w:-this._dimensions.w):menuleft
					if($targetul.queue().length<=1)$targetul.css({
						left:menuleft+"px",width:this._dimensions.subulw+'px'
					}).slideDown(jqueryslidemenu.animateduration.over)
				},function(e){
					var $targetul=$(this).children("ul:eq(0)")
					$targetul.slideUp(jqueryslidemenu.animateduration.out)
				})
				$curobj.click(function(){
					$(this).children("ul:eq(0)").hide()
				})
			})
			$mainmenu.find("ul").css({
				display:'none',visibility:'visible'
			})
		})
	}
}
jqueryslidemenu.buildmenu("header_container .header_menu");