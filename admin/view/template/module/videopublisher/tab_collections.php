<div class="service-btn-holder">
    <a href="javascript:void(0)" data-toggle="tooltip" class="btn btn-primary addCollectionBtn" data-original-title="Add New" id="openCollectionForm"><i class="fa fa-plus"></i></a>
</div>

<div id="CollectionsWrapper"></div>



<script type="text/javascript"><!--
$(document).ready(function(){
	$.ajax({
		url: "index.php?route=module/<?php echo $moduleNameSmall; ?>/getCollections&token=<?php echo $token; ?>&page=1",
		type: 'get',
		dataType: 'html',
		success: function(data) {		
			$("#CollectionsWrapper").html(data);
		}
	 });
	
	$('#openCollectionForm').on('click', function() {
		$.ajax({
			url: "<?php echo html_entity_decode($url->link('module/'.$moduleNameSmall.'/addCollection', 'token=' . $token, 'SSL')); ?>",
			dataType: 'html',
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

function removeCollection(collection_id) {   
	var r=confirm("Are you sure you want to remove this entry?");
	if (r==true) {
		$.ajax({
			url: 'index.php?route=module/<?php echo $moduleNameSmall; ?>/deleteCollection&token=<?php echo $token; ?>',
			type: 'post',
			data: {'collection_id': collection_id},
			success: function(response) {
				location.reload();
			}
		});
	}
}

//--></script>