<?php 
$path_dir=__DIR__. '\..\template-frontend';
?>
<?php require($path_dir.'\template-menu.php'); ?>






<!-- content -->

<?php foreach ($data_posts as $key => $value): ?>
<div class="container padding-tb-15 " style="margin-top: 112px;">
    <div class="row">
        <div class="col-12 reset-col">
            <ul class="breadcrumb margin-t-15">
                <li class="breadcrumb-item"><a href="<?php echo base_url(); ?>">Home</a></li>
                <li class="breadcrumb-item active">Thiết kế web</li>
                <li class="breadcrumb-item "><a class="hover-text-color-basic-brown" href="">Codeigniter 3</a>
                </li>
                <li class="breadcrumb-item active">posts</li>
                <li class="breadcrumb-item active"><?=$value['data_name']?></li>
            </ul>
        </div>

    </div>


</div>


<!-- container content -->
<div class="container padding-content-posts padding-b-30 w3-card-2 margin-b-30 round-medium" ng-controller="PostsController" ng-model="page_data" ng-init="page_data='posts'" >
    <div class="row">

        <!--button thêm yêu thích -->
        <div class="col-12 col-lg-12 margin-b-15"
            >
            <h3 class="margin-t-15"><?=$value['data_name']?></h3>
            <p class="text-color-10 margin-t-5 " style="font-weight: 600; font-size: 14.5px;"><?=$value['user']?> -
                <?=$value['data_date']?></p>
            <!-- <button class="hq-btn border-none color-60 text-color-60-contrast margin-t-15">Yêu thích <i class="padding-l-5 fa-solid fa-heart"></i></button> -->
            <button ng-show="!hienra" ng-click="add_favourite" style="font-size: 12px" type="button"
                class="margin-t-15 btn btn-dark">Bỏ lưu trữ <i class="padding-l-5 fa-solid fa-heart"></i></button>

            <button ng-show="hienra" ng-init="hienra=true" ng-click="add_favourite()" style="font-size: 12px"
                type="button" class="hover-color-basic-red margin-t-15 btn btn-dark color-basic-brown">+ Yêu thích <i
                    class="padding-l-5 fa-solid fa-heart"></i></button>



        </div>
        <!--end button thêm yêu thích -->


        <!-- Left content -->
        <div class="col-12 col-lg-8 ">


            <div class="padding-tb-15" style="border-top: 4px double #8080806b;border-bottom: 4px double #8080806b;">
                <?=$value['data_content']?>
            </div>
            <!-- slider -->
            <?php if ($value['image_galery'] != NULL): ?>
            <div class="margin-t-15">

                <h6 class="uppercase padding-l-5 padding-l-5 border-left-style-solid border-color-bosung3 margin-b-15"
                    style="border-width: 6px;">Dữ liệu đính kèm image: </h6>
            </div>
            <div class="owl-carousel owl-theme margin-t-30 padding-15" style="background-color: #ebebeb;">
                <?php foreach ($image_attached as $key => $value_image): ?>
                <div class="item">

                    <div class=" FancyBox_preview ">
                        <a class="fancybox-buttons" data-fancybox-group="button" href="<?=$value_image['url']?>">


                            <img class="w3-card-4 img-object-cover" src="<?=$value_image['url']?>" alt="" />
                        </a>
                    </div>

                </div>
                <?php endforeach ?>


            </div>

            <?php endif ?>

            <!-- end slider -->
            <!-- video -->
            <?php if ($value['video_galery'] != NULL): ?>
            <div class="margin-t-30">
                <div class="">

                    <h6 class="uppercase padding-l-5 padding-l-5 border-left-style-solid border-color-bosung3 margin-b-15"
                        style="border-width: 6px;">Dữ liệu đính kèm Video: </h6>
                </div>
                <p class="margin-b-15">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Asperiores id
                    perspiciatis provident ipsum consequuntur eos quibusdam eaque reprehenderit impedit eum. Eius et
                    cumque nesciunt in tempora repudiandae numquam exercitationem dicta!</p>


                <video id="player1" controls preload="none" data-cast-title="Big Buck Bunny"
                    data-cast-description="Big Buck Bunny is now even more a world standard for video standards"
                    poster="https://trainghiemso.vn/wp-content/uploads/2024/01/WinXvideo-AI.jpg">
                    <?php foreach ($video_attached as $key => $value_video): ?>
                    <source src="<?=$value_video['url']?>"
                        data-playlist-thumbnail="https://images.unsplash.com/photo-1612694609694-c8fd391575d0?q=80&w=1332&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                        title="<?=$value_video['file_name_view']?>"
                        data-playlist-description="No description information yet !" type="video/mp4">

                    <?php endforeach ?>




                </video>

            </div>
            <?php endif ?>
            <!-- end video -->

            <!-- Tệp đính kèm -->
            <?php if ($value['file_galery'] != NULL): ?>
            <div class="margin-t-15">

                <h6 class="uppercase padding-l-5 padding-l-5 border-left-style-solid border-color-bosung3 margin-b-15"
                    style="border-width: 6px;">Dữ liệu đính kèm file: </h6>
            </div>
            <p class="margin-b-15">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Asperiores id
                perspiciatis provident ipsum consequuntur eos quibusdam eaque reprehenderit impedit eum. Eius et
                cumque nesciunt in tempora repudiandae numquam exercitationem dicta!
            </p>

            <div class="" style="height: 220px ;overflow: scroll;">
                <?php $stt= 1; ?>
                <?php foreach ($file_attached as $key => $value_file): ?>
                    

                <div style="border-width: 5px;background-color:#cfcaca;color:#5a5a5a;"
                    class=" border-left-style-solid border-color-10 col-12 margin-tb-15 flex padding-tb-15 round-medium flex-align-items-center">
                    <p style="width: 80%;" class="margin-tb-15 padding-l-5 padding-r-15"><strong>File <?= $stt++ ?></strong> :
                        <span style="overflow:hidden ;min-width: 250px;"><?=$value_file['file_name_view']?></span>
                    </p>

                    <div class="right-end " style="width: 20%;">
                        <a href="<?=$value_file['url']?>" download="<?=$value_file['file_name_view']?>">
                            <button class="btn hover-color-60"
                                style="font-size: 14px;transition: .5s; background-color:#938885;color:#cdc5c5;">
                                <i class="fas fa-download"></i>
                                Download
                            </button>
                        </a>
                    </div>
                </div>
                <?php endforeach ?>
            </div>

            <?php endif ?>
            <!-- End tệp đính kèm -->

        </div>
        <!-- End Left content -->
        <?php endforeach ?>

        <!-- Right -->
        <div class="col-12 col-lg-4 hide-xs-sm " ng-controller="BannerController"  ng-init="get_banner(page_data)">
              
                <?php require($path_dir.'\..\general-ingredients\banner-qc-right\banerqc.php'); ?>
                   
            
        </div>
        <!-- End Right -->
    </div>


</div>
<!-- end container content -->
<!-- end content -->





<?php require($path_dir.'\template-footer.php'); ?>