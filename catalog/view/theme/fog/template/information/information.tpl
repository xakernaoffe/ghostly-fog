<?php echo $header; ?>
<div class="informationPage">
    <div class="informationPage__header">
        <div class="container">
            <div class="category__title col-sm-8"><?php echo $heading_title; ?></div>
            <ul class="breadcrumb col-sm-4 hidden-xs">
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
            <div id="content" class="<?php echo $class; ?> informationPage__wrap"><?php echo $content_top; ?>
                <div class="informationPage__content">
                    <?php echo $description; ?>
                </div>
                <?php echo $content_bottom; ?>
            </div>
            <?php echo $column_right; ?></div>
    </div>
</div>
<?php echo $footer; ?>
