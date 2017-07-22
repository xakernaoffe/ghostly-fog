<?php echo $header; ?>
<div class="contactPage">
    <div class="category__header">
        <div class="container">
            <div class="contactPage__title col-sm-8"><?php echo $heading_title; ?></div>
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
            <div id="content" class="<?php echo $class; ?> col-sm-12"><?php echo $content_top; ?>

                <div class="contactPage__shopInfo col-sm-6 col-xs-12">
                    <div class="contactPage__item">
                        <div class="contactPage__item__icon">
                            <span class="phone"></span>
                        </div>
                        <div class="contactPage__item__text">
                            <div class="contactPage__item__text__title"><?php echo $text_telephone; ?></div>
                            <a href="tel:<?php echo $telephone; ?>" class="contactPage__item__text__link"><?php echo $telephone; ?></a>
                            <a href="tel:<?php echo $telephone2; ?>" class="contactPage__item__text__link"><?php echo $telephone2; ?></a>
                        </div>
                    </div>
                    <div class="contactPage__item">
                        <div class="contactPage__item__icon">
                            <span class="email"></span>
                        </div>
                        <div class="contactPage__item__text">
                            <div class="contactPage__item__text__title"><?php echo $text_email; ?></div>
                            <a href="mailto:<?php echo $emailShop; ?>" class="contactPage__item__text__link"><?php echo $emailShop; ?></a>
                        </div>
                    </div>
                    <div class="contactPage__item">
                        <div class="contactPage__item__icon">
                            <span class="work"></span>
                        </div>
                        <div class="contactPage__item__text">
                            <div class="contactPage__item__text__title"><?php echo $text_open; ?></div>
                            <p class="contactPage__item__text__link"><?php echo $open; ?></p>
                        </div>
                    </div>
                </div>
                <div class="contactPage__shopForm col-sm-6 col-xs-12">
                    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
                        <fieldset>
                            <legend class="contactPage__shopForm__title"><?php echo $text_contact; ?></legend>
                            <div class="form-group required contactPage__shopForm__item">
                                <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                                <input type="text" name="name" value="<?php echo $name; ?>" id="input-name" class="form-control" />
                                <?php if ($error_name) { ?>
                                    <div class="text-danger"><?php echo $error_name; ?></div>
                                <?php } ?>
                            </div>
                            <div class="form-group required contactPage__shopForm__item">
                                <label class="control-label" for="input-email"><?php echo $entry_email; ?></label>
                                <input type="text" name="email" value="<?php echo $email; ?>" id="input-email" class="form-control" />
                                <?php if ($error_email) { ?>
                                    <div class="text-danger"><?php echo $error_email; ?></div>
                                <?php } ?>
                            </div>
                            <div class="form-group required contactPage__shopForm__item">
                                <label class="control-label" for="input-enquiry"><?php echo $entry_enquiry; ?></label>
                                <textarea name="enquiry" rows="10" id="input-enquiry" class="form-control"><?php echo $enquiry; ?></textarea>
                                <?php if ($error_enquiry) { ?>
                                    <div class="text-danger"><?php echo $error_enquiry; ?></div>
                                <?php } ?>
                            </div>
                            <?php echo $captcha; ?>
                        </fieldset>
                        <input class="contactPage__shopForm__btn" type="submit" value="<?php echo $button_submit; ?>" />
                    </form>
                </div>
                <?php echo $content_bottom; ?></div>
            <?php echo $column_right; ?></div>
    </div>
</div>
<?php echo $footer; ?>
