<?php

$module = 'videopublisher';
$_[$module.'_widgetName'] = 'videopublisherwidget';
$_[$module.'_name']					= $module;
$_[$module.'_version']				= '2.0.5';

if(version_compare(VERSION, '2.3.0.0', "<")) {

	$_[$module.'_path'] 				= 'module/'.$module;
	$_[$module.'_widgetPath'] 			= 'module/'.$module.'widget';
	$_[$module.'_model'] 				= 'model_module_'.$module;

	$_[$module.'_extensionLink'] 		= 'extension/module';
	$_[$module.'_extensionLink_type'] 	= '';

} else {

	$_[$module.'_path'] 				= 'extension/module/'.$module;
	$_[$module.'_widgetPath'] 			= 'extension/module/'.$module.'widget';
	$_[$module.'_model'] 				= 'model_extension_module_'.$module;

	$_[$module.'_extensionLink'] 		= 'extension/extension';
	$_[$module.'_extensionLink_type'] 	= '&type=module';

}



