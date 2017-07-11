<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
 <div class="page-header">
    <div class="container-fluid">
      <h1><i class="fa fa-plus-square"></i>&nbsp;<?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
	       <?php if ($error_warning) { ?>
            <div class="alert alert-danger autoSlideUp"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
             <button type="button" class="close" data-dismiss="alert">&times;</button>
            </div>
        <?php } ?>
        <?php if ($success) { ?>
            <div class="alert alert-success autoSlideUp"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
                <button type="button" class="close" data-dismiss="alert">&times;</button>
            </div>
            <script>$('.autoSlideUp').delay(3000).fadeOut(600, function(){ $(this).show().css({'visibility':'hidden'}); }).slideUp(600);</script>
        <?php } ?>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-list"></i>&nbsp;<span style="vertical-align:middle;font-weight:bold;">Module settings</span></h3>
                <div class="storeSwitcherWidget">
                    <div class="form-group">
                        <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown"><?php echo $store['name']; if($store['store_id'] == 0) echo " <strong>(".$text_default.")</strong>"; ?>&nbsp;<span class="caret"></span><span class="sr-only">Toggle Dropdown</span></button>
                        <ul class="dropdown-menu" role="menu">
                            <?php foreach ($stores  as $st) { ?>
                                <li><a href="index.php?route=module/addthis&store_id=<?php echo $st['store_id'];?>&token=<?php echo $token; ?>"><?php echo $st['name']; ?></a></li>
                            <?php } ?> 
                        </ul>
                    </div>
                </div>
            </div>
            <div class="panel-body">
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form"> 
                    <input type="hidden" name="store_id" value="<?php echo $store['store_id']; ?>" />
                    <input type="hidden" name="addthis_status" value="1" />
                    <div class="tabbable">
                        <div class="tab-navigation form-inline">
                            <ul class="nav nav-tabs mainMenuTabs" id="mainTabs">
                                <li><a href="#control_panel" data-toggle="tab"><i class="fa fa-power-off"></i>&nbsp;Control Panel</a></li>
                                <li id="mainSettingsTab"><a href="#main_settings" data-toggle="tab"><i class="fa fa-cogs"></i>&nbsp;Settings</a></li>
                            </ul>
                            <div class="tab-buttons">
                                <button type="submit" class="btn btn-success save-changes"><i class="fa fa-check"></i>&nbsp;<?php echo $save_changes?></button>
                                <a onclick="location = '<?php echo $cancel; ?>'" class="btn btn-warning"><i class="fa fa-times"></i>&nbsp;<?php echo $button_cancel?></a>
                            </div> 
                        </div><!-- /.tab-navigation --> 
                        <div class="tab-content">
                        <?php
                        if (!function_exists('modification_vqmod')) {
                        	function modification_vqmod($file) {
                        		if (class_exists('VQMod')) {
                       				return VQMod::modCheck(modification($file), $file);
                        		} else {
                        			return modification($file);
                       			}
                        	}
                        }
						?>
                            <div id="main_settings" class="tab-pane fade"><?php require_once modification_vqmod(DIR_APPLICATION.'view/template/module/addthis/tab_settings.php'); ?></div>
                            <div id="control_panel" class="tab-pane fade"><?php require_once modification_vqmod(DIR_APPLICATION.'view/template/module/addthis/tab_controlpanel.php'); ?></div>
                            
                        </div> <!-- /.tab-content --> 
                    </div><!-- /.tabbable -->
                </form>
            </div> 
        </div>
    </div>
</div>
<script type="text/javascript">
(function($) {
    $(document).ready(function(){
        $('#mainTabs a').first().tab('show'); // Select first tab
        if (window.localStorage && window.localStorage['currentTab']) {
            $('.mainMenuTabs a[href="'+window.localStorage['currentTab']+'"]').tab('show');
        }
        if (window.localStorage && window.localStorage['currentSubTab']) {
            $('a[href="'+window.localStorage['currentSubTab']+'"]').tab('show');
        }
        $('.fadeInOnLoad').css('visibility','visible');
        $('.mainMenuTabs a[data-toggle="tab"]').click(function() {
            if (window.localStorage) {
                window.localStorage['currentTab'] = $(this).attr('href');
            }
        });
        $('a[data-toggle="tab"]:not(.mainMenuTabs a[data-toggle="tab"], .review_tabs a[data-toggle="tab"])').click(function() {
            if (window.localStorage) {
                window.localStorage['currentSubTab'] = $(this).attr('href');
            }
        });
    });
})(jQuery);

</script>
<?php echo $footer; ?>