 <!-- 01.Left tìm kiếm -->
 <div class="col-12 col-lg-6"  >
    <div >
       
            <label class="block" style="font-size: 14px;">Tìm kiếm nhanh :</label>
            <input style="width: 219px;" ng-model="tukhoa" class="input-search relative" type="text" placeholder="Quick search...">
        

    </div>

</div>

<!-- 01.End Left tìm kiếm -->
<!-- 02.Right setting source -->
<div class="col-12 col-lg-6 padding-tb-15 " >
    <div class="right-end" style="font-size: 14px;">

        <!-- 01 -->
        <div ng-if="data_get != '';" class="flex-layout-column margin-l-5 text-center"><label>Tin hiển thị</label>
            <input type="number" string-to-number min="1" max="100" class="form-control input-setting-size" value="{{optionsModelQuantity.PageSize}}" ng-model="optionsModelQuantity.PageSize">


        </div>
        <!-- khi dữ liệu rỗng ngăn chặn người dùng thao tác với thay đổi dữ liệu -->

        <div ng-if="data_get == '';" class="flex-layout-column margin-l-5 text-center"><label>Số tin hiển thị</label>
            <input type="number" disabled min="1" max="100" class="form-control input-setting-size" value="{{optionsModelQuantity.PageSize}}" ng-model="optionsModelQuantity.PageSize">


        </div>
        <!-- 01 -->
        <!-- 2 -->
        <div class="flex-layout-column margin-l-5 text-center"><label>Sắp xếp</label>
            <select name="" id="" class="form-control form-display input-setting-size" style="width:116px;" ng-init="optionsModelDisplay.hienthi='-data_id'" ng-model="optionsModelDisplay.hienthi " ng-change="onChangePageSize()">

                <option value="-data_id">Mới nhất</option>
                <option value="data_id">Cũ nhất</option>
                <option value="data_name">A-Z</option>
                <option value="-data_name">Z-A</option>
                
            </select>

        </div>

        <!-- end 2 -->
        <!-- 2 -->
        <div class="flex-layout-column margin-l-5 text-center"><label>Giao diện</label>
            <select ng-if="data_get != '';" name="" id="" class="form-control form-display input-setting-size" style="width:100px;" ng-model="optionsModelTheme.value_selected" ng-change="onChangePageSize()">
                <option value="1">Cột</option>
                <option value="2">Table</option>
            </select>
            <!-- khi dữ liệu rỗng ngăn chặn người dùng thao tác với thay đổi dữ liệu -->
            <select ng-if="data_get == '';" disabled name="" id="" class="form-control form-display input-setting-size" style="width:100px;" ng-model="optionsModelTheme.value_selected" ng-change="onChangePageSize()">
                <option value="1">Cột</option>
                <option value="2">Table</option>
            </select>

        </div>
        <!-- end 2 -->

    </div>


</div>
<!-- 02.End right setting source -->