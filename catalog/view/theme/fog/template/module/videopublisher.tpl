<div class="video-wrap">
    <div class="container">
        <div class="module">
            <div class="module__header">
                <div class="module__title"><?php echo $heading_title; ?></div>
                <a class="module__link" href="<?php echo $pvr_view_all_link; ?>"><?php echo $button_view_all; ?></a>
                <hr class="module__header__line">
            </div>
            <div class="box-content">
                <div class="video pvr-contentLayout">



                    <?php $i = 0;?>
                    <?php foreach ($reviews as $review) { ?>
                    <?php $reviewText = str_replace('&nbsp;', ' ', strip_tags(htmlspecialchars_decode($review['text'], ENT_QUOTES))); ?>
                    <?php if (empty($pvr_settings['use_colorbox'])) {
                        $reviewLink = 'href="' . $url->link('videopublisher/view', 'pvr_id=' . $review['pvr_id'], $pvr_ssl) . '" data-pvr-id="'.$review['pvr_id'].'"';
                    } else {
                        if (empty($pvr_settings['use_collections'])){
                            $reviewLink = 'onClick="cboxPVR('.$review['pvr_id'].');"';
                        } else {
                            $reviewLink = 'href="' . $url->link('videopublisher/view/separate', 'pvr_id=' . $review['pvr_id'], $pvr_ssl) . '" data-pvr-id="'.$review['pvr_id'].'"';
                        }
                    } ?>
                    <?php if ($i == 0) {?>
                    <!--FIRST 1-->
                    <div class="video__wrap">
                        <div class="video__item first">
                            <a class="video__item__link" rel="pvr-content-video-collection" <?php echo $reviewLink; ?> title="<?php echo $review['title']; ?>" alt="<?php echo $review['title']; ?>">
                                <img title="<?php echo $review['title']; ?>" alt="<?php echo $review['title']; ?>"  src="<?php echo $review['image_link']; ?>" />
                                <div class="video__item__overlay" onClick="ieCompatibility(<?php echo $review['pvr_id']; ?>);"></div>
                                <div class="video__item__title">
                                    <?php echo $review['title']; ?>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="video__wrap">
                        <!--                    начало след блока- обертки-->
                        <?php }  else {?>
                            <!--  LAST 4  -->
                            <div class="video__item">
                                <a class="video__item__link" rel="pvr-content-video-collection" <?php echo $reviewLink; ?> title="<?php echo $review['title']; ?>" alt="<?php echo $review['title']; ?>">
                                    <img title="<?php echo $review['title']; ?>" alt="<?php echo $review['title']; ?>"  src="<?php echo $review['image_link']; ?>" />
                                    <div class="video__item__overlay" onClick="ieCompatibility(<?php echo $review['pvr_id']; ?>);"></div>
                                    <div class="video__item__title">
                                        <?php echo $review['title']; ?>
                                    </div>
                                </a>
                            </div>
                        <?php } ?>
                        <?php  $i++; ?>
                        <?php } ?>
                    </div> <!--  wrapper-->
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
                                var elements = document.getElementsByClassName('pvr-iframe').length ? document.getElementsByClassName('pvr-iframe') : document.getElementsByClassName('pvr-html5');
                                if(document.defaultView.getComputedStyle(elements[0]).width.match(/^(\d+)\w+/) !== null ) {
                                    var computedWidth = document.defaultView.getComputedStyle(elements[0]).width.match(/^(\d+)\w+/)[1];
                                    var targetHeight = parseInt(computedWidth) * (9/16);
                                    elements[0].style.height = parseInt(targetHeight) + 'px';
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
                                var elements = document.getElementsByClassName('pvr-iframe').length ? document.getElementsByClassName('pvr-iframe') : document.getElementsByClassName('pvr-html5');
                                var computedWidth = document.defaultView.getComputedStyle(elements[0]).width.match(/^(\d+)\w+/)[1];
                                var targetHeight = parseInt(computedWidth) * (9/16);
                                elements[0].style.height = parseInt(targetHeight) + 'px';
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
                            <?php if (empty($pvr_settings['use_colorbox'])) { ?>
                            document.location = $('a[data-pvr-id="'+pvr_id+'"]').first().attr('href');
                            <?php } else { ?>
                            <?php if (empty($pvr_settings['use_collections'])) { ?>
                            cboxPVR(pvr_id);
                            <? } else { ?>
                            $('a[data-pvr-id="'+pvr_id+'"]').first().click();
                            <?php } ?>
                            <?php } ?>
                        }
                    }
                    //--></script>
            </div>
        </div>
    </div>
</div>

