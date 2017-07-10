<div class="category-sidebar">
    <div class="category-sidebar__title">
        Категории
    </div>
    <ul class="category-sidebar__list">
        <?php foreach ($categories as $category) { ?>
            <?php if ($category['category_id'] == $category_id) { ?>
                <li class="category-sidebar__item">
                    <a href="<?php echo $category['href']; ?>" class="category-sidebar__item active">
                        <span><?php echo $category['name']; ?></span>
                        <span class="category-sidebar__quant"><?php echo $category['quantity']; ?></span>
                    </a>
                    <?php if ($category['children']) { ?>
                        <ul class="category-sidebar__sublist">
                            <?php foreach ($category['children'] as $child) { ?>
                                <?php if ($child['category_id'] == $child_id) { ?>
                                    <li class="category-sidebar__sublistItem">
                                        <a href="<?php echo $child['href']; ?>" class="category-sidebar__item active">
                                            <span><?php echo $child['name']; ?></span>
                                            <span class="category-sidebar__quant"><?php echo $child['quantity']; ?></span>
                                        </a>
                                    </li>

                                <?php } else { ?>
                                    <li class="category-sidebar__sublistItem">
                                        <a href="<?php echo $child['href']; ?>" class="category-sidebar__item">
                                            <span><?php echo $child['name']; ?></span>
                                            <span class="category-sidebar__quant"><?php echo $child['quantity']; ?></span>
                                        </a>
                                    </li>
                                <?php } ?>
                            <?php } ?>
                        </ul>
                    <?php } ?>
                </li>

            <?php } else { ?>
                <li class="category-sidebar__item">
                    <a href="<?php echo $category['href']; ?>" class="category-sidebar__item">
                        <span><?php echo $category['name']; ?></span>
                        <span class="category-sidebar__quant"><?php echo $category['quantity']; ?></span>
                    </a>
                </li>
            <?php } ?>
        <?php } ?>
    </ul>
</div>