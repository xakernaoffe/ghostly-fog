<?php echo $header; ?>
<div class="category">
    <div class="category__header">
        <div class="container">
            <div class="category__title col-sm-8"><?php echo $heading_title; ?></div>
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
                <?php $class = 'col-lg-9 col-md-8'; ?>
            <?php } else { ?>
                <?php $class = 'col-sm-12'; ?>
            <?php } ?>
            <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
                <?php if ($products) { ?>
                    <div class="category__sort">
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
                            <button type="button" id="list-view" class="category__sort__buttons__item active" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
                            <button type="button" id="grid-view" class="category__sort__buttons__item" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <?php foreach ($products as $product) { ?>
                            <div class="product product-list col-xs-12">
                                <div class="status-icon"></div>
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
                                            <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');" class="product__btn__button js-addToCart"><span class="product__btn__button__icon"></span><span class="product__btn__button__text hidden-xs"><?php echo $button_cart; ?></span></button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php } ?>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 text-center"><?php echo $pagination; ?></div>
                    </div>
                <?php } ?>
                <?php if (!$categories && !$products) { ?>
                    <p class="category__empty"><?php echo $text_empty; ?></p>
                    <div class="buttons">
                        <a href="<?php echo $continue; ?>" class="category__continue"><?php echo $button_continue; ?></a>
                    </div>
                <?php } ?>
                <?php echo $content_bottom; ?></div>
            <?php echo $column_right; ?></div>
    </div>
</div>

<?php echo $footer; ?>
