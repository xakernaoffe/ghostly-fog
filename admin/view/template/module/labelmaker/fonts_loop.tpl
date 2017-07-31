<?php 
	// ID Base = $_id;
	
	// Label Name Base = $_lnb;
	
	// Label = $_label;
?>

<?php if ($fonts) { ?>
<div class="bfh-selectbox" data-name="<?php echo $_lnb; ?>[Font]" <?php echo (count($fonts) > 5) ? 'data-filter="true"' : ''; ?> data-value="<?php echo $fonts[0]; ?>">
	<?php foreach ($fonts as $font) : ?>
		<div data-value="<?php echo $font; ?>"><?php echo $font; ?></div>
	<?php endforeach; ?>
</div>
<?php } else { ?>
<span class="info-text"><?php echo $text_no_fonts; ?></span>
<?php } ?>