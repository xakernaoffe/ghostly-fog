<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, maximum-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?></title>
<base href="<?php echo $base; ?>" />
<meta name="theme-color" content="#211f20">
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta property="og:title" content="<?php echo $title; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?>" />
<meta property="og:type" content="website" />
<meta property="og:url" content="<?php echo $og_url; ?>" />
<?php if ($og_image) { ?>
<meta property="og:image" content="<?php echo $og_image; ?>" />
<?php } else { ?>
<meta property="og:image" content="<?php echo $logo; ?>" />
<?php } ?>
<meta property="og:site_name" content="<?php echo $name; ?>" />
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<!--<link href="catalog/view/theme/fog/stylesheet/stylesheet.css" rel="stylesheet">-->
<link href="catalog/view/theme/fog/stylesheet/style.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/jquery/slick/slick.min.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>

    <script src="//ulogin.ru/js/ulogin.js"></script>
</head>
<body class="<?php echo $class; ?>">
<nav class="navigation">
  <div class="container">
      <div class="row">
          <div class="navigation__links col-md-8 hidden-sm hidden-xs">
              <?php if ($informations) { ?>
                  <?php foreach ($informations as $information) { ?>
                      <a href="<?php echo $information['href']; ?>" class="navigation__links__item"><?php echo $information['title']; ?></a>
                  <?php } ?>
              <?php } ?>
              <a href="<?php echo $contact; ?>" class="navigation__links__item"><?php echo $text_contact; ?></a>
          </div>
          <div class="navigation__links login col-md-4">
              <?php if (!$logged) { ?>
              <a title="<?php echo $text_account; ?>" class="navigation__links__item quick_signup"><i class="fa fa-sign-in" aria-hidden="true"></i>  <span class="hidden-xs hidden-sm"><?php echo $text_account; ?></span></a>
              <?php } ?>
              <?php if ($logged) { ?>
                  <a href="<?php echo $account; ?>" class="navigation__links__item"><i class="fa fa-user-circle-o" aria-hidden="true"></i><span class="hidden-xs hidden-sm"><?php echo $text_room; ?></a>
              <a  href="<?php echo $logout; ?>" class="navigation__links__item"><i class="fa fa-sign-out" aria-hidden="true"></i> <span class="hidden-xs hidden-sm"><?php echo $text_logout; ?></span></a>
              <?php } ?>
          </div>
      </div>
  </div>
</nav>
<header class="header">
  <div class="container">
      <div class="header__mobile hidden-lg hidden-md">
          <div class="burger_btn" data-toggle="modal" data-target="#menu-mobile">
              <span></span>
              <span></span>
              <span></span>
              <span></span>
              <span></span>
              <span></span>
          </div>
          <?php if ($logo) { ?>
              <a href="<?php echo $home; ?>" class="header__mobileLogo">
                  <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>"
                       class="img-responsive"/>
              </a>
          <?php } ?>
      </div>
      <div class="row">
          <div class="col-md-4 logo-wrap hidden-sm hidden-xs">
              <div id="logo">
                  <?php if ($logo) { ?>
                      <?php if ($home == $og_url) { ?>
                          <a href="<?php echo $home; ?>">
                              <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>"
                                   class="img-responsive"/>
                          </a>
                      <?php } else { ?>
                          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>"
                                                              alt="<?php echo $name; ?>" class="img-responsive"/></a>
                      <?php } ?>
                  <?php } else { ?>
                      <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
                  <?php } ?>
              </div>
          </div>
          <div class="callback col-md-3 hidden-sm hidden-xs">
              <div class="callback__icon"></div>
              <div class="callback__info">
                  <span class="callback__info__time"><?php echo $open; ?></span>
                  <div class="callback__link show-callback"><?php echo $text_callback; ?></div>
              </div>
          </div>
          <div class="phones col-md-3 hidden-sm hidden-xs">
              <div class="phones__icon"></div>
              <div class="phones__links">
                  <a href="tel:<?php echo $telephone; ?>" class="phones__links__item"><?php echo $telephone; ?></a>
                  <a href="tel:<?php echo $telephone; ?>" class="phones__links__item"><?php echo $telephone2; ?></a>
              </div>
          </div>
          <div class="col-sm-2 cart js-addToCart"><?php echo $cart; ?></div>
      </div>
  </div>
</header>
<div class="header__separator hidden-lg hidden-md"></div>
<div class="menu hidden-sm hidden-xs">
    <?php if ($categories) { ?>
        <div class="container">
            <div class="row">
                <nav id="menu" class="navbar col-lg-8 col-md-10">
                    <div class="navbar__header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
                        <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
                    </div>
                    <ul class="navbar__container">
                        <?php foreach ($categories as $category) { ?>
                            <?php if ($category['children']) { ?>
                                <li class="navbar__item">
                                    <a href="<?php echo $category['href']; ?>" class="navbar__link"><?php echo $category['name']; ?></a>
                                    <div class="sub-menu">
                                        <div class="sub-menu__container">
                                            <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                                                <ul class="sub-menu__list">
                                                    <?php foreach ($children as $child) { ?>
                                                        <li class="sub-menu__item">
                                                            <a href="<?php echo $child['href']; ?>" class="sub-menu__link"><?php echo $child['name']; ?></a>
                                                        </li>
                                                    <?php } ?>
                                                </ul>
                                            <?php } ?>
                                        </div>
                                    </div>
                                </li>
                            <?php } else { ?>
                                <li class="navbar__item"><a href="<?php echo $category['href']; ?>" class="navbar__link"><?php echo $category['name']; ?></a></li>
                            <?php } ?>
                        <?php } ?>
                    </ul>
                    <ul class="navbar__container">
                        <li class="navbar__item">
                            <a href="<?php echo $latest; ?>" class="navbar__link"><?php echo $text_latest; ?></a>
                        </li>
                        <li class="navbar__item">
                            <a href="<?php echo $news_link; ?>" class="navbar__link"><?php echo $text_news; ?></a>
                        </li>
                    </ul>
                </nav>
                <div class="search col-lg-4 col-md-2">
                    <?php echo $search; ?>
                </div>
            </div>
        </div>
    <?php } ?>
</div>

<div class="modal fade menu__mobile" id="menu-mobile" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="menu__mobile__wrap">
                <?php if ($categories) { ?>
                    <div id="accordion">
                        <?php foreach ($categories as $category) { ?>
                            <div class="panel">
                                <?php if ($category['children']) { ?>
                                    <a data-toggle="collapse" data-parent="#accordion" href="#<?php echo $category['name']; ?>" class="menu__mobile__item"><span class="arrow"></span>
                                        <?php echo $category['name']; ?>
                                    </a>
                                    <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                                        <div id="<?php echo $category['name']; ?>" class="panel-collapse collapse">
                                            <?php foreach ($children as $child) { ?>
                                                <a href="<?php echo $child['href']; ?>" class="menu__mobile__link"><?php echo $child['name']; ?></a>
                                            <?php } ?>
                                        </div>
                                    <?php } ?>
                                <?php } else { ?>
                                    <a href="<?php echo $category['href']; ?>" class="menu__mobile__item"><?php echo $category['name']; ?></a>
                                <?php } ?>
                            </div>
                        <?php } ?>
                    </div>
                <?php } ?>
                <a href="<?php echo $latest; ?>" class="menu__mobile__item"><?php echo $text_latest; ?></a>
                <a href="<?php echo $news_link; ?>" class="menu__mobile__item"><?php echo $text_news; ?></a> <hr>
                <?php if ($informations) { ?>
                    <?php foreach ($informations as $information) { ?>
                        <a href="<?php echo $information['href']; ?>" class="menu__mobile__item"><?php echo $information['title']; ?></a>
                    <?php } ?>
                <?php } ?>
                <a href="<?php echo $contact; ?>" class="menu__mobile__item"><?php echo $text_contact; ?></a>
                <?php if ($logged) { ?>
                    <hr>
                    <a  href="<?php echo $account; ?>" class="menu__mobile__item"><?php echo $text_room; ?></a>
                <?php } ?>
            </div>
        </div>
    </div>
</div>

