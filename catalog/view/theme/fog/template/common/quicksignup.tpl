<div id="modal-quicksignup" class="modal login-wrap">
	<div class="modal-dialog">
		<div class="modal-content">
            <div class="modal-body">
                <div class="login__close" data-dismiss="modal" aria-hidden="true">&times;</div>
                <div class="login" id="quick-login">
                    <div class="login__title"><?php echo $text_returning ?></div>
                    <div class="login__form">
                        <div class="form-group required">
                            <input type="text" name="email" value=""  id="input-email" class="form-control" placeholder="<?php echo $entry_email; ?>"/>
                        </div>
                        <div class="form-group required">
                            <input type="password" name="password" value="" id="input-password" class="form-control" placeholder="<?php echo $entry_password; ?>"/>
                        </div>
                        <div class="form-group">
                            <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a>
                        </div>
                        <div class="form-group">
                            <button type="button" class="loginaccount"  data-loading-text="<?php echo $text_loading; ?>"><?php echo $button_login ?></button>
                        </div>
                        <div class="social">
                            <?php echo $ulogin_form_marker;?>
                        </div>
                        <a class="login__toRegistration"><?php echo $text_registration; ?></a>
                    </div>
                </div>
                <div class="login" id="quick-register">
                    <div class="login__title"><?php echo $text_registration_title; ?></div>
                    <div class="login__form">
                        <div class="form-group required">
                            <input type="text" name="name" value="" id="input-name" class="form-control" placeholder="<?php echo $entry_name; ?>"/>
                        </div>
                        <div class="form-group required">
                            <input type="text" name="email" value="" id="input-email" class="form-control" placeholder="<?php echo $entry_email; ?>"/>
                        </div>
                        <div class="form-group required">
                            <input type="text" name="telephone" value="" id="input-telephone" class="form-control" placeholder="<?php echo $entry_telephone; ?>"/>
                        </div>
                        <div class="form-group required">
                            <input type="password" name="password" value="" id="input-password" class="form-control" placeholder="<?php echo $entry_password; ?>"/>
                        </div>
                        <?php if ($text_agree) { ?>
                            <div class="buttons">
                                <input type="checkbox" name="agree" value="1" />&nbsp;<?php echo $text_agree; ?>
                                <button type="button" class="btn btn-primary createaccount"  data-loading-text="<?php echo $text_loading; ?>" ><?php echo $button_continue; ?></button>
                            </div>
                        <?php }else{ ?>
                            <div class="buttons">
                                <button type="button" class="createaccount" data-loading-text="<?php echo $text_loading; ?>" ><?php echo $button_continue; ?></button>
                            </div>
                        <?php } ?>
                        <a class="registration__toLogin"><?php echo $text_toLogin; ?></a>
                    </div>
                </div>
            </div>
		</div>
	</div>
</div>
<style>
.quick_signup{
	cursor:pointer;
}
#modal-quicksignup .form-control{
	height:auto;
}</style>

<script type="text/javascript"><!--
$(document).delegate('.quick_signup', 'click', function(e) {
	$('#modal-quicksignup').modal('show');
});
//--></script>
<script type="text/javascript"><!--
$('#quick-register input').on('keydown', function(e) {
	if (e.keyCode == 13) {
		$('#quick-register .createaccount').trigger('click');
	}
});
$('#quick-register .createaccount').click(function() {
	$.ajax({
		url: 'index.php?route=common/quicksignup/register',
		type: 'post',
		data: $('#quick-register input[type=\'text\'], #quick-register input[type=\'password\'], #quick-register input[type=\'checkbox\']:checked'),
		dataType: 'json',
		beforeSend: function() {
			$('#quick-register .createaccount').button('loading');
			$('#modal-quicksignup .alert-danger').remove();
		},
		complete: function() {
			$('#quick-register .createaccount').button('reset');
		},
		success: function(json) {
			$('#modal-quicksignup .form-group').removeClass('has-error');
			
			if(json['islogged']){
				 window.location.href="index.php?route=account/account";
			}
			if (json['error_name']) {
				$('#quick-register #input-name').parent().addClass('has-error');
				$('#quick-register #input-name').focus();
			}
			if (json['error_email']) {
				$('#quick-register #input-email').parent().addClass('has-error');
				$('#quick-register #input-email').focus();
			}
			if (json['error_telephone']) {
				$('#quick-register #input-telephone').parent().addClass('has-error');
				$('#quick-register #input-telephone').focus();
			}
			if (json['error_password']) {
				$('#quick-register #input-password').parent().addClass('has-error');
				$('#quick-register #input-password').focus();
			}
			if (json['error']) {
				$('#modal-quicksignup .modal-header').after('<div class="alert alert-danger" style="margin:5px;"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}
			
			if (json['now_login']) {
				$('.quick-login').before('<li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a><ul class="dropdown-menu dropdown-menu-right"><li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li><li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li><li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li><li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li><li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li></ul></li>');
				
				$('.quick-login').remove();
			}
			if (json['success']) {
				$('#modal-quicksignup .main-heading').html(json['heading_title']);
				success = json['text_message'];
				success += '<div class="buttons"><div class="text-right"><a onclick="loacation();" class="btn btn-primary">'+ json['button_continue'] +'</a></div></div>';
//				$('#modal-quicksignup .modal-body').html(success);
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('#quick-login input').on('keydown', function(e) {
	if (e.keyCode == 13) {
		$('#quick-login .loginaccount').trigger('click');
	}
});
$('#quick-login .loginaccount').click(function() {
	$.ajax({
		url: 'index.php?route=common/quicksignup/login',
		type: 'post',
		data: $('#quick-login input[type=\'text\'], #quick-login input[type=\'password\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#quick-login .loginaccount').button('loading');
			$('#modal-quicksignup .alert-danger').remove();
		},
		complete: function() {
			$('#quick-login .loginaccount').button('reset');
		},
		success: function(json) {
			$('#modal-quicksignup .form-group').removeClass('has-error');
			if(json['islogged']){
				 window.location.href="index.php?route=account/account";
			}
			
			if (json['error']) {
				$('#modal-quicksignup .modal-header').after('<div class="alert alert-danger" style="margin:5px;"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
				$('#quick-login #input-email').parent().addClass('has-error');
				$('#quick-login #input-password').parent().addClass('has-error');
				$('#quick-login #input-email').focus();
			}
			if(json['success']){
				loacation();
				$('#modal-quicksignup').modal('hide');
			}
			
		}
	});
});

$('.login__toRegistration').on('click', function(){
    $('#quick-login').hide();
    $('#quick-register').show();
    });
    $('.registration__toLogin').on('click', function(){
        $('#quick-register ').hide();
        $('#quick-login').show();
    });
//--></script>
<script type="text/javascript"><!--
function loacation() {
	location.reload();
}
//--></script>