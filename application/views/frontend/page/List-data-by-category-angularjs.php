<?php 
$path_dir=__DIR__. '\..\template-frontend';
?>
<?php require($path_dir.'\template-menu.php'); ?>



<!-- content -->
<!--01.lấy id gửi sang angualr js -->
<?php foreach ($title_category as $key => $value): ?>
    <input ng-model="category_id" type="hidden" ng-init="category_id='<?=$value['id']?>'" >
<?php endforeach ?>
<!--01.lấy id gửi sang angualr js -->
<!--02.Div get data angular js -->
<div ng-controller="FrontEndController" ng-init="getDataPagination(category_id)" >
    <!-- 02.1 Khi không có dữ liệu -->
    <div class="container-fluid"ng-if="data_get == '';" style="min-height: 100vh; margin-top: 119px;">
        <div class="container ">
           <div class="row">

            <div class="col-12 border-bottom padding-tb-15">
                <?php foreach ($title_category as $key => $value): ?>

                    <strong><?=$value['name']?></strong>
                    <span>(<?=$count_category?>)</span>
                <?php endforeach ?>




            </div>

        </div>
    </div>
    <div class="row" >
        <div class="col-12 center">
            <img width="39%" src="https://i.pinimg.com/originals/88/36/65/8836650a57e0c941b4ccdc8a19dee887.png" alt="">
        </div>
    </div>
</div>
<!-- 02.1 End khi không có dữ liệu -->

<!-- 02.2 Khi có dữ liệu -->
<div class="container-fulid color-30" ng-if="data_get != '';" style="min-height: 100vh; margin-top: 102px;">
    <div class="container padding-tb-15 ">
        <div class="row">
            <div class="col-12 margin-t-15">
                <div class=" padding-5">
                    <?php foreach ($title_category as $key => $value): ?>
                        <strong>Category : </strong>
                        <span><?=$value['name']?></span>
                        <span>(<?=$count_category?>)</span>
                    <?php endforeach ?>
                </div>
            </div>
        </div>

        <!-- row setting-source -->
        <div class="row margin-t-15 " >
           <div class="col-12">
            <div class="container">
                <div class="row margin-b-15 round-medium text-color-60-contrast flex-layout-baseline" style="background-color: #3e3939">
                    
                    <!-- Col setting source -->
                    <?php require($path_dir.'/../page-components/List-data-by-category/setting-view-data-posts.php'); ?>
                    <!-- End col setting source -->
                </div>
            </div>
        </div> 

    </div>
    <!--end  row setting-source -->



    <!-- row dữ liệu -->
    <div class="border-top padding-t-15 margin-t-15">
        <div class="row margin-b-30 margin-t-15"  dir-paginate="one_data in data_get |orderBy :optionsModelDisplay.hienthi| filter:tukhoa |itemsPerPage:optionsModelQuantity.PageSize"  >

            <div class="col-12 col-sm-6 col-md-4 col-lg-3 margin-b-15 ">
                <!-- box-ratio-xx -->
                <div class="box-ratio ratio-list-posts round-medium ">
                    <!-- <div class="image" style="background-image:url(../../SourceData/Fashion/15.jpg);"></div> -->
                    <a ng-href="<?php echo base_url(); ?>{{one_data.data_url}}-{{one_data.data_id}}">
                        <div class="image2 overlay-show-hidden" style="background-image:url({{one_data.data_img_thumb}});"></div>
                    </a>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-8 col-lg-9">
                <div>
                    <a ng-href="<?php echo base_url(); ?>{{one_data.data_url}}-{{one_data.data_id}}" class="hover-text-color-10 title-text-overflow">
                        <strong style="font-size: 18px;">{{one_data.data_name}}</strong>
                    </a>
                    <p class="text-color-10 margin-t-5 " style="font-weight: 600; font-size: 14.5px;">Hồng Ngọc - 20 PM : 20-12-2023</p>
                    <p class="text-color-10 margin-t-5 text-overflow">Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor dolore ab dicta nulla? Officiis corrupti nisi culpa ducimus quod vitae asperiores nesciunt quia a ratione. Consectetur consequuntur error voluptatibus recusandae!</p>

                    <div>
                        <div>
                            <a ng-href="<?php echo base_url(); ?>{{one_data.data_url}}-{{one_data.data_id}}" class="hq-btn color-10 margin-t-5 hover-color-60-analogous text-color-60-contrast ">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end row dữ liệu -->
</div>
<div class="container padding-b-30">
    <div class="row ">
        <div class="col-12" id="dvCate">
            <dir-pagination-controls max-size="5" direction-links="true" boundary-links="true">
            </dir-pagination-controls>

        </div>

    </div>
</div>
</div>
<!-- 02.2 End khi có dữ liệu -->

</div>
<!--02.End div get data angular js -->

<!-- end content -->





<?php require($path_dir.'\template-footer.php'); ?>