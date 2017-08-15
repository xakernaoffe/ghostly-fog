<?php echo $header; ?>
<div class="searchPage category">
    <div class="searchPage__header">
        <div class="container">
            <div class="searchPage__title col-sm-8"><?php echo $text_search; ?></div>
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
                <div class="searchPage__result"><?php echo $heading_title; ?></div>
                <label class="control-label searchPage__criterion" for="input-search"><?php echo $entry_search; ?></label>
                <div class="row">
                    <div class="col-sm-4">
                        <input type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_keyword; ?>" id="input-search" class="form-control" />
                    </div>
                    <div class="col-sm-4">
                        <select name="category_id" class="form-control">
                            <option value="0"><?php echo $text_category; ?></option>
                            <?php foreach ($categories as $category_1) { ?>
                                <?php if ($category_1['category_id'] == $category_id) { ?>
                                    <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
                                <?php } else { ?>
                                    <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
                                <?php } ?>
                                <?php foreach ($category_1['children'] as $category_2) { ?>
                                    <?php if ($category_2['category_id'] == $category_id) { ?>
                                        <option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
                                    <?php } else { ?>
                                        <option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
                                    <?php } ?>
                                    <?php foreach ($category_2['children'] as $category_3) { ?>
                                        <?php if ($category_3['category_id'] == $category_id) { ?>
                                            <option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
                                        <?php } else { ?>
                                            <option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
                                        <?php } ?>
                                    <?php } ?>
                                <?php } ?>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="col-sm-4 checkbox-wrap">
                        <label class="checkbox-inline checkbox-container">
                            <?php if ($sub_category) { ?>
                                <input type="checkbox" name="sub_category" value="1" checked="checked" />
                            <?php } else { ?>
                                <input type="checkbox" name="sub_category" value="1" />
                            <?php } ?>
                            <?php echo $text_sub_category; ?></label>
                        <p class="checkbox-container">
                            <label class="checkbox-inline">
                                <?php if ($description) { ?>
                                    <input type="checkbox" name="description" value="1" id="description" checked="checked" />
                                <?php } else { ?>
                                    <input type="checkbox" name="description" value="1" id="description" />
                                <?php } ?>
                                <?php echo $entry_description; ?></label>
                        </p>
                    </div>
                </div>

                <input type="button" value="<?php echo $button_search; ?>" id="button-search" class="searchPage__btn" />
                <div class="searchPage__result"><?php echo $text_result; ?></div>
                <?php if ($products) { ?>
                    <div class="category__sort row">
                        <div class="category__sort__select">
                            <label class="category__sort__select__title" for="input-sort"><?php echo $text_sort; ?></label>
                            <select id="input-sort" class="form-control category__sort__select__field" onchange="location = this.value;">
                                <?php foreach ($sorts as $sorts) { ?>
                                    <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                                        <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                                    <?php } else { ?>
                                        <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                                    <?php } ?>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="category__sort__buttons">
                            <button type="button" id="list-view" class="category__sort__buttons__item active"><i class="fa fa-th-list"></i></button>
                            <button type="button" id="grid-view" class="category__sort__buttons__item"><i class="fa fa-th"></i></button>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <?php foreach ($products as $product) { ?>
                            <div class="product product-list col-xs-12">
                                <div class="status-icon">
                                    <?php if($product['labels']) { ?>
                                        <?php foreach ($product['labels'] as $label) { ?>
                                            <div class="<?php echo $label['position']; ?>"><img src="<?php echo HTTP_SERVER.'image/'.$label['image']; ?>"></div>
                                        <?php } ?>
                                    <?php } ?>
                                </div>
                                <div class="product__thumb">
                                    <div class="product__thumb__image">
                                        <a href="<?php echo $product['href']; ?>">
                                            <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" />
                                        </a>
                                    </div>
                                    <div class="product__thumb__caption">
                                        <a href="<?php echo $product['href']; ?>" class="product__name"><?php echo $product['name']; ?></a>
                                        <?php if ($product['price']) { ?>
                                            <p class="product__price">
                                                <?php if (!$product['special']) { ?>
                                                    <?php echo $product['price']; ?>
                                                <?php } else { ?>
                                                    <span class="product__price_new"><?php echo $product['special']; ?></span> <span class="product__price_old"><?php echo $product['price']; ?></span>
                                                <?php } ?>
                                            </p>
                                        <?php } ?>
                                        <div class="product__attribute">
                                            <?php if($product['attribute_groups']) { ?>
                                                <?php foreach($product['attribute_groups'] as $attribute_group) { ?>
                                                    <?php if(!strpos($attribute_group['name'], "—")) {?>
                                                        <?php foreach($attribute_group['attribute'] as $attribute) { ?>
                                                            <div class="product__attribute__item"><?php echo $attribute['name']; ?>:&nbsp;<?php echo $attribute['text']; ?></div>
                                                        <?php } ?>
                                                    <?php } ?>
                                                <?php } ?>
                                            <?php } ?>
                                        </div>
                                        <div class="product__btn">
                                            <div class="product__btn__quantity js-quantity">
                                                <div class="quantity__buttons ">
                                                    <span class="quantity__buttons__up js-plus-qty"></span>
                                                    <span class="quantity__buttons__down js-minus-qty"></span>
                                                </div>
                                                <input type="text" name="quantity" value="1" size="2" class="product__btn__field js-input-quantity" />
                                            </div>
                                            <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');" class="product__btn__button js-addToCart"><span class="product__btn__button__icon"></span><span class="product__btn__button__text hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php } ?>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
                        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
                    </div>
                <?php } else { ?>
                    <p class="searchPage__empty"><?php echo $text_empty; ?></p>
                <?php } ?>
                <?php echo $content_bottom; ?></div>
            <?php echo $column_right; ?></div>
    </div>
</div>

<script type="text/javascript"><!--
$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';

	var search = $('#content input[name=\'search\']').prop('value');

	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}

	var category_id = $('#content select[name=\'category_id\']').prop('value');

	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}

	var sub_category = $('#content input[name=\'sub_category\']:checked').prop('value');

	if (sub_category) {
		url += '&sub_category=true';
	}

	var filter_description = $('#content input[name=\'description\']:checked').prop('value');

	if (filter_description) {
		url += '&description=true';
	}

	location = url;
});

$('#content input[name=\'search\']').bind('keydown', function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('select[name=\'category_id\']').on('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').prop('disabled', true);
	} else {
		$('input[name=\'sub_category\']').prop('disabled', false);
	}
});

$('select[name=\'category_id\']').trigger('change');
--></script>
<?php echo $footer; ?>