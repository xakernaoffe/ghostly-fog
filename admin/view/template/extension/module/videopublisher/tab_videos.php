<div class="service-btn-holder">
    <a href="javascript:void(0)" data-toggle="tooltip" class="btn btn-primary addReviewBtn" data-original-title="Add New" id="openReviewForm"><i class="fa fa-plus"></i></a>
</div>

<table id="productReviews" class="table table-bordered table-hover">
    <thead>
        <tr>
            <td class="left">Title</td>
            <td class="left">Video</td>
            <td class="left">Product Rating</td>
            <td class="left">Associated Product(s)</td>
            <td class="left">Author</td>
            <td class="left">Date</td>
            <td class="left">Action</td>
        </tr>
    </thead>
    <tbody>
    	<?php foreach ($reviews as $review) { ?>
    		<tr id="review-row<?php echo $review['pvr_id']; ?>">
    			<td class="reviewTitle"><?php echo $review['title']; ?></td>
                <td class="reviewLink">
                    <a class="pvr-video" href="<?php echo $review['video_link']; ?>" title="<?php echo $review['title']; ?>" alt="<?php echo $review['title']; ?>">
                        <img title="<?php echo $review['title']; ?>" alt="<?php echo $review['title']; ?>"  src="<?php echo $review['image_link']; ?>" />
                    </a> 
                </td>
                <td class="reviewRating">
					<?php if (!empty($review['display_rating'])) { ?>
                    	<?php for($i =1 ; $i <= 5; $i++) { ?> <input type="radio" name="rating<?php echo $review['pvr_id']; ?>" value="<?php echo $i; ?>" <?php echo ($i == $review['rating']) ? 'checked="checked"' : '';?> /><?php } ?>
                    <?php } ?>
                </td>
                <td class="reviewProducts">
                    <span style="display:none"><?php echo $review['product_ids'];?></span>
                    <?php if(!empty($review['products'])) { ?>
                    	<ul>
                    		<?php foreach($review['products'] as $product) {?>
                      			<li><?php echo $product['name']; ?></li>
                    		<?php } ?>
                    	</ul>
                    <?php } ?>
                </td>
    			<td class="reviewAuthor"><?php echo $review['author']; ?></td>
    			<td class="reviewDate"><?php echo $review['date']; ?></td>
    			<td>
                    <a onclick="editReview(<?php echo $review['pvr_id']; ?>)" class="btn btn-warning editReviewBtn"><?php echo $button_edit; ?></a>
                    <a onclick="removeReview(<?php echo $review['pvr_id']; ?>)" class="btn btn-danger" data-original-title="Delete"><i class="fa fa-trash-o"></i></a>
    			</td>
    		</tr>
    	<?php } ?>
        <?php if (empty($reviews)): ?>
        	<tr class="emptyReviews">
            	<td colspan="7">You do not have any video reviews created yet.</td>
            </tr>
        <?php endif; ?>
    </tbody>
</table>

<div class="row">
	<div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
</div>

<script type="text/javascript"><!--

<?php foreach ($reviews as $review) { ?>
	$('#review-row<?php echo $review['pvr_id']; ?> .pvr-video img').error(function () { 
		$(this).attr('src', '../<?php echo $review['image_link']; ?>');
	});
<?php } ?>

$(document).ready(function(){
	$('#openReviewForm').on('click', function() {
		$.ajax({
			url: "<?php echo html_entity_decode($url->link($modulePath.'/addreview', 'token=' . $token, true)); ?>",
			dataType: 'html',
			success: function(html) {
				$('body').append('<div id="reviewForm" class="modal">' + html + '</div>');
				$('#reviewForm').modal({
					show: true,
					backdrop: 'static',
    				keyboard: false
				});
				$('#reviewForm').on('hidden.bs.modal', function (e) {
					$('#reviewForm').remove();
				});
			}
		});
	});
});

function editReview(id) {
	$.ajax({
          url: '<?php echo html_entity_decode($editReviewUrl); ?>',
          type: 'post',
          data: {review_id: id},
		success: function(html) {
			$('body').append('<div id="reviewForm" class="modal">' + html + '</div>');
			$('#reviewForm').modal({
				show: true,
				backdrop: 'static',
				keyboard: false
			});
			$('#reviewForm').on('hidden.bs.modal', function (e) {
				$('#reviewForm').remove();
			});
		}
	});
};

function removeReview(id) {
  var confirmDel = confirm('Warning! This action cannot be undone! Are you sure you want to remove this review?');
  if (!confirmDel) return;
  $.ajax({
          url: '<?php echo html_entity_decode($deleteReviewUrl); ?>',
          type: 'post',
          data: {review_id: id},
          dataType: 'json',
          success: function(result){
              if (result.success) {
                  $('#review-row' + id).remove();
              }
              
              var msgClass = result.success ? 'success' : 'warning';
              $('div.content div.success, div.content div.warning').slideUp({
                  complete:function(){
                      $(this).remove();
                  }
              });
              
              $('div.content').prepend('<div class="'+msgClass+'" style="display:none">'+result.message+'</div>').find('div.'+msgClass).slideDown();
          }
      });
}

//--></script>