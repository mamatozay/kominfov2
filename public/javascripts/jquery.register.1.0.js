jQuery(document).ready(function() {
	
	jQuery('.header_container .header_menu').codeline();
	jQuery('.categories').codeline({'recently': true});
	jQuery('.portfolio_boxes').portfoliolist();
	
	
	if ( _twitter_active == "on" ) {
	
		jQuery('.twitter_ticker').tweetfeed({
			username: _twitter_id, 
			limit: _twitter_items
		});

		jQuery(".twitter_ticker").tweeticker({	
			pause: _twitter_delay * 1000,
			showItems: _twitter_items
		});

	}
	
	if ( _prettyPhoto_active == "on" ) {
	
		jQuery("a[data-rel^='prettyPhoto']").prettyPhoto({animation_speed:'fast', autoplay_slideshow:_prettyphoto_autoplay, slideshow:_prettyphoto_speed, social_networks:_prettyphoto_social});
	}
	
	
	if ( _sticky_footer == "on" ) {
	
		jQuery(".bottom_wrap").fixfooter();
		
	}
	
});