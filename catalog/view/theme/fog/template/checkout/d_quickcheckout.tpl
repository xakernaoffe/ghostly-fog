<?php echo $header; ?>
<div class="checkoutPage">
    <div class="checkoutPage__header">
        <div class="container">
            <div class="category__title col-sm-8 col-xs-10"><?php echo $heading_title; ?></div>
        </div>
    </div>
    <div class="container" id="container">
        <?php if ($error_warning) { ?>
            <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
                <button type="button" class="close" data-dismiss="alert">&times;</button>
            </div>
        <?php } ?>
        <div class="row"><?php echo $column_left; ?>
            <?php if ($column_left && $column_right) { ?>
                <?php $class = 'col-sm-6'; ?>
            <?php } elseif ($column_left || $column_right) { ?>
                <?php $class = 'col-sm-9'; ?>
            <?php } else { ?>
                <?php $class = 'col-sm-12'; ?>
            <?php } ?>
            <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>

                <!-- Quick Checkout v4.0 by Dreamvention.com checkout/quickcheckout.tpl -->
                <?php echo $d_quickcheckout; ?>

                <?php echo $content_bottom; ?></div>
            <?php echo $column_right; ?></div>
    </div>
</div>
<?php echo $footer; ?>