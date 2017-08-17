<footer class="footer">
  <div class="container">
    <div class="row">
        <?php if ($categories) { ?>
            <div class="footer__item col-md-3 hidden-sm hidden-xs">
                <div class="footer__item__title"><?php echo $text_catrgories ?></div>
                <ul class="footer__item__list">
                    <?php foreach ($categories as $category) { ?>
                        <li>
                            <a href="<?php echo $category['href']; ?>" class="footer__item__link"><?php echo $category['name']; ?></a>
                        </li>
                    <?php } ?>
                </ul>
            </div>
        <?php } ?>
        <div class="footer__item col-md-3 hidden-sm hidden-xs">
            <div class="footer__item__title"><?php echo $text_account; ?></div>
            <?php if (!$logged) { ?>
            <ul class="footer__item__list">
                <li>
                    <a  class="footer__item__link quick_signup"><?php echo $text_room; ?></a>
                </li>
                <li><a class="footer__item__link quick_signup"><?php echo $text_order; ?></a></li>
            </ul>
            <?php } ?>
            <?php if ($logged) { ?>
            <ul class="footer__item__list">
                <li>
                    <a  href="<?php echo $account; ?>" class="footer__item__link"><?php echo $text_room; ?></a>
                </li>
                <li><a href="<?php echo $order; ?>" class="footer__item__link"><?php echo $text_order; ?></a></li>
            </ul>
            <?php } ?>
        </div>
        <?php if ($informations) { ?>
            <div class="footer__item col-md-3 hidden-sm hidden-xs">
                <div class="footer__item__title"><?php echo $text_information; ?></div>
                <ul class="footer__item__list">
                    <?php foreach ($informations as $information) { ?>
                        <li><a href="<?php echo $information['href']; ?>" class="footer__item__link"><?php echo $information['title']; ?></a></li>
                    <?php } ?>
                </ul>
                <a href="<?php echo $contact; ?>" class="footer__item__link"><?php echo $text_contact; ?></a>
            </div>
        <?php } ?>
        <div class="footer__item col-md-3 col-sm-12">
            <div class="footer__item__title hidden-sm hidden-xs"><?php echo $text_contact; ?></div>
            <div class="footer__item__wrap">
                <div class="footer__item__info">
                    <div class="footer__item__info__icon">
                        <span class="phones"></span>
                    </div>
                    <div class="footer__item__info__wrap">
                        <a href="tel:<?php echo $telephone; ?>" class="footer__item__info__link"><?php echo $telephone; ?></a>
                        <a href="tel:<?php echo $telephone2; ?>" class="footer__item__info__link"><?php echo $telephone2; ?></a>
                        <div href="#" class="footer__item__info__link show-callback hidden-lg hidden-md"><?php echo $text_callback; ?></div>
                    </div>
                </div>
                <div class="footer__item__info">
                    <div class="footer__item__info__icon">
                        <span class="work-time"></span>
                    </div>
                    <div class="footer__item__info__wrap">
                        <?php echo $open; ?>
                    </div>
                </div>
                <div class="footer__item__info">
                    <div class="footer__item__info__icon">
                        <span class="mail"></span>
                    </div>
                    <div class="footer__item__info__wrap"><?php echo $email; ?></div>
                </div>
                <div class="footer__item__info social">
                    <a href="#" class="footer__item__socLink">
                        <i class="fa fa-instagram fa-2x" aria-hidden="true"></i>
                    </a>
                    <a href="#" class="footer__item__socLink">
                        <i class="fa fa-vk fa-2x" aria-hidden="true"></i>
                    </a>
                    <a href="#" class="footer__item__socLink">
                        <i class="fa fa-twitter fa-2x" aria-hidden="true"></i>
                    </a>
                    <a href="#" class="footer__item__socLink">
                        <i class="fa fa-youtube-play fa-2x" aria-hidden="true"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</footer>
<div class="copyright">
    <div class="container">
        <div class="copyright__text col-lg-9 col-md-12">
            <?php echo $powered; ?>
            <a href="<?php echo $home; ?>" class="copyright__text__link"><?php echo $site_name; ?></a>
            <div class="copyright__text__content"><?php echo $site_descr; ?></div>
        </div>
        <div class="warning col-lg-3 col-md-12">
            <div class="warning__text"><?php echo $text_warning; ?></div>
            <div class="warning__icon"></div>
        </div>
    </div>
</div>

<!-- Theme created by MakaroFF for OpenCart 2.1 -->






<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<script type="text/javascript"><!--
//    $(function() {
//
//        if ($('.product-grid, .product-list').length) {
//
//            if ($('.pagination').length && !$('.pagination > li:last-child').hasClass('active')) {
//
//                $('#content div.col-sm-6.text-right').hide();
//
//                $('.pagination').parent().before('<div class="col-xs-12 text-center"><button class="btn btn-success btn-lg" id="endless" style="margin: 15px auto; padding: 10px 120px;" ><i class="fa fa-refresh"></i> </button></div>');
//
//                $('#endless').on('click', function(e) {
//
//                    var lastProduct = $('.pagination').parent().parent().parent().find('.product-layout:last-child');
//
//                    var nextPage = $('ul.pagination li.active').next().find('a:first-child');
//
//                    $.ajax({
//                        url: $(nextPage).attr('href'),
//                        beforeSend: function(){
//                            $('#endless .fa-refresh').addClass('fa-spin');
//                        },
//                        success: function(data){
//
//                            var products = $(data).find('.product-list');
//
//                            $('#content').after(products);
//
//                            if (localStorage.getItem('display') == 'grid') {
//
////                                cols = $('#column-right, #column-left').length;
//
////                                if (cols == 2) {
////                                    $(products).attr('class', 'product-layout product-grid col-lg-6 col-md-6 col-sm-12 col-xs-12');
////                                } else if (cols == 1) {
////                                    $(products).attr('class', 'product-layout product-grid col-lg-4 col-md-4 col-sm-6 col-xs-12');
////                                } else {
////                                    $(products).attr('class', 'product-layout product-grid col-lg-3 col-md-3 col-sm-6 col-xs-12');
////                                }
//
//                            }
//
//
//                            $('.pagination').html($(data).find('.pagination > *'));
//
//                            nextPage = $('ul.pagination li.active').next().find('a:first-child');
//
//
//                            if (nextPage.length == ) {
//                                $('#endless').remove();
//                            } else {
//                                $('#endless .fa-refresh').removeClass('fa-spin');
//                            }
//
//                            autoscroller.loading = ;
//                        }
//                    });
//
//                    return false;
//                });
//
//            }
//        }
//
//
//        function inWindow(el){
//            if($(el).length) {
//                var scrollTop = $(window).scrollTop();
//                var windowHeight = $(window).height();
//                var offset = $(el).offset();
//
//                if(scrollTop <= offset.top && ($(el).height() + offset.top) < (scrollTop + windowHeight))
//                    return true;
//            };
//
//            return false;
//        }
//
//    });
    --></script>
</body></html>