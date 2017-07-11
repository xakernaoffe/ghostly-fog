<?php
$query = array();
if (!empty($pvr_settings['hide_related'])) $query['rel'] = '0';
if (!empty($pvr_settings['autoplay'])) $query['autoplay'] = '1';

$query_str = http_build_query($query);
?>
      
<?php if (!$isLocalVideo) { ?>
<iframe src="<?php echo !empty($pvr_settings['use_https']) ? str_replace('http:', 'https:', $review['video_link']) : $review['video_link']; ?><?php echo !empty($query_str) ? '?'.$query_str : '';?>" class="pvr-iframe" width="100%"></iframe>
<?php } else { ?>
<video class="pvr-html5" controls>
    <?php $localVideos = explode(',', $review['link']); ?>
    <?php foreach($localVideos as $video_file) { ?>
        <?php preg_match('/[\w\W]+\.(mp4|ogv|webm|3gp)$/', $video_file, $videoExtension); ?>
        
        <?php $videoType = ($videoExtension[1] == 'mp4') ? 'video/mp4' : (($videoExtension[1] == 'ogv') ? 'video/ogg' : (($videoExtension[1] == 'webm') ? 'video/webm' : (($videoExtension[1] == '3gp') ? 'video/3gp' : ''))); ?>
        <source src="<?php echo $video_file; ?>" type="<?php echo $videoType; ?>">
    <?php } ?>
    This is an HTML 5 video and you need a compatible browser.
</video>
<?php } ?>
<div class="videoPage__review video">
    <div class="pvr-header">
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
        <div class="videoPage__review__title"><?php echo $review['title']; ?></div>
    </div>
    <div class="mainProductReviewInfo">
        <div class="pvr-text"><?php echo $review['text']; ?></div>
        <?php if(!empty($review['author'])) { ?>
            <div class="pvr-author"><strong><?php echo $review['author']; ?></strong></div>
        <?php } ?>
        <?php if(!empty($review['date']) &&  $review['date'] != '0000-00-00') { ?>
            <div class="pvr-date"><strong><?php echo date('d M Y', strtotime($review['date'])); ?></strong></div>
        <?php } ?>
    </div>
    <?php if(!empty($pvr_settings['fb_comments'])) { ?>
        <div id="pvr-fb-comments">
            <div class="fb-comments" data-href="<?php echo $pvrUniqueUrl; ?>" data-num-posts="<?php echo !empty($pvr_settings['fb_comments_num']) ? $pvr_settings['fb_comments_num'] : '3';?>" data-colorscheme="<?php echo !empty($pvr_settings['fb_comments_colorscheme']) ? $pvr_settings['fb_comments_colorscheme'] : 'light';?>" data-order_by="<?php echo !empty($pvr_settings['fb_comments_order']) ? $pvr_settings['fb_comments_order'] : 'social';?>" data-width="100%"></div>
        </div>
    <?php } ?>
    <?php if (!empty($pvr_settings['related_products']) && !empty($related_products)) { ?>
        <h3><?php echo $text_related_products; ?></h3>
        <div class="row">
            <?php $i = 0; ?>
            <?php foreach ($related_products as $product) { ?>
                <?php if($pvr_settings['use_colorbox']) {
                    $class = "col-sm-4";
                } else {
                    $class = "col-sm-3";
                } ?>
                <div class="<?php echo $class; ?>">
                    <div class="product-thumb transition">
                        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
                        <div class="caption">
                            <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                            <p><?php echo $product['description']; ?></p>
                            <?php if ($product['rating']) { ?>
                                <div class="rating">
                                    <?php for ($i = 1; $i <= 5; $i++) { ?>
                                        <?php if ($product['rating'] < $i) { ?>
                                            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                        <?php } else { ?>
                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                        <?php } ?>
                                    <?php } ?>
                                </div>
                            <?php } ?>
                            <?php if ($product['price']) { ?>
                                <p class="price">
                                    <?php if (!$product['special']) { ?>
                                        <?php echo $product['price']; ?>
                                    <?php } else { ?>
                                        <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                                    <?php } ?>
                                    <?php if ($product['tax']) { ?>
                                        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                                    <?php } ?>
                                </p>
                            <?php } ?>
                        </div>
                        <div class="button-group">
                            <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span> <i class="fa fa-shopping-cart"></i></button>
                            <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
                            <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
                        </div>
                    </div>
                </div>

                <?php $i++; ?>
            <?php } ?>
        </div>

    <?php } ?>
</div>
