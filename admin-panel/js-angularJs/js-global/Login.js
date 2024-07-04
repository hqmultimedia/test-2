upload.controller('LoginRegisterController', function($rootScope, $scope, $http, $location) {

        

        //B. setting mặc định view login được hiển thị đầu tiên 
        $scope.loginReg = true;
        // B-1.ẩn hiện view login register
        $scope.doigiatri_hienthi = function() {
            $scope.loginReg = !$scope.loginReg;
        }




        //C.Xử lý khi click nút đang nhập 
        $scope.button_login = function(user) {

            // lưu dữ liệu user của ng-model thông qua biến dulieu
            var dulieu = $.param({
                // trường dữ liệu CSDL - trường name trong input view
                user_name: user.email,
                password: user.password

            });

            var URL_Login = 'http://localhost/Angular2026/admin/LoginRegisterController/login';

            var config = {
                headers: {
                    'content-type': 'application/x-www-form-urlencoded;charset=UTF-8'
                }

            }
            $http.post(URL_Login, dulieu, config)
                .then(function(res) {

                    console.log(res.data);

                    if (res.data.level == '4') {
                        // set dữ liệu và gọi đến hàm thông báo
                        var Title = "Info";
                        var Message = "Tài khoản không đủ quyền truy cập.";
                        var Type = "info";
                        $scope.HQToast(Title, Message, Type);
                    }
                    if (res.data == 'Không có dữ liệu trùng khớp') {
                        // set dữ liệu và gọi đến hàm thông báo
                        var Title = "Error";
                        var Message = "Email hoặc mật khẩu không đúng.";
                        var Type = "error";
                        $scope.HQToast(Title, Message, Type);
                    }
                    if (res.data == 'tài khoản đã bị khoá') {
                        // set dữ liệu và gọi đến hàm thông báo
                        var Title = "Warning";
                        var Message = "Tài khoản đã bị khoá truy cập.";
                        var Type = "warning";
                        $scope.HQToast(Title, Message, Type);
                        // chuyển đến trang xử lý
                        setTimeout(function() {
                            $location.path('/xu-ly-su-co');
                        }, 200);

                    }

                    if ((res.data.level == '1') || (res.data.level == '2') || (res.data.level == '3')) {
                        // Tạo biến lưu trữ thông tin user 
                        $rootScope.name = res.data.name;
                        $rootScope.avatar = res.data.avatar;
                        $rootScope.level = res.data.level;
                        $rootScope.id = res.data.id;

                        // Tạo biến để thông báo trạng thái đăng nhập
                        $rootScope.login_status = 'valid';

                        // hiện lại menu footer
                        show_menu_footer();

                        // Gọi Toast để thông báo 
                        var Title = "Success";
                        var Message = "Đăng nhập thành công !";
                        var Type = "success";
                        $scope.HQToast(Title, Message, Type);

                        // chuyển hướng đến trang home - dashboard
                        $location.path('home');


                    }


                }, function(er) {
                    // function(er) trường hợp thất bại gọi đến hàm showActionToast();
                    console.log(er.data)
                })
                // end add data



        }






    }) //End controller LoginRegisterController
