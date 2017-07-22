<?php echo $header; ?>
<div class="videoPage">
    <div class="videoPage__header">
        <div class="container">
            <div class="videoPage__title col-sm-8"><?php echo $heading_title; ?></div>
            <ul class="breadcrumb col-sm-4 hidden-xs">
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
                        <div class="videoReviewDetailsWrapper">
                            <div class="videoReviewDetailsBox">
                                <?php include 'review.tpl'; ?>
                            </div>
                        </div>
                        <?php echo $content_bottom; ?>
                    </div>
                </div>
            </div>
            <?php echo $column_right; ?>
        </div>
    </div>
</div>


<script type="text/javascript"><!--
$(document).ready(function() {
	var elements = <?php echo (!$isLocalVideo) ? "document.getElementsByClassName('pvr-iframe')" : "document.getElementsByClassName('pvr-html5')"; ?>;
	if(document.defaultView.getComputedStyle(elements[0]).width.match(/^(\d+)\w+$/) !== null) {
	var computedWidth = document.defaultView.getComputedStyle(elements[0]).width.match(/^(\d+)\w+$/)[1]; console.log(computedWidth);
	var targetHeight = parseInt(computedWidth) * (9/16);
	document.getElementsByClassName('pvr-iframe')[0].style.height = parseInt(targetHeight) + 'px';
	}
	<?php if(!empty($pvr_settings['fb_comments'])) { ?>
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
	<?php } ?>
});
//--></script>
<?php echo $footer; ?>