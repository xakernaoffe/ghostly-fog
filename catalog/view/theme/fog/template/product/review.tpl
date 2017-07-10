<?php if ($reviews) { ?>
    <?php foreach ($reviews as $review) { ?>
        <div class="review">
            <div class="review__text">
                <?php echo $review['text']; ?>
            </div>
            <div class="review__rating">
                <?php for ($i = 1; $i <= 5; $i++) { ?>
                    <?php if ($review['rating'] < $i) { ?>
                        <span class="review__rating__star"></span>
                    <?php } else { ?>
                        <span class="review__rating__star_yellow"></span>
                    <?php } ?>
                <?php } ?>
            </div>
            <div class="review__info">
                <div class="review__info__author"><?php echo $review['author']; ?></div>
                <div class="review__info__date"><?php echo $review['date_added']; ?></div>
            </div>
        </div>
    <?php } ?>
    <div class="text-right"><?php echo $pagination; ?></div>
    <hr class="review__line">
<?php } else { ?>
    <p class="no-review"><?php echo $text_no_reviews; ?></p>
<?php } ?>