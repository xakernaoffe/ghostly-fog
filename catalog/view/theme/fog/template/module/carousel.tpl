<div class="module">
    <div id="carousel<?php echo $module; ?>" class="owl-carousel">
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
$('#carousel<?php echo $module; ?>').owlCarousel({
	items: 9,
	autoPlay: 3000,
	navigation: true,
	navigationText: ['<span class="prev"></span>', '<span class="next"></span>'],
	pagination: false
});
--></script>