<?php echo $header; ?>
<div class="productPage">
    <div class="productPage__header">
        <div class="container">
            <div class="productPage__title col-sm-8"><?php echo $heading_title; ?></div>
            <ul class="breadcrumb col-sm-4">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                    <li class="breadcrumb__item">
                        <a href="<?php echo $breadcrumb['href']; ?>" class="breadcrumb__link"><?php echo $breadcrumb['text']; ?></a>
                    </li>
                <?php } ?>
            </ul>
        </div>
    </div>
    <div class="container productPage__content">
        <div class="row"><?php echo $column_left; ?>
            <?php if ($column_left && $column_right) { ?>
                <?php $class = 'col-sm-6'; ?>
            <?php } elseif ($column_left || $column_right) { ?>
                <?php $class = 'col-sm-9'; ?>
            <?php } else { ?>
                <?php $class = 'col-sm-12'; ?>
            <?php } ?>
            <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
                <div class="productPage__wrap row">
                    <?php if ($column_left || $column_right) { ?>
                        <?php $class = 'col-sm-12'; ?>
                    <?php } else { ?>
                        <?php $class = 'col-sm-5'; ?>
                    <?php } ?>
                    <div class="<?php echo $class; ?> productPage__thumbnails">
                        <?php if ($thumb || $images) { ?>
                                <?php if ($thumb) { ?>
                                <a class="productPage__thumbnails__image js-popup" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>">
                                    <img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
                                    <span class="productPage__thumbnails__icon">
                                        <i class="fa fa-expand fa-lg" aria-hidden="true"></i>
                                    </span>
                                </a>
                                <?php } ?>
                                <?php if ($images) { ?>
                                <ul class="productPage__thumbnails__list js-slider js-popup">
                                    <?php foreach ($images as $image) { ?>
                                        <li class="productPage__thumbnails__item additional">
                                            <a class="productPage__thumbnails__link" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>">
                                                <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
                                            </a></li>
                                    <?php } ?>
                                <?php } ?>
                            </ul>
                        <?php } ?>










                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tab-description" data-toggle="tab"><?php echo $tab_description; ?></a></li>
                            <?php if ($attribute_groups) { ?>
                                <li><a href="#tab-specification" data-toggle="tab"><?php echo $tab_attribute; ?></a></li>
                            <?php } ?>
                            <?php if ($review_status) { ?>
                                <li><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>
                            <?php } ?>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tab-description"><?php echo $description; ?></div>
                            <?php if ($attribute_groups) { ?>
                                <div class="tab-pane" id="tab-specification">
                                    <table class="table table-bordered">
                                        <?php foreach ($attribute_groups as $attribute_group) { ?>
                                            <thead>
                                            <tr>
                                                <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                                                <tr>
                                                    <td><?php echo $attribute['name']; ?></td>
                                                    <td><?php echo $attribute['text']; ?></td>
                                                </tr>
                                            <?php } ?>
                                            </tbody>
                                        <?php } ?>
                                    </table>
                                </div>
                            <?php } ?>
                            <?php if ($review_status) { ?>
                                <div class="tab-pane" id="tab-review">
                                    <form class="form-horizontal" id="form-review">
                                        <div id="review"></div>
                                        <h2><?php echo $text_write; ?></h2>
                                        <?php if ($review_guest) { ?>
                                            <div class="form-group required">
                                                <div class="col-sm-12">
                                                    <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                                                    <input type="text" name="name" value="" id="input-name" class="form-control" />
                                                </div>
                                            </div>
                                            <div class="form-group required">
                                                <div class="col-sm-12">
                                                    <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                                                    <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                                                    <div class="help-block"><?php echo $text_note; ?></div>
                                                </div>
                                            </div>
                                            <div class="form-group required">
                                                <div class="col-sm-12">
                                                    <label class="control-label"><?php echo $entry_rating; ?></label>
                                                    &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                                                    <input type="radio" name="rating" value="1" />
                                                    &nbsp;
                                                    <input type="radio" name="rating" value="2" />
                                                    &nbsp;
                                                    <input type="radio" name="rating" value="3" />
                                                    &nbsp;
                                                    <input type="radio" name="rating" value="4" />
                                                    &nbsp;
                                                    <input type="radio" name="rating" value="5" />
                                                    &nbsp;<?php echo $entry_good; ?></div>
                                            </div>
                                            <?php echo $captcha; ?>
                                            <div class="buttons clearfix">
                                                <div class="pull-right">
                                                    <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $button_continue; ?></button>
                                                </div>
                                            </div>
                                        <?php } else { ?>
                                            <?php echo $text_login; ?>
                                        <?php } ?>
                                    </form>
                                </div>
                            <?php } ?>
                        </div>
                    </div>
                    <?php if ($column_left || $column_right) { ?>
                        <?php $class = 'col-sm-6'; ?>
                    <?php } else { ?>
                        <?php $class = 'col-sm-7'; ?>
                    <?php } ?>
                    <div class="<?php echo $class; ?> productPage__info">
                        <div class="productPage__info__item">
                            <div class="productPage__info__name"><?php echo $heading_title; ?></div>
                            <?php if ($review_status) { ?>
                                <div class="productPage__info__rating">
                                    <?php for ($i = 1; $i <= 5; $i++) { ?>
                                        <?php if ($rating < $i) { ?>
                                            <span class="fa fa-stack">
                                                <i class="fa fa-star-o fa-stack-1x"></i>
                                            </span>
                                        <?php } else { ?>
                                            <span class="fa fa-stack">
                                                <i class="fa fa-star fa-stack-1x"></i>
                                                <i class="fa fa-star-o fa-stack-1x"></i>
                                            </span>
                                        <?php } ?>
                                    <?php } ?>
                                    <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;" class="productPage__info__rating__link"><?php echo $reviews; ?></a>
                                </div>
                            <?php } ?>
                        </div>
                        <div class="productPage__info__item">
                            <?php if ($price) { ?>
                                <div class="productPage__info__price">
                                    <?php if (!$special) { ?>
                                            <span class="productPage__info__price_new"><?php echo $price; ?></span>
                                    <?php } else { ?>
                                        <span class="productPage__info__price_old" ><?php echo $price; ?></span>
                                        <span class="productPage__info__price_new"><?php echo $special; ?></span>
                                    <?php } ?>
                                </div>
                            <?php } ?>
                        </div>

                        <div class="productPage__info__item">
                            <div class="product__btn">
                                <div class="product__btn__quantity js-quantity">
                                    <div class="quantity__buttons ">
                                        <span class="quantity__buttons__up js-plus-qty"></span>
                                        <span class="quantity__buttons__down js-minus-qty"></span>
                                    </div>
                                    <input type="text" name="quantity" value="1" size="2" class="product__btn__field js-input-quantity" />
                                </div>
                                <button type="button" class="product__btn__button js-addToCart" data-id="<?php echo $product_id; ?>">
                                    <span class="product__btn__button__icon"></span>
                                    <span class="product__btn__button__text hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span>
                                </button>
                            </div>
                            <?php if ($minimum > 1) { ?>
                                <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
                            <?php } ?>
                        </div>
                        <div class="productPage__info__item">
                            <?php if ($options) { ?>
                                <?php foreach ($options as $option) { ?>
                                    <?php if ($option['type'] == 'radio') { ?>
                                        <div class="productPage__options form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                            <label class="productPage__options__title control-label"><?php echo $option['name']; ?></label>
                                            <div class="productPage__options__wrap" id="input-option<?php echo $option['product_option_id']; ?>">
                                                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                                    <div class="productPage__options__item">
                                                            <input class="productPage__options__item__field" type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                                                        <label class="productPage__options__item__name"><?php echo $option_value['name']; ?></label>
                                                    </div>
                                                <?php } ?>
                                            </div>
                                        </div>
                                    <?php } ?>
                                <?php } ?>
                            <?php } ?>
                        </div>
                        <div class="productPage__info__item">
                            <div class="productPage__info__item__header">
                                <?php echo $text_attribute; ?>
                            </div>
                            <?php if($attribute_groups) { ?>
                                <?php foreach($attribute_groups as $attribute_group) { ?>
                                    <?php if(!strpos($attribute_group['name'], "—")) {?>
                                        <?php foreach($attribute_group['attribute'] as $attribute) { ?>
                                            <div class="product__attribute__item"><?php echo $attribute['name']; ?>:&nbsp;<?php echo $attribute['text']; ?></div>
                                        <?php } ?>
                                    <?php } ?>
                                <?php } ?>
                            <?php } ?>
                        </div>
                        <div class="productPage__info__item">
                            <!-- AddThis Button BEGIN -->
                            <div class="addthis_toolbox addthis_default_style"><a class="addthis_button_facebook_like" fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_pinterest_pinit"></a> <a class="addthis_counter addthis_pill_style"></a></div>
                            <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script>
                            <!-- AddThis Button END -->
                        </div>
                    </div>
                </div>
                <?php if ($products) { ?>
                    <h3><?php echo $text_related; ?></h3>
                    <div class="row">
                        <?php $i = 0; ?>
                        <?php foreach ($products as $product) { ?>
                            <?php if ($column_left && $column_right) { ?>
                                <?php $class = 'col-lg-6 col-md-6 col-sm-12 col-xs-12'; ?>
                            <?php } elseif ($column_left || $column_right) { ?>
                                <?php $class = 'col-lg-4 col-md-4 col-sm-6 col-xs-12'; ?>
                            <?php } else { ?>
                                <?php $class = 'col-lg-3 col-md-3 col-sm-6 col-xs-12'; ?>
                            <?php } ?>
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
                            <?php if (($column_left && $column_right) && ($i % 2 == 0)) { ?>
                                <div class="clearfix visible-md visible-sm"></div>
                            <?php } elseif (($column_left || $column_right) && ($i % 3 == 0)) { ?>
                                <div class="clearfix visible-md"></div>
                            <?php } elseif ($i % 4 == 0) { ?>
                                <div class="clearfix visible-md"></div>
                            <?php } ?>
                            <?php $i++; ?>
                        <?php } ?>
                    </div>
                <?php } ?>
                <?php if ($tags) { ?>
                    <p><?php echo $text_tags; ?>
                        <?php for ($i = 0; $i < count($tags); $i++) { ?>
                            <?php if ($i < (count($tags) - 1)) { ?>
                                <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
                            <?php } else { ?>
                                <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
                            <?php } ?>
                        <?php } ?>
                    </p>
                <?php } ?>
                <?php echo $content_bottom; ?></div>
            <?php echo $column_right; ?></div>
    </div>
</div>

<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();

			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('#cart > button').html('<span id="cart-total"><i class="fa fa-shopping-cart"></i> ' + json['total'] + '</span>');

				$('html, body').animate({ scrollTop: 0 }, 'slow');

				$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').attr('value', json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});

$(document).ready(function() {
	$('.js-popup').magnificPopup({
		type:'image',
		delegate: 'a',
		gallery: {
			enabled:true
		}
	});
});
//--></script>
<?php echo $footer; ?>
