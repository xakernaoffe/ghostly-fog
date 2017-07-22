<?php echo $header; ?>
<div class="latestPage">
    <div class="latestPage__header">
        <div class="container">
            <div class="latestPage__title col-sm-8 col-xs-8"><?php echo $heading_title; ?></div>
            <ul class="breadcrumb col-sm-4 hidden-xs ">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                    <li class="breadcrumb__item">
                        <a href="<?php echo $breadcrumb['href']; ?>" class="breadcrumb__link"><?php echo $breadcrumb['text']; ?></a>
                    </li>
                <?php } ?>
            </ul>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <?php echo $column_left; ?>
            <?php echo $column_right; ?>
            <div id="content">
                <?php echo $content_top; ?>
                <?php echo $content_bottom; ?>
            </div>
        </div>
    </div>
</div>
<?php echo $footer; ?>
<script>
    $(document).ready(function(){
        $('.latestPage .js-slider').slick('unslick');
    });
</script>
