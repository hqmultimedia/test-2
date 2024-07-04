<!-- button ẩn hiện menu -->
<div class="button-show-menu" >
<i class="fa-light fa-bars"></i>
</div>
<!-- end button ẩn hiện menu -->


<div class="container-fluid boxMenu-PrimarySystem inTop " style="z-index: 9999;" >
    <div class="row">
        <div class="col-12 right-end color-60 " id="box-search">
            <form action="">
                <div id="box-search">
                    <div class="relative">
                        <input class="input-search relative" type="text" placeholder="Search...">
                        <button class=" button-search"><i class="fas fa-search"></i></button>
                    </div>

                </div>
            </form>

            <div style="font-size: 14px;">
                <a href="" class="padding-l-5"><i class="far fa-user"></i> Login</a>
            </div>
        </div>
    </div>
    <div class="row color-background-menu" style="background-color: #c57b7a;">
        <!-- logo large -->
        <div class="col-md-2 logo-large box-left-menu-primary item-1">
            <a href="<?php echo base_url(); ?>">
                <img src="<?php echo base_url(); ?>SourceData/logo/stylon-logo-new.svg" style="width: 95px; margin-top: -5px;" alt="logo">
            </a>
        </div>
        <!-- end logo large -->

        <!-- menu-medium -->
        <div class="col-2 menu-medium box-left-menu-primary item-2">
            <!-- paste code menu-small-xx vào đây -->
            <div ng-include="'content-frontend/menu/menu-small.html'"></div>

            <!-- end code menu-small-xx -->

        </div>
        <!-- end menu-medium -->
        <!-- logo-small -->
        <div class="col-8 logo-medium box-center-menu-primary text-center item-3  ">
            <a href=""><img src="<?php echo base_url(); ?>SourceData/logo/stylon-logo-new.svg" style="width: 79px; margin-top: -4px; " alt="logo"></a>

        </div>
        <!-- end logo-small -->
        <!-- 04.menu large -->
        <div class="col-8 menu-large box-center-menu-primary item-4" >

            <ul class="ul-primary element-1" >
                <?php foreach ($menu as $key => $value_menu): ?>

                    <li style="font-size: 14px !important;" class=" hover-color-60 hover-text-color-60-contrast padding-lr-5 element-child-1 cursor">
                        <span class="" style="font-weight:500;"><?= $value_menu['name'] ?></span>
                        <div class="dropdown-menu-primary left-in color-60-contrast">

                            <ul>
                                <?php foreach ($menu_thu_cap as $key => $value_menu_thu_cap): ?>
                                  
                                    <?php foreach ($value_menu_thu_cap as $key => $value_menu_cap_2): ?>
                                        <?php if ($value_menu_cap_2['level']==$value_menu['id']): ?>
                                            <a href="<?php echo base_url(); ?>category/<?=$value_menu_cap_2['id']?>/<?=$value_menu_cap_2['url']?>">
                                                <li class=" border-bottom text-color-60 hover-color-60-analogous hover-text-color-60-contrast "><?= $value_menu_cap_2['name'] ?></li>
                                            </a>
                                        <?php endif ?>
                                        
                                    <?php endforeach ?>
                                <?php endforeach ?>
                              
                               

                            </ul>

                        </div>
                    </li>
                <?php endforeach ?>
                



            </ul>


        </div>
        <!-- end menu large -->

        <!-- box-icon-right -->
        <div class="col-2 box-right-menu-primary item-5 flex right-end ">

            <div class="icon margin-lr-5 element-1 cursor text-color-60 hover-text-color-60-contrast">
                <i class="fas fa-search"></i>
            </div>
            <a href="#" class="hover-text-color-60-contrast text-color-60">
                <div class="icon margin-lr-5 element-2 cursor ">
                    <i class="far fa-user"></i>
                </div>
            </a>

            <a href="#" class="hover-text-color-60-contrast text-color-60">
                <div class="icon margin-lr-5 relative element-3 cursor hover-text-color-60-contrast">
                    <i class="fas fa-cart-plus"></i>
                    <span class="highlight-circle edit top-right color-60-contrast text-color-60  ">10 </span>
                </div>
            </a>

            <a href="#" class="hover-text-color-60-contrast text-color-60">
                <div class="icon margin-lr-5 hidden-sm cursor relative element-4 hover-text-color-60-contrast">
                    <i class="far fa-heart"></i>
                    <span class="highlight-circle edit top-right edit color-60-contrast text-color-60">20 </span>
                </div>
            </a>

        </div>
        <!-- end box-icon-right -->
    </div>
</div>