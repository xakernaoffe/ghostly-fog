<div class="module">
    <div class="page-title"><?php echo $heading_title; ?></div>
    <a href="<?php echo $latest; ?>"><?php echo $text_link; ?></a>
    <div class="row">
        <div class="latest">
            <?php foreach ($products as $product) { ?>
                <div class="product col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="status-icon"></div>
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
                            <div class="product__quantity">
                                <input type="text" name="quantity" value="<?php echo $minimum; ?>" id="input-quantity" class="product__quantity" />
                            </div>
                            <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');">
                                <span class="product__btn__icon"></span>
                                <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span>
                            </button>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</div>

