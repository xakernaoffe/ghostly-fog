<div class="accountModule">
  <?php if (!$logged) { ?>
  <a class="accountModule__link quick_signup"><?php echo $text_login; ?></a>
      <a class="accountModule__link quick_signup registration"><?php echo $text_register; ?></a>
      <a href="<?php echo $forgotten; ?>" class="accountModule__link"><?php echo $text_forgotten; ?></a>
  <?php } ?>
    <?php if ($logged) { ?>
  <a href="<?php echo $account; ?>" class="accountModule__link"><?php echo $text_account; ?></a>
  <a href="<?php echo $edit; ?>" class="accountModule__link"><?php echo $text_edit; ?></a>
        <a href="<?php echo $password; ?>" class="accountModule__link"><?php echo $text_password; ?></a>
  <a href="<?php echo $address; ?>" class="accountModule__link"><?php echo $text_address; ?></a>
    <a href="<?php echo $order; ?>" class="accountModule__link"><?php echo $text_order; ?></a>
  <a href="<?php echo $logout; ?>" class="accountModule__link"><?php echo $text_logout; ?></a>
  <?php } ?>
</div>
<script>
    $(document).ready(function(){
        $('.accountModule .registration').on('click', function(){
            $('#quick-login').hide();
            $('#quick-register').show();
        });
    });
</script>
