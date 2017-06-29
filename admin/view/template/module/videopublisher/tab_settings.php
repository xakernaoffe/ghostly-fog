<table class="table">
    <tr>
        <td class="col-xs-2<?php echo(count($languages) > 1 ) ? ' item-top' : ''; ?>"><label for="widgetTitle">Title of the module: <span class="help">This text will appear as a heading for the widgets and the dedicated video listing page</span></label></td>
        <td>
			<?php foreach($languages as $language) { ?>
                <div class="col-xs-4 vp-block">
                    <div class="input-group">
                        <div class="input-group-addon">
                            <img src="view/image/flags/<?php echo $language['image']; ?>" />
                        </div>
                        <input type="text" id="widgetTitle" class="form-control" name="<?php echo $moduleName; ?>[module_title][<?php echo $language['language_id']; ?>]" value="<?php echo !empty($moduleData['module_title'][$language['language_id']]) ? $moduleData['module_title'][$language['language_id']] : 'Video Reviews'; ?>" />
                    </div>
                </div>
            <?php } ?>
        </td>
    </tr>
    <tr>
        <td class="col-xs-2"><label for="relatedReviewsStatus">Show related reviews tab</label></td>
        <td>
            <div class="col-xs-4">
                <select id="relatedReviewsStatus" name="<?php echo $moduleName; ?>[related_reviews_tab]" class="form-control">
                    <option value="1"<?php echo !empty($moduleData['related_reviews_tab']) ? ' selected="selected"' : '';?>>Enabled</option>
                    <option value="0"<?php echo empty($moduleData['related_reviews_tab']) ? ' selected="selected"' : '';?>>Disabled</option>
                </select>
            </div>    
        </td>
    </tr>
    <tr>
        <td class="col-xs-2<?php echo(count($languages) > 1 ) ? ' item-top' : ''; ?>"><label for="relatedReviewsWidgetTitle">Title of the related reviews tab</label></td>
        <td>
			<?php foreach($languages as $language) { ?>
                <div class="col-xs-4 vp-block">
                    <div class="input-group">
                        <div class="input-group-addon">
                            <img src="view/image/flags/<?php echo $language['image']; ?>" />
                        </div>
                        <input type="text" id="relatedReviewsWidgetTitle" class="form-control" name="<?php echo $moduleName; ?>[related_tab_title][<?php echo $language['language_id']; ?>]" value="<?php echo !empty($moduleData['related_tab_title'][$language['language_id']]) ? $moduleData['related_tab_title'][$language['language_id']] : 'Related Videos'; ?>" />
                    </div>    
                </div>   
            <?php } ?>
        </td>
    </tr>
    <tr>
        <td><label for="futureDateVideosStatus">Show videos scheduled for future date</label></td>
        <td>
            <div class="col-xs-4">
                <select id="futureDateVideosStatus" class="form-control" name="<?php echo $moduleName; ?>[show_future_reviews]">
                    <option value="1"<?php echo !empty($moduleData['show_future_reviews']) ? ' selected="selected"' : '';?>>Enabled</option>
                    <option value="0"<?php echo empty($moduleData['show_future_reviews']) ? ' selected="selected"' : '';?>>Disabled</option>
                </select>
            </div>    
        </td>
    </tr>
    <tr>
        <td><label for="popupVideoStatus">Display reviews in popup<span class="help">This will open the reviews in a colorbox window instead of loading a separate page. Disable if you want better SEO</span></label></td>
        <td>
            <div class="col-xs-4">
                <select id="popupVideoStatus" class="form-control" name="<?php echo $moduleName; ?>[use_colorbox]">
                    <option value="1"<?php echo !empty($moduleData['use_colorbox']) ? ' selected="selected"' : '';?>>Enabled</option>
                    <option value="0"<?php echo empty($moduleData['use_colorbox']) ? ' selected="selected"' : '';?>>Disabled</option>
                </select>
            </div>    
        </td>
    </tr>
    <tr>
        <td><label for="collectionsStatus">Group reviews in collections<span class="help">When display in popup is enabled, this will group videos from the same widget in collections so they can be changed like if it was a gallery</span></label></td>
        <td>
            <div class="col-xs-4">
                <select id="collectionsStatus" class="form-control" name="<?php echo $moduleName; ?>[use_collections]">
                    <option value="1"<?php echo !empty($moduleData['use_collections']) ? ' selected="selected"' : '';?>>Enabled</option>
                    <option value="0"<?php echo empty($moduleData['use_collections']) ? ' selected="selected"' : '';?>>Disabled</option>
                </select>
            </div>
        </td>
    </tr>
    <tr>
        <td><label for="relatedVideosStatus">Hide related videos after the video ends <span class="help">This is youtube specific setting</span></label></td>
        <td>
            <div class="col-xs-4">
                <select id="relatedVideosStatus" class="form-control" name="<?php echo $moduleName; ?>[hide_related]">
                    <option value="1"<?php echo !empty($moduleData['hide_related']) ? ' selected="selected"' : '';?>>Enabled</option>
                    <option value="0"<?php echo empty($moduleData['hide_related']) ? ' selected="selected"' : '';?>>Disabled</option>
                </select>
            </div>
        </td>
    </tr>
    <tr>
        <td><label for="autoplayStatus">Autoplay videos</label></td>
        <td>
            <div class="col-xs-4">
                <select id="autoplayStatus" class="form-control" name="<?php echo $moduleName; ?>[autoplay]">
                    <option value="1"<?php echo !empty($moduleData['autoplay']) ? ' selected="selected"' : '';?>>Enabled</option>
                    <option value="0"<?php echo empty($moduleData['autoplay']) ? ' selected="selected"' : '';?>>Disabled</option>
                </select>
            </div>
        </td>
    </tr>
    <tr>
        <td><label for="httpsStatus">Use HTTPS <span class="help">Enable this only if you are using HTTPS for your site. This option will fix the "mixed content" warning.</span></label></td>
        <td>
            <div class="col-xs-4">
                <select id="httpsStatus" class="form-control" name="<?php echo $moduleName; ?>[use_https]">
                    <option value="1"<?php echo !empty($moduleData['use_https']) ? ' selected="selected"' : '';?>>Enabled</option>
                    <option value="0"<?php echo empty($moduleData['use_https']) ? ' selected="selected"' : '';?>>Disabled</option>
                </select>
            </div>
        </td>
    </tr>
    <tr>
        <td><label for="videopopupWidth">Width of the colorbox popup:</label></td>
        <td>
            <div class="col-xs-4">
            <input id="videopopupWidth" class="form-control" type="text" name="<?php echo $moduleName; ?>[colorbox_width]"<?php echo !empty($moduleData['colorbox_width']) ? ' value="'.$moduleData['colorbox_width'].'"' : ' value="700px"';?> />
            </div>
        </td>
    </tr>
    <tr>
        <td><label for="reviewsWidgetLimit">Limit showed reviews in the widgets to: <span class="help">How many reviews to display in the widgets</span></label></td>
        <td>
            <div class="col-xs-4">
                <input id="reviewsWidgetLimit" type="number" class="form-control" min="1" name="<?php echo $moduleName; ?>[widget_limit]"<?php echo !empty($moduleData['widget_limit']) ? ' value="'.$moduleData['widget_limit'].'"' : ' value="3"';?> />
            </div>
        </td>
    </tr>
    <tr>
        <td><label for="reviewsDedicatedLimit">Limit showed reviews in the dedicated page to: <span class="help">How many reviews to display in the dedicated reviews page</span></label></td>
        <td>
            <div class="col-xs-4">
                <input id="reviewsDedicatedLimit" class="form-control" type="number" min="1" name="<?php echo $moduleName; ?>[dedicated_limit]"<?php echo !empty($moduleData['dedicated_limit']) ? ' value="'.$moduleData['dedicated_limit'].'"' : ' value="10"';?> />
            </div>
        </td>
    </tr>
     <tr>
        <td><label for="relatedProductsStatus">Show related products in the reviews <span class="help">Show the products to which the review is associated</span></label></td>
        <td>
            <div class="col-xs-4">
                <select id="relatedProductsStatus" class="form-control" name="<?php echo $moduleName; ?>[related_products]">
                    <option value="1"<?php echo !empty($moduleData['related_products']) ? ' selected="selected"' : '';?>>Enabled</option>
                    <option value="0"<?php echo empty($moduleData['related_products']) ? ' selected="selected"' : '';?>>Disabled</option>
                </select>
            </div>
        </td>
    </tr>
    <tr>
        <td><label for="fbkcommentsStatus">Show facebook comments for the reviews</label></td>
        <td>
            <div class="col-xs-4">
                <select id="fbkcommentsStatus" class="form-control" name="<?php echo $moduleName; ?>[fb_comments]">
                    <option value="1"<?php echo !empty($moduleData['fb_comments']) ? ' selected="selected"' : '';?>>Enabled</option>
                    <option value="0"<?php echo empty($moduleData['fb_comments']) ? ' selected="selected"' : '';?>>Disabled</option>
                </select>
            </div>    
        </td>
    </tr>
    <tr>
        <td><label for="fbkcommentsColorscheme">Facebook comments colorscheme</label></td>
        <td>
            <div class="col-xs-4">
                <select id="fbkcommentsColorscheme" class="form-control" name="<?php echo $moduleName; ?>[fb_comments_colorscheme]">
                    <option value="light"<?php echo (empty($moduleData['fb_comments_colorscheme']) || $moduleData['fb_comments_colorscheme'] == 'light') ? ' selected="selected"' : '';?>>Light</option>
                    <option value="dark"<?php echo (!empty($moduleData['fb_comments_colorscheme']) && $moduleData['fb_comments_colorscheme'] == 'dark') ? ' selected="selected"' : '';?>>Dark</option>
                </select>
            </div>
        </td>
    </tr>
    <tr>
        <td><label for="fbkcommentsOrder">Facebook comments order <span class="help">The order in which the comments should be displayed</span></label></td>
        <td>
            <div class="col-xs-4">
                <select id="fbkcommentsOrder" class="form-control" name="<?php echo $moduleName; ?>[fb_comments_order]">
                    <option value="social"<?php echo (empty($moduleData['fb_comments_order']) || $moduleData['fb_comments_order'] == 'social') ? ' selected="selected"' : '';?>>Social</option>
                    <option value="reverse_time"<?php echo (!empty($moduleData['fb_comments_order']) && $moduleData['fb_comments_order'] == 'reverse_time') ? ' selected="selected"' : '';?>>Most recent first</option>
                    <option value="time"<?php echo (!empty($moduleData['fb_comments_order']) && $moduleData['fb_comments_order'] == 'time') ? ' selected="selected"' : '';?>>Oldest first</option>
                </select>
            </div>
        </td>
    </tr>
    <tr>
        <td><label for="fbkcommentsAdmins">Facebook comments administrators<span class="help">List of facebook user IDs separated by comma without spaces.</span></label></td>
        <td>
            <div class="col-xs-4">
                <input id="fbkcommentsAdmins" class="form-control" type="text" name="<?php echo $moduleName; ?>[fb_comments_admins]"<?php echo !empty($moduleData['fb_comments_admins']) ? ' value="'.$moduleData['fb_comments_admins'].'"' : '';?> />
            </div>
        </td>
    </tr>
    <tr>
        <td><label for="fbkcommentsID">Facebook comments AppID<span class="help">Facebook AppID to manage your comments. If this is present the administrators list will be ignored.</span></label></td>
        <td>
            <div class="col-xs-4">
              <input id="fbkcommentsID" class="form-control" type="text" name="<?php echo $moduleName; ?>[fb_comments_appid]"<?php echo !empty($moduleData['fb_comments_appid']) ? ' value="'.$moduleData['fb_comments_appid'].'"' : '';?> />
            </div>
        </td>
    </tr>
    <tr>
        <td><label for="fbkcommentsNumber">Number of facebook comments: <span class="help">How many comments to display at load time. The users still have the option to view more.</span></label></td>
        <td>
            <div class="col-xs-4">
                <input id="fbkcommentsNumber" class="form-control" type="number" min="1" name="<?php echo $moduleName; ?>[fb_comments_num]"<?php echo !empty($moduleData['fb_comments_num']) ? ' value="'.$moduleData['fb_comments_num'].'"' : ' value="10"';?> />
            </div>    
        </td>
    </tr>
</table>