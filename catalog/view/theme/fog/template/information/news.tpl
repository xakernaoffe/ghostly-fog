<?php echo $header; ?>
<div class="newsPage">
    <div class="newsPage__header">
        <div class="container">
            <ul class="breadcrumb col-sm-offset-8 hidden-xs">
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
            <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
                <div class="newsPage__content">
                    <?php if ($thumb) { ?>
                        <div class="newsPage__content__img">
                            <a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>">
                                <img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>"/>
                            </a>
                        </div>
                    <?php } ?>
                    <div class="newsPage__content__info">
                        <div class="newsPage__content__info__name"><?php echo $heading_title; ?></div>
                            <div class="newsPage__content__info__description">
                                <?php echo $description; ?>
                            </div>
                            <div class="newsPage__content__info__posted">
                                <i class="fa fa-clock-o"></i>&nbsp;
                                <?php echo $posted; ?>
                            </div>
                            <div class="newsPage__content__info__viewed">
                                <i class="fa fa-eye"></i>&nbsp;
                                <?php echo $viewed; ?>
                            </div>
                        </div>
                        <div class="newsPage__content__buttons">
                            <a class="newsPage__content__buttons__item" href="<?php echo $news_list; ?>"><?php echo $button_news; ?></a>
                            <a class="newsPage__content__buttons__item" href="<?php echo $continue; ?>"><?php echo $button_continue; ?></a>
                        </div>
                </div>
                <?php echo $content_bottom; ?></div>
            <?php echo $column_right; ?></div>
        <script type="text/javascript"><!--
            $(document).ready(function () {
                $('.thumbnail').magnificPopup({
                    type: 'image',
                    delegate: 'a',
                });
            });
            //--></script>
    </div>
</div>
<?php echo $footer; ?>