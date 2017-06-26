<div class="modal-dialog modal-lg">
	<div class="modal-content">
    	<form method="post" enctype="multipart/form-data" id="addCollectionForm">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title"><?php echo $heading_title; ?></h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-xs-12">
                    	<?php if (isset($collection_id)) { ?>
                        	<input type="hidden" name="collection_id" id="collection_id" value="<?php echo $collection_id; ?>" />
    					<?php } ?>
                        <ul class="nav nav-tabs" role="tablist">
                            <?php $index_1 = 0; foreach($languages as $language) : ?>
                                <li<?php echo $index_1 == 0 ? ' class="active"' : ''; ?>>
                                    <a href="#sub_tab_<?php echo $index_1; ?>" role="tab" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></a>
                                </li>
                            <?php $index_1++; endforeach; ?>
                        </ul>
                        
                        <div class="tab-content">
                            <?php $index_1 = 0; $index_3=0; foreach($languages as $language) : ?>
                                <div class="tab-pane<?php echo $index_1 == 0 ? ' active' : ''; ?>" id="sub_tab_<?php echo $index_1; ?>">
                                    <table class="table">
                                        <tr>
                                            <td class="col-xs-2"><label for="newCollectionTitle"><span class="required">*</span>Title</label></td>
                                            <td>
                                                <div class="col-xs-6">
                                                    <input type="text" name="title[<?php echo $language['language_id']; ?>]" class="form-control" id="newCollectionTitle" value="<?php echo isset($title[$language['language_id']]) ? $title[$language['language_id']] : ''; ?>"required="required"/>
                                                </div>
                                            </td>
                                        </tr>  
                                    </table>
                                </div>
                            <?php $index_1++; endforeach; ?>
                        </div>
                    </div>
    			</div>
        	</div>
            <div class="modal-footer">
                <div class="service-btn-holder">
                    <a onclick="javascript:void(0)" id="submit-collection-form" data-toggle="tooltip" data-original-title="Save collection" class="btn btn-primary"><i class="fa fa-save"></i></a>
                    <a href="javascript:void(0)" data-toggle="tooltip" class="btn btn-warning btn-back closeCollectionForm" data-original-title="Back"><i class="fa fa-reply"></i></a>
                </div>
            </div>
    	</form>
    </div>
</div>

<script type="text/javascript"><!--
	$('#collectionForm').on('shown.bs.modal', function (e) {
		$('.closeCollectionForm').on('click',function(){
			$('#collectionForm').modal('hide');
		})
	});
	
	$('#collectionForm').on('hidden.bs.modal', function (e) {
		$('#collectionForm').remove();
	});
	
	$('#collectionForm').delegate('#submit-collection-form', 'click', function(e){
		e.preventDefault();
		$.ajax({
			url: '<?php echo html_entity_decode($url->link($modulePath.'/updateCollection', 'token=' . $token, 'SSL')); ?>',
			type: 'post',
			data: $('#addCollectionForm').serialize(),
			success: function(response) {
				if ($("#collection_id").length > 0){
					alert('The collection was updated successfully!');
				} else {
					alert('The collection was added successfully!');
				}
				$('#collectionForm').modal('hide');
				location.reload();
			}
		});
	});
//-->
</script>