<?php if (!$ajax && !$popup && !$as_module) { ?>
<?php $simple_page = 'simpleedit'; include $simple_header; ?>
<div class="simple-content">
<?php } ?>
    <?php if (!$ajax || ($ajax && $popup)) { ?>
    <script type="text/javascript">
    (function($) {
    <?php if (!$popup && !$ajax) { ?>
        $(function(){
    <?php } ?>
            if (typeof Simplepage === "function") {
                var simplepage = new Simplepage({
                    additionalParams: "<?php echo $additional_params ?>",
                    additionalPath: "<?php echo $additional_path ?>",
                    mainUrl: "<?php echo $action; ?>",
                    mainContainer: "#simplepage_form",
                    scrollToError: <?php echo $scroll_to_error ? 1 : 0 ?>,
                    javascriptCallback: function() {<?php echo $javascript_callback ?>}
                });

                simplepage.init();
            }
    <?php if (!$popup && !$ajax) { ?>
        });
    <?php } ?>
    })(jQuery || $);
    </script>
    <?php } ?>
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="simplepage_form">
        <div class="simpleregister" id="simpleedit">
            <?php if ($error_warning) { ?>
            <div class="warning alert alert-danger"><?php echo $error_warning; ?></div>
            <?php } ?>
            <div class="simpleregister-block-content">
                <?php foreach ($rows as $row) { ?>
                  <?php echo $row ?>
                <?php } ?>
            </div>
            <div class="simpleregister-button-block buttons">
                <div class="pull-left"><a href="/ru/my-account/" class="accountPage__back">Назад</a></div>
                <div class="simpleregister-button-right">
                    <a class="button accountPage__continue" data-onclick="submit" id="simpleregister_button_confirm"><span><?php echo $button_continue; ?></span></a>
                </div>
            </div>
        </div>
        <?php if ($redirect) { ?>
            <input type="hidden" id="simple_redirect_url" value="<?php echo $redirect ?>">
        <?php } ?>
    </form>
<?php if (!$ajax && !$popup && !$as_module) { ?>
</div>
<?php include $simple_footer ?>
<?php } ?>