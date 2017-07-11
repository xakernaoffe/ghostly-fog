<?php echo $header; ?>
<div class="videoPage">
    <div class="videoPage__header">
        <div class="container">
            <div class="videoPage__title col-sm-8"><?php echo $heading_title; ?></div>
            <ul class="breadcrumb col-sm-4">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                    <li class="breadcrumb__item">
                        <a href="<?php echo $breadcrumb['href']; ?>" class="breadcrumb__link"><?php echo $breadcrumb['text']; ?></a>
                    </li>
                <?php } ?>
            </ul>
        </div>
    </div>
    <div class="container">
        <div class="row"><?php echo $column_left; ?>
            <?php if ($column_left && $column_right) { ?>
                <?php $class = 'col-sm-6'; ?>
            <?php } elseif ($column_left || $column_right) { ?>
                <?php $class = 'col-sm-9'; ?>
            <?php } else { ?>
                <?php $class = 'col-sm-12'; ?>
            <?php } ?>
            <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="pvr-list pvr-contentLayout">
                            <?php foreach ($reviews as $review) { ?>
                                <?php $reviewText = str_replace('&nbsp;', ' ', strip_tags(htmlspecialchars_decode($review['text'], ENT_QUOTES))); ?>
                                <?php if (empty($pvr_settings['use_colorbox'])) {
                                    $reviewLink = 'href="' . $url->link('videopublisher/view', 'pvr_id=' . $review['pvr_id'], $pvr_ssl) . '" data-pvr-id="'.$review['pvr_id'].'"';
                                } else {
                                    if (empty($pvr_settings['use_collections'])){
                                        $reviewLink = 'onClick="cboxPVR('.$review['pvr_id'].');"';
                                    } else {
                                        $reviewLink = 'href="' . $url->link('videopublisher/view/separate', 'pvr_id=' . $review['pvr_id'], $pvr_ssl) . '" 				data-pvr-id="'.$review['pvr_id'].'"';
                                    }
                                } ?>
                                <div class="pvr-video-item">
                                    <div class="left">
                                        <div class="image">
                                            <a class="pvr-video" rel="pvr-dedicated-video-collection" <?php echo $reviewLink; ?> title="<?php echo $review['title']; ?>" alt="<?php echo $review['title']; ?>">
                                                <img title="<?php echo $review['title']; ?>" alt="<?php echo $review['title']; ?>"  src="<?php echo $review['image_link']; ?>" />
                                            </a>
                                            <div class="overlay" onClick="ieCompatibility(<?php echo $review['pvr_id']; ?>);"></div>
                                        </div>
                                    </div>
                                    <div class="right">
                                        <div class="pvr-review">
                                            <div class="videoPage__review">
                                                <div class="videoPage__review__title"><?php echo $review['title']; ?></div>
                                                <div class="pvr-text"><?php echo (mb_strlen($reviewText) > 500) ? mb_substr($reviewText, 0, 500, 'UTF-8') . '...' : $reviewText; ?></div>
                                                <div class="mainProductReviewInfo">
                                                    <?php if(!empty($review['author'])) { ?>
                                                        <div class="pvr-author"> <strong><?php echo $review['author']; ?></strong></div>
                                                    <?php } ?>
                                                    <?php if(!empty($review['date']) &&  $review['date'] != '0000-00-00') { ?>
                                                        <div class="pvr-date"><strong><?php echo date('d M Y', strtotime($review['date'])); ?></strong></div>
                                                    <?php } ?>
                                                    <a <?php echo $reviewLink; ?> class="videoReviewMoreBtn" rel="pvr-dedicated-button-collection"><?php echo $button_read_more; ?></a>
                                                </div>
                                                <?php if (!empty($review['display_rating'])) { ?>
                                                    <div class="pvr-rating rating">
                                                        <?php for ($i = 1; $i <= 5; $i++) { ?>
                                                            <?php if ($review['rating'] < $i) { ?>
                                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                            <?php } else { ?>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                            <?php } ?>
                                                        <?php } ?>
                                                    </div>
                                                <?php } ?>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <?php } ?>
                        </div>
                        <div class="pagination"><?php echo $pagination; ?></div>
                        <?php if(!empty($pvr_settings['fb_comments'])) { ?>
                            <div id="pvr-fb-comments">
                            </div>
                        <?php } ?>
                    </div>
                    <?php echo $content_bottom; ?>
                </div>
            </div>
            <?php echo $column_right; ?>
        </div>
    </div>
</div>
            
<script type="text/javascript"><!--
<?php if(!empty($pvr_settings['use_colorbox'])) { ?>
	<?php if(empty($pvr_settings['use_collections'])) { ?>
	function cboxPVR(pvr_id) {
		var pvrLink = '<?php echo html_entity_decode($separateReviewBaseUrl); ?>';
		$.colorbox({
			href: pvrLink + pvr_id,
			width: '<?php echo !empty($pvr_settings['colorbox_width']) ? $pvr_settings['colorbox_width'] : '700px';?>',
			reposition: false,
			onOpen: function() {
				$('#cboxOverlay').addClass('pvr-popupOverlay');
				$('#colorbox').addClass('pvr-popup');
				$('#colorbox').append($('#cboxClose').detach());
			},
			onClosed: function() {
				$('#cboxOverlay').removeClass('pvr-popupOverlay');
				$('#colorbox').removeClass('pvr-popup');
				$('#cboxContent').append($('#cboxClose').detach());
			},
			onComplete: function() {
				if(document.defaultView.getComputedStyle(document.getElementsByClassName('pvr-iframe')[0]).width.match(/^(\d+)\w+/) !== null) {
				var computedWidth = document.defaultView.getComputedStyle(document.getElementsByClassName('pvr-iframe')[0]).width.match(/^(\d+)\w+/)[1];
				var targetHeight = parseInt(computedWidth) * (9/16);
				document.getElementsByClassName('pvr-iframe')[0].style.height = parseInt(targetHeight) + 'px';
				}
				<?php if(!empty($pvr_settings['fb_comments'])) { ?>
				FB.XFBML.parse(document.getElementById('cboxLoadedContent'), function(){
					$.colorbox.resize();
				});
				<?php } else { ?>
				$.colorbox.resize();
				<?php } ?>
			}
		});
	}
	<?php } else { ?>
	$(document).ready(function(){
		$('a.pvr-video, a.videoReviewMoreBtn').colorbox({
			width: '<?php echo !empty($pvr_settings['colorbox_width']) ? $pvr_settings['colorbox_width'] : '700px';?>',
			reposition: false,
			current: false,
			onOpen: function() {
				$('#cboxOverlay').addClass('pvr-popupOverlay');
				$('#colorbox').addClass('pvr-popup');
				$('#colorbox').append($('#cboxClose').detach());
				$('#colorbox').append($('#cboxNext').detach());
				$('#colorbox').append($('#cboxPrevious').detach());
			},
			onClosed: function() {
				$('#cboxOverlay').removeClass('pvr-popupOverlay');
				$('#colorbox').removeClass('pvr-popup');
				$('#cboxContent').append($('#cboxClose').detach());
				$('#cboxContent').append($('#cboxNext').detach());
				$('#cboxContent').append($('#cboxPrevious').detach());
			},
			onComplete: function() {
				if(document.defaultView.getComputedStyle(document.getElementsByClassName('pvr-iframe')[0]).width.match(/^(\d+)\w+/) !== null) { 
				var computedWidth = document.defaultView.getComputedStyle(document.getElementsByClassName('pvr-iframe')[0]).width.match(/^(\d+)\w+/)[1];console.log(computedWidth);
				var targetHeight = parseInt(computedWidth) * (9/16);
				document.getElementsByClassName('pvr-iframe')[0].style.height = parseInt(targetHeight) + 'px';
				}
				<?php if(!empty($pvr_settings['fb_comments'])) { ?>
				FB.XFBML.parse(document.getElementById('cboxLoadedContent'), function(){
					$.colorbox.resize();
				});
				<?php } else { ?>
				$.colorbox.resize();
				<?php } ?>
			}
		});
	});
	<?php } ?>
<?php } ?>

<?php if(!empty($pvr_settings['fb_comments'])) { ?>
$(document).ready(function() {
	if (typeof FB == 'undefined') {
		$('#pvr-fb-comments').append('<div id="fb-root"></div>');
		(function(d, s, id) {
		  var js, fjs = d.getElementsByTagName(s)[0];
		  if (d.getElementById(id)) return;
		  js = d.createElement(s); js.id = id;
		  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
		  fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	}
});
<?php } ?>

function ieCompatibility (pvr_id) {
	if (navigator.appName == 'Microsoft Internet Explorer') {
		<?php if (empty($pvr_settings['use_colorbox']) || !empty($pvr_settings['use_collections'])) { ?>
			<?php if (empty($pvr_settings['use_colorbox']) || empty($pvr_settings['use_collections'])) { ?>
				document.location = $('a[data-pvr-id="'+pvr_id+'"]').first().attr('href');
			<? } else { ?>
				$('a[data-pvr-id="'+pvr_id+'"]').first().click();
			<?php } ?>
		<?php } else { ?>
			cboxPVR(pvr_id);
		<?php } ?>
	}
}
//--></script>
<?php echo $footer; ?>


