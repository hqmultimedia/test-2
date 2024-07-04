<div class="row  ">
    <div class="col-lg-12 col-12 ">
        <h6 class="border-left uppercase margin-tb-15 padding-l-5 "
            style="border-width: 10px !important;border-color: #bf1411 !important;">
            <?php echo $value_menu_array['menu_name']; ?>

        </h6>
    </div>
    <!-- Vòng lặp -->
    <?php foreach ($dl_baiviet_theo_danhmuc_tranghome as $key => $value_array): ?>
        <?php foreach ($value_array as $key => $value_posts): ?>

            <?php if ($value_posts['menu_id'] ==$value_menu_array['menu_id']): ?>
                <div class="col-lg-4 col-md-4 col-12 margin-b-15">
                    <div class="box-ratio ratio-six-data">

                        <a href="<?php echo base_url(); ?><?=$value_posts['data_url']?>-<?=$value_posts['data_id']?>"><div class="image2 overlay-hidden-show" style="background-image:url(<?=$value_posts['data_img_thumb']?>);"></div></a>
                    </div>
                    <div class="margin-t-5">
                        <a href="<?php echo base_url(); ?><?=$value_posts['data_url']?>-<?=$value_posts['data_id']?>"><h6 class="text-overflow"><?=$value_posts['data_name']?></h6></a>
                        <p class="text-overflow">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ut cum, nostrum assumenda
                            voluptate dolor delectus voluptatum, consequatur, voluptas nulla cumque quam fugiat</p>
                    </div>
                </div>
            <?php endif ?>

        <?php endforeach ?>
    <?php endforeach ?>

    <!-- End vòng lặp -->


    <div class="col-12 margin-tb-15 ">
        <div class="border-bottom padding-b-15">
            <a
                href="<?php echo base_url(); ?>category/<?=$value_menu_array['menu_id']?>/<?=$value_menu_array['menu_name']?>">
                <div class="hq-btn hq--btn--success">Xem tất cả</div>
            </a>
        </div>

    </div>
</div>