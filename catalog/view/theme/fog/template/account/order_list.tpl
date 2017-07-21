<?php echo $header; ?>
<div class="accountPage">
    <div class="accountPage__header">
        <div class="container">
            <div class="accountPage__title col-sm-8"><?php echo $heading_title; ?></div>
            <ul class="breadcrumb col-sm-4">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                    <li class="breadcrumb__item">
                        <a href="<?php echo $breadcrumb['href']; ?>" class="breadcrumb__link"><?php echo $breadcrumb['text']; ?></a>
                    </li>
                <?php } ?>
            </ul>
        </div>
    </div>
    <div class="container">
        <div class="row"><?php echo $column_left; ?>
            <?php if ($column_left && $column_right) { ?>
                <?php $class = 'col-sm-6'; ?>
            <?php } elseif ($column_left || $column_right) { ?>
                <?php $class = 'col-sm-12 col-md-8'; ?>
            <?php } else { ?>
                <?php $class = 'col-sm-12'; ?>
            <?php } ?>
            <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
                <?php if ($orders) { ?>
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                            <thead>
                            <tr>
                                <td class="text-right"><?php echo $column_order_id; ?></td>
                                <td class="text-left"><?php echo $column_status; ?></td>
                                <td class="text-left"><?php echo $column_date_added; ?></td>
                                <td class="text-right"><?php echo $column_product; ?></td>
                                <td class="text-left"><?php echo $column_customer; ?></td>
                                <td class="text-right"><?php echo $column_total; ?></td>
                                <td></td>
                            </tr>
                            </thead>
                            <tbody>
                            <?php foreach ($orders as $order) { ?>
                                <tr>
                                    <td class="text-right">#<?php echo $order['order_id']; ?></td>
                                    <td class="text-left"><?php echo $order['status']; ?></td>
                                    <td class="text-left"><?php echo $order['date_added']; ?></td>
                                    <td class="text-right"><?php echo $order['products']; ?></td>
                                    <td class="text-left"><?php echo $order['name']; ?></td>
                                    <td class="text-right"><?php echo $order['total']; ?></td>
                                    <td class="text-right"><a href="<?php echo $order['href']; ?>" data-toggle="tooltip" title="<?php echo $button_view; ?>" class=""><i class="fa fa-eye"></i></a></td>
                                </tr>
                            <?php } ?>
                            </tbody>
                        </table>
                    </div>
                    <div class="text-right"><?php echo $pagination; ?></div>
                <?php } else { ?>
                    <p><?php echo $text_empty; ?></p>
                <?php } ?>
                <div class="buttons clearfix">
                    <div class="pull-right"><a href="<?php echo $continue; ?>" class="accountPage__continue"><?php echo $button_continue; ?></a></div>
                </div>
                <?php echo $content_bottom; ?></div>
            <div class="col-sm-12 col-md-4">
                <?php echo $column_right; ?>
            </div>
            </div>
    </div>
</div>
<?php echo $footer; ?>