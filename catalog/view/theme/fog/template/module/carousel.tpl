<div class="module">
    <div id="carousel<?php echo $module; ?>" class="manufacturer-slider">
        <?php foreach ($banners as $banner) { ?>
            <div class="item">
                <?php if ($banner['link']) { ?>
                    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
                <?php } else { ?>
                    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
                <?php } ?>
            </div>
        <?php } ?>
    </div>
</div>
<script type="text/javascript"><!--
$('#carousel<?php echo $module; ?>').slick({
    slidesToShow: 9,
    slidesToScroll: 1,
    autoplay:true,
    speed: 3000,
    arrows: true,
    prevArrow: '<span class="prev"></span>',
    nextArrow: '<span class="next"></span>',
	dots: false,
    responsive: [
        {
            breakpoint: 1200,
            settings: {
                slidesToShow: 9,
                slidesToScroll: 1,
                infinite: true
            }
        },
        {
            breakpoint: 992,
            settings: {
                slidesToShow: 6,
                slidesToScroll: 1
            }
        },
        {
            breakpoint: 600,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 1
            }
        },
        {
            breakpoint: 510,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1
            }
        }
    ]
});
--></script>