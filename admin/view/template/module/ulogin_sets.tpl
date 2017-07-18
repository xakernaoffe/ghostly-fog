<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <div class="pull-right">
                <button type="submit" form="form-ulogin" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
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
        <div class="panel panel-default">
            <div class="panel-body">
                <?php echo $text_module_description; ?>
            </div>
        </div>
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
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-ulogin" class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-uloginid"><?php echo $entry_uloginid; ?></label>
                        <div class="col-sm-10">
                            <input
                                    type="text"
                                    name="ulogin_sets_uloginid"
                                    value="<?php echo isset($ulogin_sets_uloginid) ? $ulogin_sets_uloginid : ''; ?>"
                                    placeholder="<?php echo $entry_uloginid_pl; ?>"
                                    id="input-uloginid"
                                    class="form-control"
                                    maxlength="8"
                                    />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-user_group"><?php echo $entry_user_group; ?></label>
                        <div class="col-sm-10">
                            <select name="ulogin_sets_group" id="input-user_group" class="form-control">
                                <?php foreach ( $customer_groups as $group ) { ?>
                                    <option value="<?php echo $group['customer_group_id']; ?>" <?php if($group['customer_group_id'] == $ulogin_sets_group) { echo 'selected="selected"'; } ?>>
                                        <?php echo $group['name']; ?>
                                    </option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <input type="hidden"
                            name="ulogin_sets_status"
                            value="1"
                            id="input-status"
                            />
                </form>
            </div>
        </div>
    </div>
</div>
<?php echo $footer; ?>