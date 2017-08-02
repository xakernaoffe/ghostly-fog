<!--</div>-->
<!--</div>-->
<!--</div>-->


<div class="slideshow">
    <div id="slideshow<?php echo $module; ?>" class="owl-carousel" style="opacity: 1;">
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


<!--<div class="container">-->
<!--    <div class="row">-->
<!--        <div class="col-sm-12">-->

<script type="text/javascript"><!--
    $('#slideshow<?php echo $module; ?>').owlCarousel({
        items: 6,
        autoPlay: 15000,
        singleItem: true,
        pagination: false
    });
    --></script>