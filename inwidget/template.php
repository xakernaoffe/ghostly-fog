<?php 
/**
 * Project:     inWidget: show pictures from instagram.com on your site!
 * File:        template.php
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of MIT license
 * http://inwidget.ru/MIT-license.txt
 * 
 * @link http://inwidget.ru
 * @copyright 2014-2017 Alexandr Kazarmshchikov
 * @author Alexandr Kazarmshchikov
 * @version 1.1.0
 * @package inWidget
 *
 */

if(!$inWidget) die('inWidget object was not initialised.');
if(!is_object($inWidget->data)) die('<b style="color:red;">Cache file contains plain text:</b><br />'.$inWidget->data);

?>
<!DOCTYPE html> 
<html lang="ru">
	<head>
		<title>inWidget - free Instagram widget for your site!</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta http-equiv="content-language" content="<?php echo $inWidget->langName; ?>" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="css/default.css?r1" media="all" />
	</head>
<body>
<div id="widget" class="widget">
	<?php
		if($inWidget->toolbar == true) { 
			echo '
			<table class="profile">
				<tr>
					<td rowspan="2" class="avatar">
						<a href="http://instagram.com/'.$inWidget->data->username.'" target="_blank"><img src="'.$inWidget->data->avatar.'"></a>
					</td>
					<td class="value">
						'.$inWidget->data->posts.'
						<span>'.$inWidget->lang['statPosts'].'</span>
					</td>
					<td class="value">
						'.$inWidget->data->followers.'
						<span>'.$inWidget->lang['statFollowers'].'</span>
					</td>
					<td class="value" style="border-right:none !important;">
						'.$inWidget->data->following.'
						<span>'.$inWidget->lang['statFollowing'].'</span>
					</td>
				</tr>
				<tr>
					<td colspan="3" style="border-right:none !important;">
						<a href="http://instagram.com/'.$inWidget->data->username.'" class="follow" target="_blank">'.$inWidget->lang['buttonFollow'].' &#9658;</a>
					</td>
				</tr>
			</table>';
		}
		$i = 0;
		$count = $inWidget->countAvailableImages($inWidget->data->images);
		if($count>0) {
			if($inWidget->config['imgRandom'] === true) shuffle($inWidget->data->images);
			//$inWidget->data->images = array_slice($inWidget->data->images,0,$inWidget->view);
			echo '<div id="widgetData" class="data">';
				foreach ($inWidget->data->images as $key=>$item){
					if($inWidget->isBannedUserId($item->authorId) == true) continue;
					switch ($inWidget->preview){
						case 'large':
							$thumbnail = $item->large;
							break;
						case 'fullsize':
							$thumbnail = $item->fullsize;
							break;
						default:
							$thumbnail = $item->small;
					}
					echo '<a href="'.$item->link.'" class="image" target="_blank">
                        <div class="shadow">
                            <span class="likes">
                            <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMS4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDQ3MS43MDEgNDcxLjcwMSIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNDcxLjcwMSA0NzEuNzAxOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjI0cHgiIGhlaWdodD0iMjRweCI+CjxnPgoJPHBhdGggZD0iTTQzMy42MDEsNjcuMDAxYy0yNC43LTI0LjctNTcuNC0zOC4yLTkyLjMtMzguMnMtNjcuNywxMy42LTkyLjQsMzguM2wtMTIuOSwxMi45bC0xMy4xLTEzLjEgICBjLTI0LjctMjQuNy01Ny42LTM4LjQtOTIuNS0zOC40Yy0zNC44LDAtNjcuNiwxMy42LTkyLjIsMzguMmMtMjQuNywyNC43LTM4LjMsNTcuNS0zOC4yLDkyLjRjMCwzNC45LDEzLjcsNjcuNiwzOC40LDkyLjMgICBsMTg3LjgsMTg3LjhjMi42LDIuNiw2LjEsNCw5LjUsNGMzLjQsMCw2LjktMS4zLDkuNS0zLjlsMTg4LjItMTg3LjVjMjQuNy0yNC43LDM4LjMtNTcuNSwzOC4zLTkyLjQgICBDNDcxLjgwMSwxMjQuNTAxLDQ1OC4zMDEsOTEuNzAxLDQzMy42MDEsNjcuMDAxeiBNNDE0LjQwMSwyMzIuNzAxbC0xNzguNywxNzhsLTE3OC4zLTE3OC4zYy0xOS42LTE5LjYtMzAuNC00NS42LTMwLjQtNzMuMyAgIHMxMC43LTUzLjcsMzAuMy03My4yYzE5LjUtMTkuNSw0NS41LTMwLjMsNzMuMS0zMC4zYzI3LjcsMCw1My44LDEwLjgsNzMuNCwzMC40bDIyLjYsMjIuNmM1LjMsNS4zLDEzLjgsNS4zLDE5LjEsMGwyMi40LTIyLjQgICBjMTkuNi0xOS42LDQ1LjctMzAuNCw3My4zLTMwLjRjMjcuNiwwLDUzLjYsMTAuOCw3My4yLDMwLjNjMTkuNiwxOS42LDMwLjMsNDUuNiwzMC4zLDczLjMgICBDNDQ0LjgwMSwxODcuMTAxLDQzNC4wMDEsMjEzLjEwMSw0MTQuNDAxLDIzMi43MDF6IiBmaWxsPSIjRkZGRkZGIi8+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPC9zdmc+Cg==" />&nbsp;&nbsp;
                            '.$item->likesCount.'</span>
                            <span class="comments">
                            <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTguMS4xLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDYxMiA2MTIiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDYxMiA2MTI7IiB4bWw6c3BhY2U9InByZXNlcnZlIiB3aWR0aD0iMjRweCIgaGVpZ2h0PSIyNHB4Ij4KPGc+Cgk8Zz4KCQk8cGF0aCBkPSJNNTM1LjA0LDBINzYuOTYxQzM1LjkzOSwwLDIuNTY0LDMzLjM3NSwyLjU2NCw3NC4zOTl2MzAwLjQ5MWMwLDQxLjAyMywzMy4zNzUsNzQuMzk5LDc0LjM5OSw3NC4zOTloMjUwLjg2M3YxNDQuNTU1ICAgIGMwLDcuNTgsNC43MSwxNC4zNjEsMTEuODExLDE3LjAxMWMyLjA3LDAuNzcyLDQuMjE1LDEuMTQ0LDYuMzM5LDEuMTQ0YzUuMTY3LDAsMTAuMjA5LTIuMjA3LDEzLjcyNy02LjI2OGwxMzUuNTItMTU2LjQ0MmgzOS44MTUgICAgYzQxLjAyMywwLDc0LjM5OC0zMy4zNzUsNzQuMzk4LTc0LjM5OVY3NC4zOTlDNjA5LjQzOCwzMy4zNzUsNTc2LjA2MywwLDUzNS4wNCwweiBNNTczLjEyOCwzNzQuODkxICAgIGMwLDIxLjAwMS0xNy4wODUsMzguMDg5LTM4LjA4OCwzOC4wODljMCwwLTQ2Ljk3MiwwLjAxMi00Ny4yNDgsMGMtNS4zNjYtMC4yNTEtMTAuNzkyLDEuODkxLTE0LjU4Myw2LjI2OEwzNjQuMTM4LDU0NS4xNjEgICAgVjQzMS4xMzdjMC0xMC4wMjYtOC4xMjktMTguMTU1LTE4LjE1NS0xOC4xNTVINzYuOTYxYy0yMS4wMDIsMC0zOC4wODktMTcuMDg4LTM4LjA4OS0zOC4wODlWNzQuMzk5ICAgIEMzOC44NzQsNTMuMzk4LDU1Ljk1OSwzNi4zMSw3Ni45NjEsMzYuMzFoNDU4LjA3N2MyMS4wMDIsMCwzOC4wODgsMTcuMDg4LDM4LjA4OCwzOC4wODl2MzAwLjQ5MUg1NzMuMTI4eiIgZmlsbD0iI0ZGRkZGRiIvPgoJCTxwYXRoIGQ9Ik01MDkuMjksMTE5Ljc1MUgxMDIuNzEzYy0xMC4wMjYsMC0xOC4xNTUsOC4xMjktMTguMTU1LDE4LjE1NXM4LjEyOSwxOC4xNTUsMTguMTU1LDE4LjE1NUg1MDkuMjkgICAgYzEwLjAyNiwwLDE4LjE1NS04LjEyOSwxOC4xNTUtMTguMTU1UzUxOS4zMTgsMTE5Ljc1MSw1MDkuMjksMTE5Ljc1MXoiIGZpbGw9IiNGRkZGRkYiLz4KCQk8cGF0aCBkPSJNNTA5LjI5LDIwNi40ODlIMTAyLjcxM2MtMTAuMDI2LDAtMTguMTU1LDguMTI5LTE4LjE1NSwxOC4xNTVjMCwxMC4wMjYsOC4xMjksMTguMTU1LDE4LjE1NSwxOC4xNTVINTA5LjI5ICAgIGMxMC4wMjYsMCwxOC4xNTUtOC4xMjksMTguMTU1LTE4LjE1NUM1MjcuNDQ1LDIxNC42MTgsNTE5LjMxOCwyMDYuNDg5LDUwOS4yOSwyMDYuNDg5eiIgZmlsbD0iI0ZGRkZGRiIvPgoJCTxwYXRoIGQ9Ik0yOTUuMTU5LDI5My4yMjVIMTAyLjcxM2MtMTAuMDI2LDAtMTguMTU1LDguMTI5LTE4LjE1NSwxOC4xNTVzOC4xMjksMTguMTU1LDE4LjE1NSwxOC4xNTVoMTkyLjQ0OCAgICBjMTAuMDI2LDAsMTguMTU1LTguMTI5LDE4LjE1NS0xOC4xNTVDMzEzLjMxNCwzMDEuMzU1LDMwNS4xODcsMjkzLjIyNSwyOTUuMTU5LDI5My4yMjV6IiBmaWxsPSIjRkZGRkZGIi8+Cgk8L2c+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPC9zdmc+Cg==" /> &nbsp;&nbsp;
                            '.$item->commentsCount.'</span>
                        </div>
					<span style="background-image:url('.$thumbnail.');">&nbsp;</span></a>';
					$i++;
					if($i >= $inWidget->view) break;
				}
				echo '<div class="clear">&nbsp;</div>';
			echo '</div>';
		}
		else {
			if(!empty($inWidget->config['HASHTAG'])) {
				$inWidget->lang['imgEmptyByHash'] = str_replace(
					'{$hashtag}', 
					$inWidget->config['HASHTAG'], 
					$inWidget->lang['imgEmptyByHash']
				);
				echo '<div class="empty">'.$inWidget->lang['imgEmptyByHash'].'</div>';
			}
			else echo '<div class="empty">'.$inWidget->lang['imgEmpty'].'</div>';
		}
	?>
</div>
</body>
</html>
<!-- 
	inWidget - free Instagram widget for your site!
	http://inwidget.ru
	© Alexandr Kazarmshchikov
-->