<?php echo $header; ?>
<div class="accountPage">
    <div class="accountPage__header">
        <div class="container">
            <div class="accountPage__title col-sm-8"><?php echo $heading_title; ?></div>
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
                <?php $class = 'col-sm-8'; ?>
            <?php } else { ?>
                <?php $class = 'col-sm-12'; ?>
            <?php } ?>
            <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
                <h1><?php echo $heading_title; ?></h1>
                <?php echo $text_message; ?>
                <div class="buttons">
                    <div class="pull-right"><a href="<?php echo $continue; ?>" class="accountPage__continue"><?php echo $button_continue; ?></a></div>
                </div>
                <?php echo $content_bottom; ?></div>
            <div class="col-sm-4">
                <?php echo $column_right; ?>
            </div>
            </div>
    </div>
</div>

<?php echo $footer; ?>