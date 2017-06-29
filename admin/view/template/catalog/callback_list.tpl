<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right"><button type="button" data-toggle="tooltip" title="<?php echo $button_delete; ?>" class="btn btn-danger" onclick="confirm('<?php echo $text_confirm; ?>') ? $('#form-information').submit() : false;"><i class="fa fa-trash-o"></i></button>
      </div>
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
    <?php if ($success) { ?>
    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-list"></i> <?php echo $text_list; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form-information">
          <div class="table-responsive">
            <table class="table table-bordered table-hover">
			  <thead>
                <tr>
				  <td width="1" class="text-center"><input type="checkbox" onclick="$('input[name*=\'selected\']').attr('checked', this.checked);" /></td>
				  <td class="text-left"><?php if ($sort == 'title') { ?>
                    <a href="<?php echo $sort_title; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_title; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_title; ?>"><?php echo $column_title; ?></a>
                    <?php } ?></td>	
				  <td class="text-left"><?php if ($sort == 'name') { ?>
                    <a href="<?php echo $sort_name; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_name; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_name; ?>"><?php echo $column_name; ?></a>
                    <?php } ?></td>	
				  <td class="text-left"><?php if ($sort == 'email') { ?>
                    <a href="<?php echo $sort_email; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_email; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_email; ?>"><?php echo $column_email; ?></a>
                    <?php } ?></td>	
				  <td class="text-left"><?php if ($sort == 'time') { ?>
                    <a href="<?php echo $sort_time; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_time; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_time; ?>"><?php echo $column_time; ?></a>
                    <?php } ?></td>	
				  <td class="text-left"><?php if ($sort == 'phone') { ?>
                    <a href="<?php echo $sort_phone; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_phone; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_phone; ?>"><?php echo $column_phone; ?></a>
                    <?php } ?></td>					
				  <td class="text-left"><?php if ($sort == 'text') { ?>
                    <a href="<?php echo $sort_text; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_text; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_text; ?>"><?php echo $column_text; ?></a>
                    <?php } ?></td>
				  <td class="text-left"><?php echo $column_url; ?></td>
                  <td class="text-left"><?php if ($sort == 'date_added') { ?>
                    <a href="<?php echo $sort_date_added; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_date_added; ?></a>
                    <?php } else { ?>
                    <a href="<?php echo $sort_date_added; ?>"><?php echo $column_date_added; ?></a>
                    <?php } ?></td>
                </tr>
              </thead>
              <tbody>
                <?php if ($callbacks) { ?>
                <?php foreach ($callbacks as $callback) { ?>
                <tr>
                  <td class="text-center"><?php if (in_array($callback['callback_id'], $selected)) { ?>
                    <input type="checkbox" name="selected[]" value="<?php echo $callback['callback_id']; ?>" checked="checked" />
                    <?php } else { ?>
                    <input type="checkbox" name="selected[]" value="<?php echo $callback['callback_id']; ?>" />
                    <?php } ?></td>
				  <td class="text-left"><?php echo $callback['title']; ?></td>
				  <td class="text-left"><?php echo $callback['name']; ?></td>
				  <td class="text-left"><?php echo $callback['email']; ?></td>
				  <td class="text-left"><?php echo $callback['time']; ?></td>
				  <td class="text-left"><?php echo $callback['phone']; ?></td>
				  <td class="text-left"><?php echo $callback['text']; ?></td>
				  <td class="text-left"><?php echo $callback['url']; ?></td>
				  <td class="text-left"><?php echo $callback['date_added']; ?></td>
                </tr>
                <?php } ?>
                <?php } else { ?>
                <tr>
                  <td class="text-center" colspan="9"><?php echo $text_no_results; ?></td>
                </tr>
                <?php } ?>
              </tbody>
            </table>
	      </div>
		</form>
		<div class="row">
          <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
          <div class="col-sm-6 text-right"><?php echo $results; ?></div>
        </div>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>