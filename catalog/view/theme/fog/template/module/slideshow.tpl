<div class="slideshow">
    <div id="slideshow<?php echo $module; ?>" class="" >
        <?php foreach ($banners as $banner) { ?>
            <div class="item">

                <div class="container">

                    <?php if ($banner['link']) { ?>
                        <a href="<?php echo $banner['link']; ?>" class="productAdvt">
                            <div class="productAdvt__btn">
                                <div class="productAdvt__btn__icon"></div>
                                <div class="productAdvt__btn__text">Купить</div>
                            </div>
                            <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive"/>
                        </a>
                    <?php } else { ?>
                        <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>"
                             class="img-responsive"/>
                    <?php } ?>

                </div>

            </div>
        <?php } ?>
    </div>
</div>

<script type="text/javascript"><!--
    $('#slideshow<?php echo $module; ?>').slick({
        dots: false,
        infinite: true,
        speed: 500,
        autoplay: true,
        autoplaySpeed: 15000,
        adaptiveHeight: true,
        arrows:false,

    });
   // --></script>