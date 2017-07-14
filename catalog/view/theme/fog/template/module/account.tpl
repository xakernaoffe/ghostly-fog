<div class="accountModule">
  <?php if (!$logged) { ?>
  <a href="<?php echo $login; ?>" class="accountModule__link"><?php echo $text_login; ?></a>
      <a href="<?php echo $register; ?>" class="accountModule__link"><?php echo $text_register; ?></a> <a href="<?php echo $forgotten; ?>" class="accountModule__link"><?php echo $text_forgotten; ?></a>
  <?php } ?>
  <a href="<?php echo $account; ?>" class="accountModule__link"><?php echo $text_account; ?></a>
  <?php if ($logged) { ?>
  <a href="<?php echo $edit; ?>" class="accountModule__link"><?php echo $text_edit; ?></a> <a href="<?php echo $password; ?>" class="accountModule__link"><?php echo $text_password; ?></a>
  <?php } ?>
  <a href="<?php echo $address; ?>" class="accountModule__link"><?php echo $text_address; ?></a>
    <a href="<?php echo $order; ?>" class="accountModule__link"><?php echo $text_order; ?></a>
  <?php if ($logged) { ?>
  <a href="<?php echo $logout; ?>" class="accountModule__link"><?php echo $text_logout; ?></a>
  <?php } ?>
</div>
