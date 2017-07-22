<?php echo $header; ?>
<div class="accountPage">
    <div class="accountPage__header">
        <div class="container">
            <div class="accountPage__title col-sm-8"><?php echo $heading_title; ?></div>
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
        <?php if ($success) { ?>
            <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
        <?php } ?>
        <div class="row"><?php echo $column_left; ?>
            <?php if ($column_left && $column_right) { ?>
                <?php $class = 'col-sm-6'; ?>
            <?php } elseif ($column_left || $column_right) { ?>
                <?php $class = 'col-sm-12'; ?>
            <?php } else { ?>
                <?php $class = 'col-sm-12'; ?>
            <?php } ?>
            <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
                <div class="accountPage__item col-sm-6 col-md-4">
                    <div class="accountPage__item__title"><?php echo $text_my_account; ?></div>
                    <ul class="accountPage__item__list">
                        <li><a href="<?php echo $edit; ?>" class="accountPage__item__list__link"><?php echo $text_edit; ?></a></li>
                        <li><a href="<?php echo $password; ?>" class="accountPage__item__list__link"><?php echo $text_password; ?></a></li>
                        <li><a href="<?php echo $address; ?>" class="accountPage__item__list__link"><?php echo $text_address; ?></a></li>
                    </ul>
                </div>
                <div class="accountPage__item col-sm-6 col-md-4">
                    <div class="accountPage__item__title"><?php echo $text_my_orders; ?></div>
                    <ul class="accountPage__item__list">
                        <li><a href="<?php echo $order; ?>" class="accountPage__item__list__link"><?php echo $text_order; ?></a></li>
                    </ul>
                </div>
                <div class="accountPage__item col-sm-12 col-md-4">
                    <?php echo $column_right; ?>
                </div>
                <?php echo $content_bottom; ?>
            </div>
        </div>
    </div>
</div>
<?php echo $footer; ?>
