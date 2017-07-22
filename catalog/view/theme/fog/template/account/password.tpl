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
        <div class="row"><?php echo $column_left; ?>
            <?php if ($column_left && $column_right) { ?>
                <?php $class = 'col-sm-6'; ?>
            <?php } elseif ($column_left || $column_right) { ?>
                <?php $class = 'col-md-8 col-sm-12'; ?>
            <?php } else { ?>
                <?php $class = 'col-sm-12'; ?>
            <?php } ?>
            <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
                    <fieldset>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-password"><?php echo $entry_password; ?></label>
                            <div class="col-sm-10">
                                <input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
                                <?php if ($error_password) { ?>
                                    <div class="text-danger"><?php echo $error_password; ?></div>
                                <?php } ?>
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-confirm"><?php echo $entry_confirm; ?></label>
                            <div class="col-sm-10">
                                <input type="password" name="confirm" value="<?php echo $confirm; ?>" placeholder="<?php echo $entry_confirm; ?>" id="input-confirm" class="form-control" />
                                <?php if ($error_confirm) { ?>
                                    <div class="text-danger"><?php echo $error_confirm; ?></div>
                                <?php } ?>
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
            <div class="col-md-4 col-sm-12">
                <?php echo $column_right; ?>
            </div>
            </div>
    </div>
</div>
<?php echo $footer; ?>