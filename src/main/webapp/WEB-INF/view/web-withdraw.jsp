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
            <%@include file="../common/website/web-menu.jspf" %>
                <div class="col-12 col-lg-6">
                    <div class="content-block p-3">
                        <div class="d-flex justify-content-between align-items-center ">
                            <h2 class="m-0">Account Bank</h2>
                            <div class="d-flex align-items-center gap-3">
                                <!-- Button trigger modal -->
                                <a type="button" class="link-secondary fs-7 d-flex align-items-center "
                                    data-bs-toggle="modal" data-bs-target="#newBankModal" type="button">
                                    <i class="bi bi-bank me-2"></i>New account
                                </a>
                                <a href="#!" class="link-secondary fs-7 ">View history <i
                                        class="bi bi-arrow-right-short"></i></a>
                            </div>
                            <!-- Modal -->
                            <div class="modal fade" id="newBankModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                                aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">New account bank</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="form-floating mb-3">
                                                <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
                                                <label for="floatingInput">Account bank name</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <select class="form-select" id="floatingSelect" aria-label="Floating label select example">
                                                    <option selected>-- Select --</option>
                                                    <option value="1">VietinBank</option>
                                                    <option value="2">Sacombank</option>
                                                    <option value="3">Vietcombank</option>
                                                </select>
                                                <label for="floatingSelect">Bank name</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input type="number" class="form-control" id="floatingInput" placeholder="name@example.com">
                                                <label for="floatingInput">Number account</label>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-primary">Save</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr>
                        <h5 class="text-muted fs-6"> Select account bank</h2>
                            <div class="method-block card shadow-sm p-3">
                                <ul class="menu-method list-unstyled">
                                    <li class="menu-method-item  p-3 d-flex justify-content-between align-items-center gap-3">
                                        <div class="info-bank d-flex align-items-center gap-3">
                                            <div class="bank-img">
                                                <img src="https://source.unsplash.com/random" width="50" height="50" alt="">
                                            </div>
                                            <div class="d-flex flex-column">
                                                <h5 class="menu-method-link m-0">VietinBank</h5>
                                                <p class="fs-7 text-muted m-0">**********6789</p>
                                            </div>
                                        </div>
                                        <div class="method-block">
                                            <a href="#" class="link-secondary fs-7"data-bs-toggle="modal" data-bs-target="#bankModal" type="button"><i class="bi bi-pencil me-2" ></i>Edit</a>
                                            <div class="modal fade" id="bankModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLabel">New account bank</h5>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="form-floating mb-3">
                                                                <input type="email" class="form-control" id="floatingInput" value="Ly Hung Phat">
                                                                <label for="floatingInput">Account bank name</label>
                                                            </div>
                                                            <div class="form-floating mb-3">
                                                                <select class="form-select" id="floatingSelect" aria-label="Floating label select example">
                                                                    <option>-- Select --</option>
                                                                    <option value="1" selected>VietinBank</option>
                                                                    <option value="2">Sacombank</option>
                                                                    <option value="3">Vietcombank</option>
                                                                </select>
                                                                <label for="floatingSelect">Bank name</label>
                                                            </div>
                                                            <div class="form-floating mb-3">
                                                                <input type="number" class="form-control" id="floatingInput" value="09098765432">
                                                                <label for="floatingInput">Number account</label>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-primary">Save</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="menu-method-item  p-3 d-flex justify-content-between align-items-center gap-3">
                                        <div class="info-bank d-flex align-items-center gap-3">
                                            <div class="bank-img">
                                                <img src="https://source.unsplash.com/random" width="50" height="50" alt="">
                                            </div>
                                            <div class="d-flex flex-column">
                                                <h5 class="menu-method-link m-0">VietinBank</h5>
                                                <p class="fs-7 text-muted m-0">**********6789</p>
                                            </div>
                                        </div>
                                        <div class="method-block"> 
                                            <a href="#" class="link-secondary fs-7"><i class="bi bi-pencil me-2"></i>Edit</a>
                                        </div>
                                    </li>
                                    <li class="menu-method-item  p-3 d-flex justify-content-between align-items-center gap-3">
                                        <div class="info-bank d-flex align-items-center gap-3">
                                            <div class="bank-img">
                                                <img src="https://source.unsplash.com/random" width="50" height="50" alt="">
                                            </div>
                                            <div class="d-flex flex-column">
                                                <h5 class="menu-method-link m-0">VietinBank</h5>
                                                <p class="fs-7 text-muted m-0">**********6789</p>
                                            </div>
                                        </div>
                                        <div class="method-block"> 
                                            <a href="#" class="link-secondary fs-7"><i class="bi bi-pencil me-2"></i>Edit</a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                    </div>
                </div>
                <div class="col-12 col-lg-3">
                    <div class="deposit-block d-none p-3">
                        <h2>Transaction Details</h2>
                        <hr>
                        <div class=" card border-0 shadow-sm p-3 d-flex flex-column gap-2">
                            <div class="row">
                                <h4 class="m-0"><i class="bi bi-bank2 me-2"></i>Local Bank Transfer</h4>
                                <p class="text-muted fs-7 ">Processing Time: 120 minutes</p>
                            </div>
                            <div class="row">
                                <div class="col-12 col-lg-12">
                                    <div class="form-floating mb-3">
                                        <select class="form-select" id="floatingSelect" aria-label="Floating label select example" disabled>
                                            <option value="1" selected>
                                                VietinBank
                                            </option>
                                            <option value="2">Sacombank</option>
                                            <option value="3">Vietcombank</option>
                                        </select>
                                        <label for="floatingSelect">Bank name</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12 col-lg-12">
                                    <div class="form-floating mb-3">
                                        <input type="text" class="form-control" id="floatingInput" value="**********6789" readonly>
                                        <label for="floatingInput">Account bank number</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12 col-lg-12">
                                    <div class="form-floating mb-3">
                                        <input type="text" class="form-control" id="floatingInput" value="Ly Hung Phat" readonly>
                                        <label for="floatingInput">Account bank name</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12 col-lg-12">
                                    <div class="form-floating mb-3">
                                        <input type="number" class="form-control" id="floatingInput"
                                            placeholder="name@example.com">
                                        <label for="floatingInput">Withdrawal amount</label>
                                    <small class="text-muted m-0 p-0">Range: $ 10 - 100.000</small>
                                    </div>
                                </div>
                            </div>
                            <span class="dropdown-divider text-muted"></span>
                            <div class="row">
                                <div class="d-flex justify-content-between align-items-center">
                                    <p class="fs-6">Withdrawal amount</p>
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
                                    <button class="btn btn-primary w-100" id="" name="btn" value="">Submit</button>
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
