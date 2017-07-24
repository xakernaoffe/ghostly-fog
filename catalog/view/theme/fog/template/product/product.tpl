<?php echo $header; ?>
<div class="productPage">
    <div class="productPage__header">
        <div class="container">
            <div class="productPage__title col-sm-8 col-xs-8"><?php echo $heading_title; ?></div>
            <ul class="breadcrumb col-sm-4 col-xs-4 hidden-xs ">
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
                            <ul class="productPage__thumbnails__list js-popup">
                                <?php if ($thumb) { ?>
                                    <li class="productPage__thumbnails__item" >
                                        <a class="productPage__thumbnails__image js-popup" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>">
                                            <img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
                                            <span class="productPage__thumbnails__icon">
                                        <i class="fa fa-expand fa-lg" aria-hidden="true"></i>
                                    </span>
                                        </a>
                                    </li>
                                <?php } ?>
                            </ul>
                                <?php if ($images) { ?>
                                <ul class="productPage__thumbnails__list slider js-popup">
                                    <?php foreach ($images as $image) { ?>
                                        <li class="productPage__thumbnails__item additional">
                                            <a class="productPage__thumbnails__link" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>">
                                                <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
                                            </a></li>
                                    <?php } ?>
                                <?php } ?>
                            </ul>
                        <?php } ?>
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
                                            <span class="productPage__info__star"></span>
                                        <?php } else { ?>
                                            <span class="productPage__info__star_yellow"></span>
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
                        <div id="product" class="productPage__info__item">
                            <div class="productPage__info__item">
                                <div class="product__btn">
                                    <div class="product__btn__quantity js-quantity">
                                        <div class="quantity__buttons ">
                                            <span class="quantity__buttons__up js-plus-qty"></span>
                                            <span class="quantity__buttons__down js-minus-qty"></span>
                                        </div>
                                        <input type="text"
                                               name="quantity"
                                               value="<?php echo $minimum; ?>"
                                               id="input-quantity"
                                               size="2"
                                               class="product__btn__field js-input-quantity" />
                                    </div>
                                    <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                                    <button type="button"
                                            id="button-cart"
                                            data-loading-text="<?php echo $text_loading; ?>"
                                            class="product__btn__button"
                                            data-id="<?php echo $product_id; ?>">
                                        <span class="product__btn__button__icon"></span>
                                        <span class="product__btn__button__text hidden-xs hidden-sm"><?php echo $button_cart; ?></span>
                                    </button>
                                </div>
                            </div>
                            <?php if ($options) { ?>
                                <?php foreach ($options as $option) { ?>
                                    <?php if ($option['type'] == 'select') { ?>
                                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                            <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                            <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                                                <option value=""><?php echo $text_select; ?></option>
                                                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                                    <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                                                        <?php if ($option_value['price']) { ?>
                                                            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                                        <?php } ?>
                                                    </option>
                                                <?php } ?>
                                            </select>
                                        </div>
                                    <?php } ?>
                                    <?php if ($option['type'] == 'radio') { ?>
                                        <div class="productPage__options form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                            <label class="productPage__options__title control-label"><?php echo $option['name']; ?></label>
                                            <div class="productPage__options__wrap" id="input-option<?php echo $option['product_option_id']; ?>">
                                                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                                    <div class="productPage__options__item">
                                                        <input class="productPage__options__item__field" type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="<?php echo $option_value['product_option_value_id']; ?>"/>
                                                        <label for="<?php echo $option_value['product_option_value_id']; ?>" class="productPage__options__item__name"><span><?php echo $option_value['name']; ?></span></label>
                                                    </div>
                                                <?php } ?>
                                            </div>
                                        </div>
                                    <?php } ?>
                                    <?php if ($option['type'] == 'checkbox') { ?>
                                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                            <label class="control-label"><?php echo $option['name']; ?></label>
                                            <div id="input-option<?php echo $option['product_option_id']; ?>">
                                                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                                                            <?php echo $option_value['name']; ?>
                                                            <?php if ($option_value['price']) { ?>
                                                                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                                            <?php } ?>
                                                        </label>
                                                    </div>
                                                <?php } ?>
                                            </div>
                                        </div>
                                    <?php } ?>
                                    <?php if ($option['type'] == 'image') { ?>
                                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                            <label class="control-label"><?php echo $option['name']; ?></label>
                                            <div id="input-option<?php echo $option['product_option_id']; ?>">
                                                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                                    <div class="radio">
                                                        <label>
                                                            <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                                                            <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> <?php echo $option_value['name']; ?>
                                                            <?php if ($option_value['price']) { ?>
                                                                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                                            <?php } ?>
                                                        </label>
                                                    </div>
                                                <?php } ?>
                                            </div>
                                        </div>
                                    <?php } ?>
                                    <?php if ($option['type'] == 'text') { ?>
                                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                            <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                                        </div>
                                    <?php } ?>
                                    <?php if ($option['type'] == 'textarea') { ?>
                                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                            <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                            <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
                                        </div>
                                    <?php } ?>
                                    <?php if ($option['type'] == 'file') { ?>
                                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                            <label class="control-label"><?php echo $option['name']; ?></label>
                                            <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
                                            <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
                                        </div>
                                    <?php } ?>
                                    <?php if ($option['type'] == 'date') { ?>
                                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                            <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                            <div class="input-group date">
                                                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                                                <span class="input-group-btn">
                <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                </span></div>
                                        </div>
                                    <?php } ?>
                                    <?php if ($option['type'] == 'datetime') { ?>
                                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                            <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                            <div class="input-group datetime">
                                                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                                                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
                                        </div>
                                    <?php } ?>
                                    <?php if ($option['type'] == 'time') { ?>
                                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                            <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                            <div class="input-group time">
                                                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                                                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
                                        </div>
                                    <?php } ?>
                                <?php } ?>
                            <?php } ?>
                            <?php if ($recurrings) { ?>
                                <hr>
                                <h3><?php echo $text_payment_recurring ?></h3>
                                <div class="form-group required">
                                    <select name="recurring_id" class="form-control">
                                        <option value=""><?php echo $text_select; ?></option>
                                        <?php foreach ($recurrings as $recurring) { ?>
                                            <option value="<?php echo $recurring['recurring_id'] ?>"><?php echo $recurring['name'] ?></option>
                                        <?php } ?>
                                    </select>
                                    <div class="help-block" id="recurring-description"></div>
                                </div>
                            <?php } ?>
                            <?php if ($minimum > 1) { ?>
                                <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
                            <?php } ?>
                        </div>





                        <?php if($attribute_groups) { ?>
                        <div class="productPage__info__item">
                            <div class="productPage__info__item__header">
                                <?php echo $text_attribute; ?>
                            </div>
                                <?php foreach($attribute_groups as $attribute_group) { ?>
                                    <?php if(!strpos($attribute_group['name'], "—")) {?>
                                        <?php foreach($attribute_group['attribute'] as $attribute) { ?>
                                            <div class="product__attribute__item"><?php echo $attribute['name']; ?>:&nbsp;<?php echo $attribute['text']; ?></div>
                                        <?php } ?>
                                    <?php } ?>
                                <?php } ?>
                        </div>
                        <?php } ?>
                        <div class="productPage__info__item">
                            <!-- AddThis Button BEGIN -->
                            <script src="//yastatic.net/es5-shims/0.0.2/es5-shims.min.js"></script>
                            <script src="//yastatic.net/share2/share.js"></script>
                            <div class="ya-share2" data-services="facebook,twitter,gplus,vkontakte" data-counter=""></div>
                            <!-- AddThis Button END -->
                        </div>
                    </div>
                </div>
                <div class="productPage__navigation">
                    <ul class="productPage__navigation__list">
                        <li class="productPage__navigation__item active">
                            <a href="#tab-description" data-toggle="tab" class="productPage__navigation__item__link"><?php echo $tab_description; ?></a>
                        </li>
                        <?php if ($review_status) { ?>
                            <li class="productPage__navigation__item">
                                <a href="#tab-review" data-toggle="tab" class="productPage__navigation__item__link"><?php echo $tab_review; ?></a>
                            </li>
                        <?php } ?>
                    </ul>
                    <div class="productPage__navigation__content tab-content">
                        <div class="productPage__description tab-pane active" id="tab-description">
                            <?php echo $description; ?>
                        </div>
                        <?php if ($review_status) { ?>
                            <div class="productPage__reviews tab-pane" id="tab-review">
                                <form class="form-horizontal reviews__form" id="form-review">
                                    <div id="review"></div>
                                    <div class="reviews__form__item">
                                        <label class="reviews__form__item__name"><?php echo $entry_rating; ?></label>
                                        <div class="reviews__form__item__wrap clearfix">
                                            <input type="radio" name="rating" value="1" id="star1" class="reviews__form__item__star-field" />
                                            <label for="star1" class="reviews__form__item__star"></label>
                                            <input type="radio" name="rating" value="2" id="star2" class="reviews__form__item__star-field" />
                                            <label for="star2" class="reviews__form__item__star"></label>
                                            <input type="radio" name="rating" value="3" id="star3" class="reviews__form__item__star-field" />
                                            <label for="star3" class="reviews__form__item__star"></label>
                                            <input type="radio" name="rating" value="4" id="star4" class="reviews__form__item__star-field" />
                                            <label for="star4" class="reviews__form__item__star"></label>
                                            <input type="radio" name="rating" value="5" id="star5" class="reviews__form__item__star-field" />
                                            <label for="star5" class="reviews__form__item__star"></label>
                                        </div>
                                    </div>
                                    <?php if ($review_guest) { ?>
                                            <div class="reviews__form__item">
                                                <label class="reviews__form__item__name" for="input-review"><?php echo $entry_review; ?></label>
                                                <textarea name="text" rows="5" id="input-review" class="reviews__form__item__text"></textarea>
                                            </div>
                                            <div class="reviews__form__wrap">
                                                <div class="reviews__form__wrap__item">
                                                    <input type="text" name="name" value="" id="input-name" class="reviews__form__wrap__item__field" placeholder="<?php echo $entry_name; ?>" />
                                                </div>
                                                <div class="reviews__form__wrap__item">
                                                    <input type="text" name="email" value="" id="input-email" class="reviews__form__wrap__item__field" placeholder="<?php echo $entry_email; ?>"/>
                                                </div>
                                                <?php echo $captcha; ?>
                                                <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="reviews__form__btn"><?php echo $send_btn; ?></button>
                                            </div>

                                    <?php } else { ?>
                                        <?php echo $text_login; ?>
                                    <?php } ?>
                                </form>
                            </div>
                        <?php } ?>
                    </div>
                </div>
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
    alert('click');
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
		    alert('success');
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
                alert('error');
				if (json['error']['option']) {
                    alert('error-option');
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

    // slick slider
    $('.productPage .slider').slick({
        infinite: true,
        slidesToShow: 4,
        slidesToScroll: 1,
        responsive: [
            {
                breakpoint: 1200,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 1,
                    infinite: true
                }
            },
            {
                breakpoint: 992,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 1
                }
            },
            {
                breakpoint: 600,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 1
                }
            },
            {
                breakpoint: 510,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 1
                }
            }
        ]
    });
});
//--></script>
<?php echo $footer; ?>
