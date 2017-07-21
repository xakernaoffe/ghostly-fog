<div class="module">
    <div class="module__header">
        <div class="module__title"><?php echo $heading_title; ?></div>
        <a class="module__link hidden-sm" href="<?php echo $latest; ?>"><?php echo $text_link; ?></a>
        <hr class="module__header__line hidden-sm">
    </div>
    <div class="row">
        <div class="latest js-slider">
            <?php foreach ($products as $product) { ?>
                <div class="product">
<!--                    <div class="status-icon"></div>-->
                    <div class="product__thumb transition">
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
                                        <span class="product__price_new"><?php echo $product['special']; ?></span>
                                        <span class="product__price_old"><?php echo $product['price']; ?></span>
                                    <?php } ?>
                                </p>
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
                            <button type="button" class="product__btn__button js-addToCart" data-id="<?php echo $product['product_id']; ?>">
                                <span class="product__btn__button__icon"></span>
                                <span class="product__btn__button__text hidden-xs"><?php echo $button_cart; ?></span>
                            </button>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</div>


