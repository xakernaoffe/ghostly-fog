<div class="module">
    <div class="module__header">
        <?php if($show_title) { ?>
            <div class="module__title"><?php echo $show_icon ? '<i class="fa fa-newspaper-o fa-3x"></i>&nbsp;' : ''; ?><?php echo $heading_title; ?></div>
        <?php } ?>
        <a class="module__link hidden-sm hidden-xs" href="<?php echo $news_link; ?>"><?php echo $text_link; ?></a>
        <hr class="module__header__line hidden-sm hidden-xs">
    </div>
    <div style="margin: 0 -10px;">
        <div class="news">
            <?php foreach ($news as $news_item) { ?>
                <div class="news__wrap">
                    <div class="news__thumb transition">
                        <?php if($news_item['thumb']) { ?>
                            <div class="news__image">
                                <a class="news__link" href="<?php echo $news_item['href']; ?>">
                                    <img src="<?php echo $news_item['thumb']; ?>" alt="<?php echo $news_item['title']; ?>" title="<?php echo $news_item['title']; ?>" class="img-responsive" />
                                </a>
                            </div>
                        <?php } ?>
                        <div class="news__caption">
                            <a class="news__title" href="<?php echo $news_item['href']; ?>"><?php echo $news_item['title']; ?></a>
                            <p class="news__descr"><?php echo $news_item['description']; ?></p>
                        </div>
                        <div class="news__info">
                            <div class="news__info__date"><?php echo $news_item['posted']; ?></div>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</div>
<script>
    $(document).ready(function(){
        $('.news').slick({
            slidesToShow: 3,
            slidesToScroll: 1,
            responsive: [
                {
                    breakpoint: 1200,
                    settings: {
                        slidesToShow: 3,
                        slidesToScroll: 1,
                        infinite: true
                    }
                },
                {
                    breakpoint: 992,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 1
                    }
                },
                {
                    breakpoint: 600,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 1
                    }
                },
                {
                    breakpoint: 510,
                    settings: {
                        slidesToShow: 1,
                        slidesToScroll: 1
                    }
                }
            ]
        });
    });
</script>
