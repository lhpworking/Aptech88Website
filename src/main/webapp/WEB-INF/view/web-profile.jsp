<%@include file="../common/website/web-header.jspf"%>
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
                                        <input type="email" class="form-control" id="floatingInput"
                                            placeholder="name@example.com">
                                        <label for="floatingInput">First name</label>
                                    </div>
                                </div>
                                <div class="col-6 col-lg-6">
                                    <div class="form-floating mb-3">
                                        <input type="email" class="form-control" id="floatingInput"
                                            placeholder="name@example.com">
                                        <label for="floatingInput">Surname</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-6 col-lg-6">
                                    <div class="form-floating mb-3">
                                        <input type="email" class="form-control" id="floatingInput"
                                            placeholder="name@example.com" value="phatly2001" readonly>
                                        <label for="floatingInput">Account</label>
                                    </div>
                                </div>
                                <div class="col-6 col-lg-6">
                                    <div class="form-floating mb-3">
                                        <input type="password" class="form-control" id="floatingInput"
                                            placeholder="password" value="123456789" readonly>
                                        <label for="floatingInput">Password</label>
                                        <a href="#!" class="text-decoration-none fs-7 p-1" data-bs-toggle="modal"
                                            data-bs-target="#exampleModal"> Change password</a>
                                        <!-- Modal change password -->
                                        <div class="modal fade" id="exampleModal" tabindex="-1"
                                            aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLabel">Change your
                                                            password</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                            aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="form-floating mb-3">
                                                            <input type="password" class="form-control"
                                                                id="floatingInput" placeholder="name@example.com">
                                                            <label for="floatingInput">Old password</label>
                                                        </div>
                                                        <div class="form-floating">
                                                            <input type="password" class="form-control"
                                                                id="floatingPassword" placeholder="Password">
                                                            <label for="floatingPassword">New password</label>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary"
                                                            data-bs-dismiss="modal">Close</button>
                                                        <button type="button" class="btn btn-primary">Save
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
                                        <input type="number" class="form-control" id="floatingInput"
                                            placeholder="name@example.com">
                                        <label for="floatingInput">Phone number</label>
                                    </div>
                                </div>
                                <div class="col-6 col-lg-6">
                                    <div class="form-floating mb-3">
                                        <input type="date" class="form-control" id="floatingInput"
                                            placeholder="name@example.com">
                                        <label for="floatingInput">Date of birth</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-6 col-lg-6">
                                    <div class="form-floating mb-3">
                                        <input type="text" class="form-control" id="floatingInput"
                                            placeholder="name@example.com" value="Viet Nam">
                                        <label for="floatingInput">Nationality</label>
                                    </div>
                                </div>
                                <div class="col-6 col-lg-6">
                                    <div class="form-floating mb-3">
                                        <input type="text" class="form-control" id="floatingInput"
                                            placeholder="name@example.com">
                                        <label for="floatingInput">City</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12 col-lg-12">
                                    <div class="form-floating">
                                        <textarea class="form-control" placeholder="Leave a comment here"
                                            id="floatingTextarea2" style="height: 100px"></textarea>
                                        <label for="floatingTextarea2">Address</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row pt-3">
                            <div class="form-group ">
                                <button class="btn btn-primary w-100" id="" name="btn" value="">Update</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
<%@include file="../common/website/web-footer.jspf"%>
    <!-- end main content -->
