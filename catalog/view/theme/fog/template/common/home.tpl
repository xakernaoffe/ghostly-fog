<?php echo $header; ?>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
        <?php echo $content_top; ?>

        <?php echo $content_bottom; ?>
        <div style="height: 850px;">
            <iframe src='/inwidget/index.php?width=1100&view=8&toolbar=false&preview=large' scrolling='no' frameborder='no' style='border:none;width:100%;height:850px;overflow:hidden;'>

            </iframe>
        </div>
    </div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>