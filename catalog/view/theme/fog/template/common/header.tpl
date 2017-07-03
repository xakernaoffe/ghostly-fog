<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?></title>
<base href="<?php echo $base; ?>" />
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
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
<nav class="navigation">
  <div class="container">
      <div class="row">
          <div class="navigation__links col-sm-10">
              <?php if ($informations) { ?>
                  <?php foreach ($informations as $information) { ?>
                      <a href="<?php echo $information['href']; ?>" class="navigation__links__item"><?php echo $information['title']; ?></a>
                  <?php } ?>
              <?php } ?>
              <a href="<?php echo $contact; ?>" class="navigation__links__item"><?php echo $text_contact; ?></a>
          </div>
          <div class="navigation__links login col-sm-2">
              <a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="navigation__links__item"><span class="navigation__links__icon"></span> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span></a>
          </div>
      </div>
  </div>
</nav>
<header>
  <div class="container">
      <div class="row">
          <div class="col-sm-4">
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
          <div class="callback col-sm-3">
              <div class="callback__icon"></div>
              <div class="callback__info">
                  <?php echo $open; ?>
                  <a href="#" class="callback__link">Обратный звонок</a>
              </div>
          </div>
          <div class="phones col-sm-3">
              <div class="phones__icon"></div>
              <div class="phones__links">
                  <a href="tel:+380934484918" class="phones__links__item"><?php echo $telephone; ?></a>
                  <a href="+380957089879" class="phones__links__item"><?php echo $telephone2; ?></a>
              </div>
          </div>
          <div class="col-sm-2 cart"><?php echo $cart; ?></div>
      </div>
  </div>
</header>
<div class="menu">
    <?php if ($categories) { ?>
        <div class="container">
            <nav id="menu" class="navbar col-sm-8">
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
                                                    <li class="sub-menu__item"><a href="<?php echo $child['href']; ?>" class="sub-menu__link"><?php echo $child['name']; ?></a></li>
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
            </nav>
            <div class="search col-sm-4"><?php echo $search; ?></div>
        </div>
    <?php } ?>
</div>

