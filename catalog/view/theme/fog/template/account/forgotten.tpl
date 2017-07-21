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
        <?php if ($error_warning) { ?>
            <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
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
                <div class="accountPage__note__title"><?php echo $heading_title; ?></div>
                <p class="accountPage__note__text><?php echo $text_email; ?></p>
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
                    <fieldset>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-email"><?php echo $entry_email; ?></label>
                            <div class="col-sm-10">
                                <input type="text" name="email" value="" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
                            </div>
                        </div>
                    </fieldset>
                    <div class="buttons clearfix">
                        <div class="pull-left"><a href="<?php echo $back; ?>" class="accountPage__back"><?php echo $button_back; ?></a></div>
                        <div class="pull-right">
                            <input type="submit" value="<?php echo $button_continue; ?>" class="accountPage__continue" />
                        </div>
                    </div>
                </form>
                <?php echo $content_bottom; ?></div>
            <div class="col-sm-12 col-md-4">
                <?php echo $column_right; ?>
            </div>
            </div>
    </div>
</div>

<?php echo $footer; ?>