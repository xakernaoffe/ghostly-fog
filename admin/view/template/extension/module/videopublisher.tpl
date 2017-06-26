<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">

	<div class="page-header">
    	<div class="container-fluid">
    		<div class="pull-right">
                <a onclick="$('#form').submit();" class="btn btn-primary save-changes"><i class="fa fa-save"></i></a>
    			<a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a>
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
    	<?php echo (empty($moduleData['LicensedOn'])) ? base64_decode('ICAgIDxkaXYgY2xhc3M9ImFsZXJ0IGFsZXJ0LWRhbmdlciBmYWRlIGluIj4NCiAgICAgICAgPGJ1dHRvbiB0eXBlPSJidXR0b24iIGNsYXNzPSJjbG9zZSIgZGF0YS1kaXNtaXNzPSJhbGVydCIgYXJpYS1oaWRkZW49InRydWUiPsOXPC9idXR0b24+DQogICAgICAgIDxoND5XYXJuaW5nISBVbmxpY2Vuc2VkIHZlcnNpb24gb2YgdGhlIG1vZHVsZSE8L2g0Pg0KICAgICAgICA8cD5Zb3UgYXJlIHJ1bm5pbmcgYW4gdW5saWNlbnNlZCB2ZXJzaW9uIG9mIHRoaXMgbW9kdWxlISBZb3UgbmVlZCB0byBlbnRlciB5b3VyIGxpY2Vuc2UgY29kZSB0byBlbnN1cmUgcHJvcGVyIGZ1bmN0aW9uaW5nLCBhY2Nlc3MgdG8gc3VwcG9ydCBhbmQgdXBkYXRlcy48L3A+PGRpdiBzdHlsZT0iaGVpZ2h0OjVweDsiPjwvZGl2Pg0KICAgICAgICA8YSBjbGFzcz0iYnRuIGJ0bi1kYW5nZXIiIGhyZWY9ImphdmFzY3JpcHQ6dm9pZCgwKSIgb25jbGljaz0iJCgnYVtocmVmPSNpc2Vuc2Vfc3VwcG9ydF0nKS50cmlnZ2VyKCdjbGljaycpIj5FbnRlciB5b3VyIGxpY2Vuc2UgY29kZTwvYT4NCiAgICA8L2Rpdj4=') : '' ?>
        
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
            </div>
            
            <div class="panel-body">
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
                    <input type="hidden" name="store_id" value="<?php echo $store['store_id']; ?>" />
                    
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="active"><a href="#videos" role="tab" data-toggle="tab"><i class="fa fa-film"></i>&nbsp;Videos</a></li>
                        <li><a href="#collections" role="tab" data-toggle="tab"><i class="fa fa-th"></i>&nbsp;Collections</a></li>
                        <li><a href="#settings" role="tab" data-toggle="tab"><i class="fa fa-cogs"></i>&nbsp;Settings</a></li>
                        <li><a href="#isense_support" role="tab" data-toggle="tab"><i class="fa fa-ticket"></i>&nbsp;Support</a></li>
                    </ul>
                        
                    <div class="tab-content">
                        <div class="tab-pane active" id="videos">
                        	<?php require_once(DIR_APPLICATION.'view/template/'.$modulePath.'/tab_videos.php'); ?>
                        </div>
                        <div class="tab-pane" id="collections">
                        	<?php require_once(DIR_APPLICATION.'view/template/'.$modulePath.'/tab_collections.php'); ?>
                        </div>
                        <div class="tab-pane" id="settings">
                        	<?php require_once(DIR_APPLICATION.'view/template/'.$modulePath.'/tab_settings.php'); ?>
                        </div>
                        <div class="tab-pane" id="isense_support">
                        	<?php require_once(DIR_APPLICATION.'view/template/'.$modulePath.'/tab_support.php'); ?>
                    	</div>
                    </div>
                </form>
            </div> 
        </div>
	</div>
</div>
<script type="text/javascript">
	$('#mainTabs a:first').tab('show'); // Select first tab
	if (window.localStorage && window.localStorage['currentTab']) {
		$('.mainMenuTabs a[href="'+window.localStorage['currentTab']+'"]').tab('show');
	}
	if (window.localStorage && window.localStorage['currentSubTab']) {
		$('a[href="'+window.localStorage['currentSubTab']+'"]').tab('show');
	}
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
</script>
<?php echo $footer; ?>