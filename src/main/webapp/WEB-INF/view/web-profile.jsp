<%@include file="../common/website/web-header.jspf"%>
    <script>
        if (getCookie('profileUser') == null) {
            window.location.href = '/web';
        } else {
            var user = JSON.parse(getCookie('profileUser'));
            $(document).ready(function() {
                renderProfile(user);
            })
        }

        function renderProfile(user) {
            $('#nameProfile').val(user.name);
            $('#nameMenu').html(user.name);
            $('#usernameProfile').val(user.username);
            $('#passwordProfile').val(user.password);
            $('#emailProfile').val(user.email);
            $('#phoneProfile').val(user.phonenumber);
            $('#nationalityProfile').val(user.country);
            $('#provineProfile').val(user.province);
            $('#addressProfile').val(user.address);
        }
    </script>
    <style>

    </style>
    <main class="main-content position-relative border-radius-lg  pb-lg-5 ">
        <div class="container-fluid p-0">
            <div class="banner">
                <img class="banner-img" src="https://source.unsplash.com/featured?dollar" alt="">
                <div class="banner-text">
                    get fun get prize
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row pt-lg-5">
                <%@include file="../common/website/web-menu.jspf"%>
                    <div class="col-9 col-lg-9">
                        <div class="content-block p-3">
                            <h2>Account details</h2>
                            <hr>
                            <div class="user-block">
                                <div class="row">
                                    <div class="col-6 col-lg-6">
                                        <div class="form-floating mb-3">
                                            <input type="text" class="form-control" id="nameProfile" disabled>
                                            <label for="floatingInput">Name</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-6 col-lg-6">
                                        <div class="form-floating mb-3">
                                            <input type="text" class="form-control" id="usernameProfile" disabled>
                                            <label for="floatingInput">Username</label>
                                        </div>
                                    </div>
                                    <div class="col-6 col-lg-6">
                                        <div class="form-floating mb-3">
                                            <input type="password" class="form-control" id="passwordProfile" disabled>
                                            <label for="floatingInput">Password</label>
                                            <a href="#!" class="text-decoration-none fs-7 p-1" data-bs-toggle="modal" data-bs-target="#passwordModal"> Change password</a>
                                            <!-- Modal change password -->
                                            <div class="modal fade" id="passwordModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLabel">Change your password
                                                            </h5>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="form-floating mb-3">
                                                                <input type="password" class="form-control" id="oldPassword" placeholder="name@example.com">
                                                                <label for="floatingInput">Old password</label>
                                                            </div>
                                                            <div class="form-floating mb-3">
                                                                <input type="password" class="form-control" id="newPassword" placeholder="Password">
                                                                <label for="floatingPassword">New password</label>
                                                            </div>
                                                            <div class="form-floating">
                                                                <input type="password" class="form-control" id="confirmNewPassword" placeholder="Password">
                                                                <label for="confirmNewPassword">Confirm new password</label>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                                            <button type="button" class="btn btn-primary" id="btnSavePassword">Save
                                                            changes</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-6 col-lg-6">
                                        <div class="form-floating mb-3">
                                            <input type="number" class="form-control" id="phoneProfile" disabled>
                                            <label for="floatingInput">Phone number</label>
                                        </div>
                                    </div>
                                    <div class="col-6 col-lg-6">
                                        <div class="form-floating mb-3">
                                            <input type="email" class="form-control" id="emailProfile" disabled>
                                            <label for="floatingInput">Email</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-6 col-lg-6">
                                        <div class="form-floating mb-3">
                                            <input type="text" class="form-control" id="nationalityProfile" disabled>
                                            <label for="floatingInput">Nationality</label>
                                        </div>
                                    </div>
                                    <div class="col-6 col-lg-6">
                                        <div class="form-floating mb-3">
                                            <input type="text" class="form-control" id="provineProfile" disabled>
                                            <label for="floatingInput">Provine</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12 col-lg-12">
                                        <div class="form-floating">
                                            <textarea class="form-control" placeholder="Leave a comment here" id="addressProfile" style="height: 100px" disabled></textarea>
                                            <label for="floatingTextarea2">Address</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row pt-3">
                                <div class="form-group" style="display: flex;">
                                    <button class="btn btn-primary w-50" style="margin-right: 5px; display: none;" id="cancelBtn" onclick="cancelEdit(this);" name="btn" value="disable">Cancel</button>
                                    <button class="btn btn-primary w-50" style="margin-left: 5px;" id="enableEditBtn" onclick="edit(this);" name="btn" value="disable">Enable Edit</button>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
    </main>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="../assets/website/js/customer/editProfile.js"></script>
    <script src="../assets/website/js/customer/changePassword.js"></script>
    <script>
        var enableEditBtn = $('#enableEditBtn');

        function edit(obj) {
            if ($(obj).attr('value') == 'disable') {
                $(obj).attr('value', 'enable');
                $('#cancelBtn').css('display', 'block');
                $(obj).html('Update Profile');

                enableEdit();

            } else if ($(obj).attr('value') == 'enable') {
                var newProfile = {
                    id: user.id,
                    name: $('#nameProfile').val(),
                    address: $('#addressProfile').val(),
                    province: $('#provineProfile').val(),
                    country: $('#nationalityProfile').val(),
                    phonenumber: $('#phoneProfile').val()
                }
                if (newProfile.name != "") {
                    editProfile(newProfile).then((res) => {
                        // don't get payment info => max content lenght of cookie
                        res.wallet[0].payment = null;
                        if (res != '') {
                            setCookie('profileUser', JSON.stringify(res), 1);
                            alert('Update Profile Success');
                            renderProfile(res);
                            cancelEdit('#cancelBtn');
                        } else {
                            alert('Update Profile Fail');
                        }
                    });
                }
            }
        }

        function enableEdit() {
            $('#nameProfile').removeAttr('disabled');
            $('#phoneProfile').removeAttr('disabled');
            $('#nationalityProfile').removeAttr('disabled');
            $('#provineProfile').removeAttr('disabled');
            $('#addressProfile').removeAttr('disabled');
        }

        function cancelEdit(obj) {
            $(obj).css('display', 'none');
            enableEditBtn.html('Enable Edit');
            enableEditBtn.attr('value', 'disable');

            $('#nameProfile').attr("disabled", true);
            $('#phoneProfile').attr("disabled", true);
            $('#nationalityProfile').attr("disabled", true);
            $('#provineProfile').attr("disabled", true);
            $('#addressProfile').attr("disabled", true);
        }

        $('#btnSavePassword').on('click', function() {
            var data = {
                id: user.id,
                new_password: ($('#newPassword').val()).toString(),
                old_password: $('#oldPassword').val(),
                confirmNewPassword: $('#confirmNewPassword').val()
            }
            if (checkEmpty(data) == true) {
                if ($('#newPassword').val() == $('#confirmNewPassword').val()) {
                    changePassword(data).then((res) => {
                        alert('Change password success');
                        clearModalChangePassword();
                        $('#passwordModal').modal('toggle');
                    }).catch(err => {
                        alert(err.responseText);
                        $('#oldPassword').val('');
                    })
                } else {
                    alert('Confirm password not match !!');
                }
            }


        });

        function clearModalChangePassword() {
            $('#oldPassword').val('');
            $('#newPassword').val('');
            $('#confirmNewPassword').val('');
        }

        function checkEmpty(object) {
            for (const value in object) {
                if (Object.hasOwnProperty.call(object, value)) {
                    const element = object[value];
                    if (element == "") {
                        alert('Please enter full information !!');
                        return false;
                    }
                }
                return true;
            }
        }
    </script>
    <%@include file="../common/website/web-footer.jspf"%>
        <!-- end main content -->