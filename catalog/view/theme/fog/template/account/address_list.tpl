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
        <?php if ($error_warning) { ?>
            <div class="alert alert-warning"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
        <?php } ?>
        <div class="row"><?php echo $column_left; ?>
            <?php if ($column_left && $column_right) { ?>
                <?php $class = 'col-sm-6'; ?>
            <?php } elseif ($column_left || $column_right) { ?>
                <?php $class = 'col-sm-12 col-md-8'; ?>
            <?php } else { ?>
                <?php $class = 'col-sm-12'; ?>
            <?php } ?>
            <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
                <?php if ($addresses) { ?>
                    <table class="table table-bordered table-hover">
                        <?php foreach ($addresses as $result) { ?>
                            <tr>
                                <td class="text-left"><?php echo $result['address']; ?></td>
                                <td class="text-right"><a href="<?php echo $result['update']; ?>" class="accountPage__edit"><?php echo $button_edit; ?></a><a href="<?php echo $result['delete']; ?>" class="accountPage__delete"><?php echo $button_delete; ?></a></td>
                            </tr>
                        <?php } ?>
                    </table>
                <?php } else { ?>
                    <p><?php echo $text_empty; ?></p>
                <?php } ?>
                <div class="buttons clearfix">
                    <div class="pull-left"><a href="<?php echo $back; ?>" class="accountPage__back"><?php echo $button_back; ?></a></div>
                    <div class="pull-right"><a href="<?php echo $add; ?>" class="accountPage__continue"><?php echo $button_new_address; ?></a></div>
                </div>
                <?php echo $content_bottom; ?></div>
            <div class="col-sm-12 col-md-4">
                <?php echo $column_right; ?>
            </div>
            </div>
    </div>
</div>
<?php echo $footer; ?>