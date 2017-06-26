<table id="reviewCollections" class="table table-bordered table-hover">
    <thead>
        <tr>
            <td class="left">Collection title</td>
            <td class="left">Action</td>
        </tr>
    </thead>
    <tbody>
    	<?php foreach($collections as $collection) { ?>
    		<tr>
    			<td><?php echo $collection['title']; ?></td>
    			<td>
                
                	<a id="<?php echo $collection['collection_id']; ?>" data-toggle="tooltip" data-original-title="Edit" class="btn btn-primary editCollectionBtn"><i class="fa fa-pencil"></i></a>
                    <a onclick="removeCollection('<?php echo $collection['collection_id']; ?>')" class="btn btn-danger"><i class="fa fa-trash-o"></i></a>
    			</td>
    		</tr>
    	<?php } ?>
        <?php if (empty($collections)): ?>
        	<tr class="emptyReviews">
            	<td colspan="2">You do not have any video collections yet.</td>
            </tr>
        <?php endif; ?>
    </tbody>
</table>

<div class="row">
	<div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
    <div class="col-sm-6 text-right"><?php echo $results; ?></div>
</div>

<script type="text/javascript"><!--
$(document).ready(function(){
	$('.editCollectionBtn').on('click', function() {
		var collection_id = $(this).attr("id");
		$.ajax({
			url: "<?php echo html_entity_decode($url->link($modulePath.'/editCollection', 'token=' . $token, 'SSL')); ?>",
			dataType: 'html',
			data: {collection_id: collection_id},
			success: function(html) {
				$('body').append('<div id="collectionForm" class="modal">' + html + '</div>');
				$('#collectionForm').modal({
					show: true,
					backdrop: 'static',
    				keyboard: false
				});
			}
		});
	});
});	
//--></script>