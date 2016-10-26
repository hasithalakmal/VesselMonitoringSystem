$(document).ready(function () {
    localStorage.setItem("baseURL", "http://192.168.1.33:8084/VMS/");
    localStorage.setItem("UIbaseURL", "http://192.168.1.33/malu/");
    var baseURL = localStorage.getItem("baseURL");
    console.log(baseURL);

    $("#loginForm").validate({
        rules: {
            pass_user_name: {
                required: true,
                minlength: 4
            },
            pass_password: {
                required: true
            }
        },
        messages: {
            pass_user_name: {
                required: "User Name is required",
                minlength: "This should have a minimum of four characters"
            },
            pass_password: {
                required: "User Password required"
            }

        },
        submitHandler: function (form) {
            console.log('working');
            var pass_user_name = $('#pass_user_name').val();
            var pass_password = $('#pass_password').val();
            console.log(pass_user_name);
            console.log(pass_password);
            if (pass_user_name == "admin" && pass_password == "admin") {
                console.log('admin');
                //create local session variables
                localStorage.setItem("usr_name", "admin");
                localStorage.setItem("usr_full_name", "Hasitha Lakmal Gamage");
                localStorage.setItem("usr_email", "ghasithalakmal@gmail.com");
                localStorage.setItem("usr_phone_number", "0717584227");
                localStorage.setItem("usr_api_key", "12334567890");
                localStorage.setItem("ucat_name", "admin");
                localStorage.setItem("menueName", "../common/leftMenue.html");
                window.location.href = "pages/malu/home.html";

            } else if (pass_user_name == 'user' && pass_password == 'user') {
                console.log('user');
                localStorage.setItem("usr_name", "user");
                localStorage.setItem("usr_full_name", "Hasitha Lakmal Gamage");
                localStorage.setItem("usr_email", "ghasithalakmal@gmail.com");
                localStorage.setItem("usr_phone_number", "0717584227");
                localStorage.setItem("usr_api_key", "12334567890");
                localStorage.setItem("ucat_name", "admin");
                localStorage.setItem("menueName", "../common/leftMenue1.html");
                window.location.href = "pages/welcome/welcome.html";
            } else {
                console.log('else');
                localStorage.setItem("usr_name", "user");
                localStorage.setItem("usr_full_name", "Hasitha Lakmal Gamage");
                localStorage.setItem("usr_email", "ghasithalakmal@gmail.com");
                localStorage.setItem("usr_phone_number", "0717584227");
                localStorage.setItem("usr_api_key", "12334567890");
                localStorage.setItem("ucat_name", "admin");
                localStorage.setItem("menueName", "../common/leftMenue1.html");
                window.location.href = "pages/welcome/welcome.html";
            }

        }
    });


    $("#onlineRegisterForm").validate({
        rules: {
            pass_user_name: {
                required: true,
                minlength: 4
            },
            pass_password: {
                required: true,
                minlength: 4
            },
            pass_password1: {
                required: true,
                minlength: 4,
                equalTo: "#pass_password"
            },
            pass_acch_id: {
                required: true
            }
        },
        messages: {
            pass_user_name: {
                required: "User Name is required",
                minlength: "This should have a minimum of four characters"
            },
            pass_password: {
                required: "User Password required",
                minlength: "This should have a minimum of four characters"
            },
            pass_password1: {
                required: "User Name is required",
                minlength: "This should have a minimum of four characters",
                equalTo: "Not the same password"
            },
            pass_acch_id: {
                required: "Account Holder ID is required"
            }

        },
        submitHandler: function (form) {

            var pass_user_name = $('#pass_user_name').val();
            var pass_password = $('#pass_password').val();
            var pass_acch_id = $('#pass_acch_id').val();

            $.ajax({
                type: "POST",
                url: baseURL + "access/register",
                dataType: "json",
                contentType: "application/json",
                data: JSON.stringify({
                    'pass_user_name': pass_user_name,
                    'pass_password': pass_password,
                    'pass_acch_id': pass_acch_id
                }),
                // beforeSend: function(xhr){xhr.setRequestHeader('Authorization', usr_api_key);},
                success: function (resp1) {
                    console.log(resp1);
                    // we have the response
                    if (resp1.msg == "success") {
                        swal({
                            title: "Success!",
                            text: "Successfully Registerd!!! wait to login.",
                            timer: 4000,
                            showConfirmButton: false
                        });
                        $.ajax({
                            type: "POST",
                            url: baseURL + "access/login",
                            dataType: "json",
                            contentType: "application/json",
                            data: JSON.stringify({'pass_user_name': pass_user_name, 'pass_password': pass_password}),
                            // beforeSend: function(xhr){xhr.setRequestHeader('Authorization', usr_api_key);},
                            success: function (resp) {
                                // we have the response
                                if (resp.pass_user_name != null) {
                                    //create local session variables
                                    localStorage.setItem("usr_name", resp.pass_user_name);
                                    localStorage.setItem("usr_full_name", resp.pass_user_name);
                                    localStorage.setItem("usr_email", "ghasithalakmal@gmail.com");
                                    localStorage.setItem("usr_phone_number", "0717584227");
                                    localStorage.setItem("usr_api_key", resp.pass_api_key);
                                    localStorage.setItem("ucat_name", resp.pass_user_type);
                                    localStorage.setItem("pass_acch_id", resp.pass_acch_id);
                                    localStorage.setItem("ucat_description", resp.pass_user_type);
                                    localStorage.setItem("ou_recode_added_at", "now()");


                                    var userType = resp.pass_user_type;
                                    if (userType == "AccountHolder") {
                                        localStorage.setItem("menueName", "../common/leftMenue.html");
                                    } else if (userType == "Admin") {
                                        localStorage.setItem("menueName", "../common/leftMenue1.html");
                                    }

                                    window.location.href = "welcome/welcome.html";
                                } else if (resp.pass_user_name == null || resp.pass_user_name == '') {
                                    sweetAlert("Ops...", "Your Username or Password is incorrect.", "error");
                                }


                            },
                            error: function (e) {
                                sweetAlert("Oops...", "Something went wrong!" + e, "error");
                            }
                        });
                    } else {
                        sweetAlert("Oops...", resp1.msg, "error");
                    }
                },
                error: function (e) {
                    sweetAlert("Oops...", "Something went wrong!" + e, "error");
                }
            });
        }
    });


});


