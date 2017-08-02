<?php echo $header; ?>
<div class="newsPage">
    <div class="newsPage__header">
        <div class="container">
            <div class="newsPage__title col-sm-8 col-xs-8"><?php echo $heading_title; ?></div>
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
            <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
                <?php if ($news_list) { ?>
                    <div class="newsPage__content">
                        <?php foreach ($news_list as $news_item) { ?>
                            <div class="newsPage__item">
                                    <?php if($news_item['thumb']) { ?>
                                        <div class="newsPage__item__image">
                                            <a href="<?php echo $news_item['href']; ?>" class="newsPage__item__image__link">
                                                <img src="<?php echo $news_item['thumb']; ?>" alt="<?php echo $news_item['title']; ?>" title="<?php echo $news_item['title']; ?>" class="img-responsive" />
                                            </a>
                                        </div>
                                    <?php }?>
                                    <div class="newsPage__item__info">
                                        <a href="<?php echo $news_item['href']; ?>" class="newsPage__item__info__name"><?php echo $news_item['title']; ?></a>
                                        <p class="newsPage__item__info__descr"><?php echo $news_item['description']; ?></p>
                                        <button type="button" onclick="location.href = ('<?php echo $news_item['href']; ?>');" class="newsPage__item__info__btn"><?php echo $text_more; ?></button>
                                    </div>
                            </div>
                        <?php } ?>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 text-center"><?php echo $pagination; ?></div>
                    </div>
                <?php } else { ?>
                    <p><?php echo $text_empty; ?></p>
                    <div class="buttons">
                        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
                    </div>
                <?php } ?>
                <?php echo $content_bottom; ?></div>
            <?php echo $column_right; ?></div>
    </div>
</div>
<?php echo $footer; ?>