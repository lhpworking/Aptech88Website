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
                 <div class="col-12 col-lg-6">
                    <div class="content-block p-3">
                        <div class="d-flex justify-content-between align-items-center ">
                            <h2 class="m-0">Method Payment</h2>
                            <a href="#!" class="link-secondary fs-7 ">View history <i
                                    class="bi bi-arrow-right-short"></i></a>
                        </div>
                        <hr>
                        <h5 class="text-muted fs-6"> Select method</h2>
                            <div class="method-block card shadow-sm p-3">
                                <ul class="menu-method list-unstyled">
                                    <li class="menu-method-item  p-3 d-flex align-items-center gap-3">
                                        <img src="https://source.unsplash.com/random" width="50" height="50" alt="">
                                        <div class="">
                                            <h5 class="menu-method-link m-0">Paypal</h5>
                                            <p class="fs-7 text-muted m-0"> Free</p>
                                        </div>
                                    </li>
                                    <li class="menu-method-item   p-3 d-flex align-items-center gap-3 mt-3">
                                        <img src="https://source.unsplash.com/random" width="50" height="50" alt="">
                                        <div class="method-info">
                                            <h5 class="menu-method-link m-0">Zalo Pay</h5>
                                            <p class="fs-7 text-muted m-0"> Free</p>
                                        </div>
                                    </li>
                                    <li class="menu-method-item p-3 d-flex align-items-center gap-3 mt-3">
                                        <img src="https://source.unsplash.com/random" width="50" height="50" alt="">
                                        <div class="">
                                            <h5 class="menu-method-link m-0">Momo Pay</h5>
                                            <p class="fs-7 text-muted m-0"> Free</p>
                                        </div>
                                    </li>
                                    <li class="menu-method-item  p-3 d-flex align-items-center gap-3 mt-3">
                                        <img src="https://source.unsplash.com/random" width="50" height="50" alt="">
                                        <div class="">
                                            <h5 class="menu-method-link m-0">Bank Transfer</h5>
                                            <p class="fs-7 text-muted m-0"> Free</p>
                                        </div>
                                    </li>
                                </ul>

                            </div>
                    </div>
                </div>
                <div class="col-12 col-lg-3">
                    <div class="deposit-block d-none p-3">
                        <h2>Deposit amount</h2>
                        <hr>
                        <div class=" card border-0 shadow-sm p-3 d-flex flex-column gap-2">
                            <div class="row">
                                <div class="col-12 col-lg-12">
                                    <div class="form-floating mb-3">
                                        <input type="number" class="form-control" id="floatingInput"
                                            placeholder="name@example.com">
                                        <label for="floatingInput">Deposit amount</label>
                                        <small class="text-muted m-0 p-0">Range: $ 10 - 100.000</small>
                                    </div>
                                </div>
                            </div>
                            <div class="row text-center align-content-stretch">
                                <div class="col-4 col-lg-4 ">
                                    <div class="form-group mb-3">
                                        <button class="btn  btn-secondary">100$</button>
                                    </div>
                                </div>
                                <div class="col-4 col-lg-4">
                                    <div class="form-group mb-3">
                                        <button class="btn  btn-secondary">200$</button>
                                    </div>
                                </div>
                                <div class="col-4 col-lg-4">
                                    <div class="form-group mb-3">
                                        <button class="btn  btn-secondary">500$</button>
                                    </div>
                                </div>
                            </div>
                            <span class="dropdown-divider text-muted"></span>
                            <div class="row">
                                <div class="d-flex justify-content-between align-items-center">
                                    <p class="fs-6">Deposit amount</p>
                                    <p class="fs-6">500$</p>
                                </div>
                                <div class="d-flex justify-content-between align-items-center">
                                    <p class="fs-6 mb-0">Fee</p>
                                    <p class="fs-6 mb-0">500$</p>
                                </div>
                            </div>
                            <span class="dropdown-divider text-muted"></span>
                            <div class="row">
                                <div class="d-flex justify-content-between align-items-center">
                                    <h5>Total</h5>
                                    <h5>1000$</h5>
                                </div>
                            </div>
                            <div class="row pt-3">
                                <div class="form-group ">
                                    <button class="btn btn-primary w-100" id="" name="btn" value="">Continue</button>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </main>
<%@include file="../common/website/web-footer.jspf"%>
    <!-- end main content -->
