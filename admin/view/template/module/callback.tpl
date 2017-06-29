<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-category" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-category" class="form-horizontal">
		  <div class="row">
			<div class="col-sm-2">
			  <ul class="nav nav-pills nav-stacked">
			    <li class="active"><a href="#tab-general" data-toggle="tab"><?php echo $tab_general; ?></a></li>
				<li><a href="#tab-form" data-toggle="tab"><?php echo $tab_form; ?></a></li>
				<li><a href="#tab-button" data-toggle="tab"><?php echo $tab_button; ?></a></li>
				<li><a href="#tab-sms" data-toggle="tab"><?php echo $tab_sms; ?></a></li>
			  </ul>
			</div>
			<div class="col-sm-10">
			  <div class="tab-content">
			    <div class="tab-pane active" id="tab-general">
				  <div class="form-group">
					<label class="col-sm-2 control-label" for="input-callback-status"><?php echo $entry_callback_status; ?></label>
					<div class="col-sm-10">
					  <select name="callback_status" id="input-callback-status" class="form-control">
						<?php if ($callback_status) { ?>
						<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
						<option value="0"><?php echo $text_disabled; ?></option>
						<?php } else { ?>
						<option value="1"><?php echo $text_enabled; ?></option>
						<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
						<?php } ?>
					  </select>
					</div>
				  </div>
				  <div class="form-group">
					<label class="col-sm-2 control-label" for="input-callback-link-menu"><?php echo $entry_callback_link_menu; ?></label>
					<div class="col-sm-10">
					  <select name="callback_link_menu" id="input-callback-link-menu" class="form-control">
						<?php if ($callback_link_menu) { ?>
						<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
						<option value="0"><?php echo $text_disabled; ?></option>
						<?php } else { ?>
						<option value="1"><?php echo $text_enabled; ?></option>
						<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
						<?php } ?>
					  </select>
					</div>
				  </div>
				</div>
				<div class="tab-pane" id="tab-form">
				  <div class="form-group">
					<label class="col-sm-2 control-label" for="input-callback-title"><?php echo $entry_callback_title; ?></label>
					<div class="col-sm-10">
					  <select name="callback_title" id="input-callback-title" class="form-control">
						<option value="2" <?php if ($callback_title == '2') { echo 'selected="selected"'; } ?>><?php echo $text_required; ?></option>
						<option value="1" <?php if ($callback_title == '1') { echo 'selected="selected"'; } ?>><?php echo $text_no_required; ?></option>
						<option value="0" <?php if ($callback_title == '0') { echo 'selected="selected"'; } ?>><?php echo $text_disabled; ?></option>
					  </select>
					</div>
				  </div>
				  <div class="form-group">
					<label class="col-sm-2 control-label" for="input-callback-name"><?php echo $entry_callback_name; ?></label>
					<div class="col-sm-10">
					  <select name="callback_name" id="input-callback-name" class="form-control">
						<option value="2" <?php if ($callback_name == '2') { echo 'selected="selected"'; } ?>><?php echo $text_required; ?></option>
						<option value="1" <?php if ($callback_name == '1') { echo 'selected="selected"'; } ?>><?php echo $text_no_required; ?></option>
						<option value="0" <?php if ($callback_name == '0') { echo 'selected="selected"'; } ?>><?php echo $text_disabled; ?></option>
					  </select>
					</div>
				  </div>
				  <div class="form-group">
					<label class="col-sm-2 control-label" for="input-callback-time"><?php echo $entry_callback_time; ?></label>
					<div class="col-sm-10">
					<div class="row">
					  <div class="col-sm-6">
						<select name="callback_time_required" id="input-callback-time-required" class="form-control">
						  <option value="2" <?php if ($callback_time_required == '2') { echo 'selected="selected"'; } ?>><?php echo $text_required; ?></option>
						  <option value="1" <?php if ($callback_time_required == '1') { echo 'selected="selected"'; } ?>><?php echo $text_no_required; ?></option>
						  <option value="0" <?php if ($callback_time_required == '0') { echo 'selected="selected"'; } ?>><?php echo $text_disabled; ?></option>
						</select>
					  </div>
					  <div class="col-sm-6">
						<input type="text" name="callback_time" value="<?php echo $callback_time; ?>" placeholder="<?php echo $entry_callback_time; ?>" id="input-callback-time" class="form-control" />
					  </div>
					  </div>
					</div>
				  </div>
				  <div class="form-group">
					<label class="col-sm-2 control-label" for="input-callback-phone"><?php echo $entry_callback_phone; ?></label>
					<div class="col-sm-10">
					  <select name="callback_phone" id="input-callback-phone" class="form-control">
						<option value="2" <?php if ($callback_phone == '2') { echo 'selected="selected"'; } ?>><?php echo $text_required; ?></option>
						<option value="1" <?php if ($callback_phone == '1') { echo 'selected="selected"'; } ?>><?php echo $text_no_required; ?></option>
						<option value="0" <?php if ($callback_phone == '0') { echo 'selected="selected"'; } ?>><?php echo $text_disabled; ?></option>
					  </select>
					</div>
				  </div>
				  <div class="form-group">
					<label class="col-sm-2 control-label" for="input-callback-email"><?php echo $entry_callback_email; ?></label>
					<div class="col-sm-10">
					  <select name="callback_email" id="input-callback-email" class="form-control">
						<option value="2" <?php if ($callback_email == '2') { echo 'selected="selected"'; } ?>><?php echo $text_required; ?></option>
						<option value="1" <?php if ($callback_email == '1') { echo 'selected="selected"'; } ?>><?php echo $text_no_required; ?></option>
						<option value="0" <?php if ($callback_email == '0') { echo 'selected="selected"'; } ?>><?php echo $text_disabled; ?></option>
					  </select>
					</div>
				  </div>
				  <div class="form-group">
					<label class="col-sm-2 control-label" for="input-callback-text"><?php echo $entry_callback_text; ?></label>
					<div class="col-sm-10">
					  <select name="callback_text" id="input-callback-text" class="form-control">
						<option value="2" <?php if ($callback_text == '2') { echo 'selected="selected"'; } ?>><?php echo $text_required; ?></option>
						<option value="1" <?php if ($callback_text == '1') { echo 'selected="selected"'; } ?>><?php echo $text_no_required; ?></option>
						<option value="0" <?php if ($callback_text == '0') { echo 'selected="selected"'; } ?>><?php echo $text_disabled; ?></option>
					  </select>
					</div>
				  </div>
				</div>
				<div class="tab-pane" id="tab-button">
				  <div class="form-group">
					<label class="col-sm-2 control-label" for="input-callback-link-fixed"><?php echo $entry_callback_link_fixed; ?></label>
					<div class="col-sm-10">
					  <select name="callback_link_fixed" id="input-callback-link-fixed" class="form-control">
						<?php if ($callback_link_fixed) { ?>
						<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
						<option value="0"><?php echo $text_disabled; ?></option>
						<?php } else { ?>
						<option value="1"><?php echo $text_enabled; ?></option>
						<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
						<?php } ?>
					  </select>
					</div>
				  </div>
				  <div class="form-group">
					<label class="col-sm-2 control-label" for="input-callback-button-color"><?php echo $entry_callback_button_color; ?></label>
					<div class="col-sm-10">
					  <input type="text" name="callback_button_color" value="<?php echo $callback_button_color; ?>" placeholder="<?php echo $entry_callback_button_color; ?>" id="input-callback-button-color" class="form-control" />
					</div>
				  </div>
				  <div class="form-group">
					<label class="col-sm-2 control-label" for="input-callback-border-color"><?php echo $entry_callback_border_color; ?></label>
					<div class="col-sm-10">
					  <input type="text" name="callback_border_color" value="<?php echo $callback_border_color; ?>" placeholder="<?php echo $entry_callback_border_color; ?>" id="input-callback-border-color" class="form-control" />
					</div>
				  </div>
				  <div class="form-group">
					<label class="col-sm-2 control-label" for="input-callback-phone-field"><?php echo $entry_callback_phone_field; ?></label>
					<div class="col-sm-10">
					  <select name="callback_phone_field" id="input-callback-phone-field" class="form-control">
						<?php if ($callback_phone_field) { ?>
						<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
						<option value="0"><?php echo $text_disabled; ?></option>
						<?php } else { ?>
						<option value="1"><?php echo $text_enabled; ?></option>
						<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
						<?php } ?>
					  </select>
					</div>
				  </div>
				</div>
				<div class="tab-pane" id="tab-sms">
				  <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_smsru; ?></div>
				  <div class="form-group">
					<label class="col-sm-2 control-label" for="input-callback-sms-status"><?php echo $entry_callback_status; ?></label>
					<div class="col-sm-10">
					  <select name="callback_sms_status" id="input-callback-sms-status" class="form-control">
						<?php if ($callback_sms_status) { ?>
						<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
						<option value="0"><?php echo $text_disabled; ?></option>
						<?php } else { ?>
						<option value="1"><?php echo $text_enabled; ?></option>
						<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
						<?php } ?>
					  </select>
					</div>
				  </div>
				  <div class="form-group">
					<label class="col-sm-2 control-label" for="input-callback-api-key"><?php echo $entry_callback_api_key; ?></label>
					<div class="col-sm-10">
					  <input type="text" name="callback_api_key" value="<?php echo $callback_api_key; ?>" placeholder="<?php echo $entry_callback_api_key; ?>" id="input-callback-api-key" class="form-control" />
					</div>
				  </div>
				  <div class="form-group">
					<label class="col-sm-2 control-label" for="input-callback-sender"><?php echo $entry_callback_sender; ?></label>
					<div class="col-sm-10">
					  <input type="text" name="callback_sender" value="<?php echo $callback_sender; ?>" placeholder="<?php echo $entry_callback_sender; ?>" id="input-callback-sender" class="form-control" />
					</div>
				  </div>
				</div>
			  </div>
		    </div>
		  </div>
        </form>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>