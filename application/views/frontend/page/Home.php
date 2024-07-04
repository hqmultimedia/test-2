<?php 
$path_dir=__DIR__. '\..\template-frontend';
?>
<?php require($path_dir.'\template-menu.php'); ?>


   
   


<!-- menu -->

<!-- <div ng-include="'frontend-panel/theme/menu/menu-large.html'" ></div> -->
<!-- end menu -->
<!-- content -->
<!-- <div ng-include="'frontend-panel/trangchu.html'" ></div> -->
<!-- end content -->

<!-- footer -->
<!-- <div ng-include="'frontend-panel/trangchu.html'" ></div> -->

<!-- end footer -->

<!-- content -->
<div class="container" style="margin-top: 139px;" ng-model="page_data" ng-init="page_data='home'">
    
    <div class="row">
        <div class="col-12 margin-b-30">
         <a href="">
            <div class=" img-background" style="width: 100%; height: 368px; background-image: url(https://bloganchoi.com/wp-content/uploads/2022/08/7178251.jpg)">

            </div>
        </a>
        </div>
    </div>
	<div class="row">
		
		<div class="col-12 col-lg-9 w3-card-2 margin-b-15 padding-t-15">
        <h6 class="uppercase margin-b-15 border-left padding-l-5" style="border-width: 10px !important;border-color: #bf1411 !important;">
                Top bài viết yêu thích
            </h6>
			<div class="row">
                <!-- one data -->
				
                    <div class="col-lg-6 col-md-6 col-12">
                    <?php foreach ($new_one_data as $key => $value): ?>
                        <?php require($path_dir.'\..\page-components\Home-frontend\one-data.php'); ?>
                    <?php endforeach ?>
                    </div>
                
                <!-- end one data -->
                <!-- two data -->
                <div class="col-lg-6 col-md-6 col-12">
                	<?php foreach ($new_two_data as $key => $value): ?>
                        <?php require($path_dir.'\..\page-components\Home-frontend\two-data.php'); ?>
                    <?php endforeach ?>
                </div>
                <!-- end two data -->

                <div class="col-12 margin-tb-15 ">
                        <div class="border-bottom padding-b-15">
                            <a href="">
                             <div class="hq-btn hq--btn--success">Xem tất cả</div>
                            </a>
                        </div>
                       
                </div>  
			</div>

            <!-- row 6 tin small -->
            <?php foreach ($dl_menu as $key => $value_menu_array): ?>  
                
                <?php require($path_dir.'\..\page-components\Home-frontend\six-data-by-category.php'); ?>
             
            <?php endforeach ?>
            <!-- end row 6 tin small -->
               
            
		</div>
		<!-- End Left -->

		<!-- Right -->
		<div class="col-12 col-lg-3 hidden-screen-md" ng-controller="BannerController" ng-init="get_banner(page_data)" >
			<?php require($path_dir.'\..\general-ingredients\banner-qc-right\banerqc.php'); ?>

		</div>
		<!-- End Right -->
	</div>
</div>
<!-- end content -->





<?php require($path_dir.'\template-footer.php'); ?>