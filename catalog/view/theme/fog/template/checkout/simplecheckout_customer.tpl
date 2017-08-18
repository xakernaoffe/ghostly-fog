<div class="simplecheckout-block" id="simplecheckout_customer" <?php echo $hide ? 'data-hide="true"' : '' ?> <?php echo $display_error && $has_error ? 'data-error="true"' : '' ?>>
  <?php if ($display_header || $display_login) { ?>
  <div class="checkout-heading panel-heading sCart__userUnlogin">
      <span>Если Вы уже зарегистрированы, перейдите на страницу<?php //echo $text_checkout_customer ?>
      <?php if ($display_login) { ?>
              <a class="quick_signup">
                  входа в систему.
                  <?php // echo $text_checkout_customer_login ?>
              </a>
      <?php } ?>
      </span>
  </div>
  <?php } ?>
  <div class="simplecheckout-block-content">
    <?php if ($display_registered) { ?>
      <div class="success"><?php echo $text_account_created ?></div>
    <?php } ?>
    <?php if ($display_you_will_registered) { ?>
      <div class="you-will-be-registered"><?php echo $text_you_will_be_registered ?></div>
    <?php } ?>
    <?php foreach ($rows as $row) { ?>
      <?php echo $row ?>
    <?php } ?>
  </div>
</div>