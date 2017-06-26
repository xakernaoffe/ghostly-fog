<div class="modal-dialog modal-lg">
	<div class="modal-content">
    	<form method="post" enctype="multipart/form-data" id="review-form">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title"><?php echo $heading_title; ?></h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-xs-12">
                    	<?php if (isset($pvr_id)) {  ?>
                        	<input type="hidden" name="review_id" id="pvr_id" value="<?php echo $pvr_id; ?>" />
    					<?php } ?>
                        <ul class="nav nav-tabs" role="tablist">
                            <?php $index_1 = 0; foreach($languages as $language) : ?>
                                <li<?php echo $index_1 == 0 ? ' class="active"' : ''; ?>>
                                    <a href="#sub_tab_<?php echo $index_1; ?>" role="tab" data-toggle="tab"><img src="<?php echo $language['flag_url'] ?>" title="<?php echo $language['name']; ?>" /></a>
                                </li>
                            <?php $index_1++; endforeach; ?>
                        </ul>
                        
                        <div class="tab-content review_form">
                            <?php $index_1 = 0; $index_3=0; foreach($languages as $language) : ?>
                                <div class="tab-pane<?php echo $index_1 == 0 ? ' active' : ''; ?>" id="sub_tab_<?php echo $index_1; ?>">
                                    <table class="table">
                                        <tr>
                                            <td class="col-xs-2"><label for="videoReviewTitle"><span class="required">*</span>Title</label></td>
                                            <td>
                                                <div class="col-xs-6">
                                                    <input type="text" name="videoReview[<?php echo $language['language_id'];?>][title]" id="videoReviewTitle<?php echo $language['language_id'];?>" class="form-control required" value="<?php echo isset($videoReviewsDescription[$language['language_id']]) ? $videoReviewsDescription[$language['language_id']]['title'] : ''; ?>" required />
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="col-xs-2"><label for="videoReviewAuthor"><span class="required">*</span>Author</label></td>
                                            <td>
                                                <div class="col-xs-6">
                                                    <input type="text" name="videoReview[<?php echo $language['language_id'];?>][author]" id="videoReviewAuthor<?php echo $language['language_id'];?>" class="form-control required" value="<?php echo isset($videoReviewsDescription[$language['language_id']]) ? $videoReviewsDescription[$language['language_id']]['author'] : ''; ?>"/>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="col-xs-2"><label for="videoReviewSlug"><span class="required">*</span>Slug<span class="help">The SEO friendly URL</span></label></td>
                                            <td>
                                                <div class="col-xs-6">
                                                    <input type="text" name="videoReview[<?php echo $language['language_id'];?>][slug]" id="videoReviewSlug<?php echo $language['language_id'];?>" class="form-control required" value="<?php echo isset($videoReviewsDescription[$language['language_id']]) ? $videoReviewsDescription[$language['language_id']]['slug'] : ''; ?>" required/>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="col-xs-2"><label for="videoReviewImage<?php echo $language['language_id'];?>">Video Image<span class="help">Leave blank for auto detect</span></label></td>
                                            <td>
                                                <div class="col-xs-12">
                                                    <div  id="video-review-image">
                                                        <input type="text" name="videoReview[<?php echo $language['language_id'];?>][image]" id="videoReviewImage<?php echo $language['language_id'];?>" value="<?php echo isset($videoReviewsDescription[$language['language_id']]) ? ( strpos($videoReviewsDescription[$language['language_id']]['image_link'],'pvr-noimage') !== false ? '' : $videoReviewsDescription[$language['language_id']]['image_link']) : ''; ?>" class="form-control videoReviewImage" placeholder="Leave blank for autodetect"/>
                                                        <a href="" id="vid-img<?php echo $language['language_id'];?>" data-toggle="image" class="img-thumbnail"><img src="<?php echo isset($videoReviewsDescription[$language['language_id']]['image_link']) ? $videoReviewsDescription[$language['language_id']]['image_link'] : 'view/image/videopublisher/pvr-noimage.png'; ?>" alt="" title="" data-placeholder="" width="50" height="50" /></a>
                  <input type="hidden" name="videoReview[<?php echo $language['language_id'];?>][image_link]" value="<?php echo isset($videoReviewsDescription[$language['language_id']]['image_link']) ? $videoReviewsDescription[$language['language_id']]['image_link'] : ''; ?>" id="" />
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="col-xs-2"><label for="videoReviewLink<?php echo $language['language_id'];?>"><span class="required">*</span>Video Source</label></td>
                                            <td>
                                                <div class="col-xs-12">
                                                    <div  id="video-review-source">
                                                    
                                                    <input type="text" name="videoReview[<?php echo $language['language_id'];?>][link]" id="videoReviewSource<?php echo $language['language_id'];?>"  value="<?php echo isset($videoReviewsDescription[$language['language_id']]['link']) ? $videoReviewsDescription[$language['language_id']]['link'] : ''; ?>" class="form-control videoReviewLink required" />
                                                        
                                                     <a href="" id="vid-link<?php echo $language['language_id'];?>" data-toggle="image" class="img-thumbnail"><img src="<?php echo isset($videoReviewsDescription[$language['language_id']]['link']) ? 'data:text/javascript;base64,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' : 'view/image/videopublisher/pvr-play-grey.png'; ?>" alt="" title="" data-placeholder="" /></a>
                  <input type="hidden" name="videoReview[<?php echo $language['language_id'];?>][video_link]" value="<?php echo isset($videoReviewsDescription[$language['language_id']]['video_link']) ? $videoReviewsDescription[$language['language_id']]['video_link'] : ''; ?>" id="" />                                                    </div>
                                                
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="col-xs-2 item-top"><label for="videoReviewContent<?php echo $language['language_id'];?>">Review Text</label></td>
                                            <td>
                                                <div class="col-xs-12">
                                                    <textarea name="videoReview[<?php echo $language['language_id'];?>][text]" id="videoReviewContent<?php echo $language['language_id'];?>" class="form-control"><?php echo isset($videoReviewsDescription[$language['language_id']]['text']) ? $videoReviewsDescription[$language['language_id']]['text'] : ''; ?></textarea>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            <?php $index_1++; endforeach; ?>
                        </div>	
                            
                            
                        <table class="table">
                            <tr>
                                <td class="col-xs-2"><label for="videoReviewDate">Date</label></td>
                                <td>
                                    <div class="col-xs-6">
                                    	<input type="text" name="date" id="videoReviewDate" value="<?php if(isset($videoReview['date'])) { echo $videoReview['date']; } else { echo $date_published; } ?>" size="12" data-format="YYYY-MM-DD" class="datetime form-control" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="col-xs-2"><label for="videoReviewRatingStatus">Show rating</label></td>
                                <td>
                                    <div class="col-xs-6">
                                        <input type="checkbox" name="rating_status" value="1" <?php if (isset($videoReview['display_rating']) && $videoReview['display_rating'] == 1)  { echo 'checked'; } ?> id="videoReviewRating" class="useReviewRatingSystem"/>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="col-xs-2"><label for="videoReviewRating">Set rating</label></td>
                                <td>
                                    <div class="col-xs-6">
                                        <input type="hidden" name="rating" id="videoReviewRating" value="1"/>
                                        <input type="radio" name="rating" class="rating" value="1" <?php if (!isset($videoReview['rating']) || (isset($videoReview['rating']) && $videoReview['rating'] == 1))  { echo 'checked'; } ?>/>
                                        <input type="radio" name="rating" class="rating" value="2" <?php if (isset($videoReview['rating']) && $videoReview['rating'] == 2)  { echo 'checked'; } ?>/>
                                        <input type="radio" name="rating" class="rating" value="3" <?php if (isset($videoReview['rating']) && $videoReview['rating'] == 3)  { echo 'checked'; } ?> />
                                        <input type="radio" name="rating" class="rating" value="4" <?php if (isset($videoReview['rating']) && $videoReview['rating'] == 4)  { echo 'checked'; } ?> />
                                        <input type="radio" name="rating" class="rating" value="5" <?php if (isset($videoReview['rating']) && $videoReview['rating'] == 5)  { echo 'checked'; } ?>/>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="col-xs-2"><label for="videoReviewProducts">Associate to product(s)<span class="help">You can associate the review to a certaing product by adding the product in this list</span></label></td>
                                <td>
                                    <div class="col-xs-6">
                                        <div clas="input-group">
                                            <input type="text" name="products" value=""  id="videoReviewProducts" class="pvrProductsInput form-control"placeholder="Products" />
                                            <div class="well well-fsm productReviewEntry product-related" id="related_products">
												<?php if(isset($videoReview['products'])) { foreach($videoReview['products'] as $specific_product) {  ?>
                                                    <div id="product-related<?php echo $specific_product['id']; ?>">
                                                        <i class="fa fa-minus-circle"></i><?php echo $specific_product['name']; ?>
                                                        <input type="hidden" name="product_related[]" value="<?php echo $specific_product['id'].'-'.$specific_product['name']; ?>" />
                                                    </div>
                                                <?php } } ?>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="col-xs-2"><label for="videoReviewCollection">Collection</label></td>
                                <td>
                                    <div class="col-xs-6">
                                        <select name="collection_id" id="videoReviewCollection" class="form-control">
                                             <?php if (isset($videoReview) && $videoReview['collection_id'] == 0) { ?>
                                                <option value="0" selected="selected">None</option>
                                            <?php } else { ?>
                                                <option value="0">None</option>
                                            <?php } ?>
                                            <?php foreach($collections as $collection) { ?>
                                                <?php if (isset($videoReview) && ($collection['collection_id'] == $videoReview['collection_id'])) { ?>
                                                <option value="<?php echo $collection['collection_id'];?>" selected="selected"><?php echo $collection['title'];?></option>
                                                <?php } else { ?>
                                                <option value="<?php echo $collection['collection_id'];?>"><?php echo $collection['title'];?></option>
                                                <?php } ?>
                                            <?php } ?>
                                        </select>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="col-xs-2"<?php echo(count($stores) > 1 ) ? ' item-top' : ''; ?>><label for="stores"><span class="required">*</span>Stores</label></td>
                                <td>
                                    <div class="col-xs-6">
                                        <ul class="storesList">
                                        
                                            <?php foreach($stores as $store) { ?>
                                                <li>
                                                	<input id="store_<?php echo $store['store_id']; ?>" type="checkbox" name="stores[]" <?php if(isset($videoReview['store_ids']) && in_array($store['store_id'],$videoReview['store_ids'])) { echo 'checked'; } ?> value="<?php echo $store['store_id']; ?>" />
													<label for="store_<?php echo $store['store_id']; ?>"><?php echo $store['name']; ?></label>
                                           		</li>
                                            <?php } ?>
                                        </ul>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
    			</div>
        	</div>
            <div class="modal-footer">
                <div class="service-btn-holder">
                    <a onclick="javascript:void(0)" id="submit-review-form" data-toggle="tooltip" data-original-title="Save review" class="btn btn-primary"><i class="fa fa-save"></i></a>
                    <a href="javascript:void(0)" data-toggle="tooltip" class="btn btn-warning btn-back closeReviewForm" data-original-title="Back"><i class="fa fa-reply"></i></a>
                </div>
            </div>
    	</form>
    </div>
</div>

<script type="text/javascript"><!--
	<?php foreach($languages as $language) : ?>
        $('#videoReviewContent<?php echo $language['language_id'];?>').summernote({
            height: 300
        });		
		
		
		$('#vid-img<?php  echo $language['language_id'];?> img').error(function (e) { 
			$(this).attr('src', '../<?php echo isset($videoReviewsDescription[$language['language_id']]['image_link']) ? $videoReviewsDescription[$language['language_id']]['image_link'] : ''; ?>');
	 	 });
		
	<?php endforeach; ?>
	
	$('#reviewForm').on('shown.bs.modal', function (e) {
		$('.closeReviewForm').on('click',function(){
			$('#reviewForm').modal('hide'); 
		})
	});


	
//fix for two open modals	
	$('body').on('hidden.bs.modal', function (e) {
		if (!$('#modal-image ').is(':visible') && $('.modal:not(#modal-image)').length > 0) {
			$('body').addClass('modal-open');
		}
	});
	
	$(document).on('click', '#submit-review-form', function(e){
		e.preventDefault();
		var z = false;
		<?php foreach ($languages as $language) { ?>
            try {
               var content = $('#videoReviewContent<?php echo $language['language_id']; ?>').html($('#videoReviewContent<?php echo $language['language_id'];?>').code());
           } catch (err) {
              if(err.message.indexOf('is not a function') > -1) {
                var content = $('#videoReviewContent<?php echo $language['language_id']; ?>').html($('#videoReviewContent<?php echo $language['language_id'];?>').summernote('code'));
              }
           }
			
			if($('#videoReviewTitle<?php echo $language['language_id'];?>').val() == '' || $('#videoReviewAuthor<?php echo $language['language_id'];?>').val() == '' || $('#videoReviewSlug<?php echo $language['language_id'];?>').val() == '' || $('#videoReviewSource<?php echo $language['language_id'];?>').val() == '' || $('.storesList li input:checked').length < 1) {
				z = true;
			}
		<?php } ?>
	
		
		if (z) {
			alert("Please, fill all of the required fields.")
		} else {
			$.ajax({
				url: '<?php echo html_entity_decode($url->link($modulePath.'/updatereview', 'token=' . $token, 'SSL')); ?>',
				type: 'post',
				data: $('#review-form').serialize(),
				success: function(response) {
					if ($("#pvr_id").length > 0){
						alert('The review was updated successfully!');
					} else {
						alert('The review was added successfully!');
					}
					$('#reviewForm').modal('hide');
					location.reload();
				}
			});
		}
	});

$('#videoReviewDate').datetimepicker({ pickTime: false, format: 'YYYY-MM-DD' });
	
//-->
</script>

 <script> 
  // Related
   $('input[name=\'products\']').autocomplete({
          delay: 500,
          source: function(request, response) {
              $.ajax({
                  url: 'index.php?route=catalog/product/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
                  dataType: 'json',
                  success: function(json) {		
                      response($.map(json, function(item) {
                          return { 
                              label: item.name,
                              value: item.product_id
                          }
                      }));
                  }
              });
          }, 
          'select': function(item) {
              $('#related_products' + item['value']).remove();
              console.log(item['value']);
              $('#related_products').append('<div id="product-related' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="product_related[]" value="' + item['value'] + '-'+ item['label'] +'" /></div>');
      
              return false;
          }
      });
	  $('#related_products').delegate('.fa-minus-circle', 'click', function() {
		$(this).parent().remove();
	});
 

//--></script>