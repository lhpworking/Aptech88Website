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
                <div class="col-12 col-lg-9">
                    <div class="content-block p-3">
                        <h2>Recharge History</h2>
                        <hr>
                        <div class="user-block">
                            <div class="row ">
                                <div class=" d-flex flex-lg-wrap flex-wrap gap-1 gap-lg-2 align-items-end m-0 ">
                                    <div class="date-block d-flex gap-2">
                                        <div class="date-from ">
                                            <label for="exampleFormControlInput1" class="form-label m-0 fs-7">Date
                                                from</label>
                                            <input type="date" class="form-control" id="exampleFormControlInput1"
                                                multiple>
                                        </div>
                                        <div class="date-to">
                                            <label for="exampleFormControlInput1" class="form-label m-0 fs-7">Date
                                                to</label>
                                            <input type="date" class="form-control" id="exampleFormControlInput1"
                                                placeholder="name@example.com">
                                        </div>
                                    </div>
                                    <div class="type-block">
                                        <label for="exampleDataList" class="form-label m-0 fs-7">Type</label>
                                        <input class="form-control" list="datalistOptions" id="exampleDataList"
                                            placeholder="Type method">
                                        <datalist id="datalistOptions">
                                            <option value="Zalo Pay">
                                            <option value="Momo Pay">
                                            <option value="Bank Transfer">
                                            <option value="QR Pay">
                                        </datalist>
                                    </div>
                                    <div class="d-flex align-items-center gap-2">
                                        <button class="btn btn-primary shadow-sm mt-2"><i
                                                class="bi bi-search me-2"></i>Search</button>
                                        <button class="btn btn-light shadow-sm mt-2"><i
                                                class="bi bi-arrow-clockwise me-2"></i>Reset</button>
                                        <button class="btn btn-secondary shadow-sm mt-2"
                                            onclick="exportData('History_recharge_report.csv');" id="btn_export"><i
                                                class="bi bi-file-earmark-arrow-down me-2"></i>Export</button>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class=" card mt-3 shadow-sm mb-3 p-0">
                                    <table class="table table-responsive table-hover table-striped " id="myTable"
                                        cellpadding="0" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th scope="col">Date</th>
                                                <th scope="col">Type method</th>
                                                <th scope="col">Deposit amount</th>
                                                <th scope="col">Fee</th>
                                                <th scope="col">Total</th>
                                                <th scope="col">Status</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr data-bs-toggle="modal" data-bs-target="#InfoTransferModal">
                                                <td>12/09/2021 07:32:56</td>
                                                <td>Momo Pay</td>
                                                <td>10.000</td>
                                                <td>10</td>
                                                <td>10.010</td>
                                                <td>
                                                    <span class="badge bg-success">Success</span>
                                                </td>
                                                <td>
                                                    <!-- Button trigger modal -->
                                                    <!-- Modal -->
                                                    <div class="modal fade" id="InfoTransferModal" tabindex="-1"
                                                        aria-labelledby="InfoTransferModal" aria-hidden="true">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header ">
                                                                    <h5 class="modal-title" id="InfoTransferModal">
                                                                        Transfer Details <span
                                                                            class="badge bg-success">Success</span></h5>
                                                                    <button type="button" class="btn-close"
                                                                        data-bs-dismiss="modal"
                                                                        aria-label="Close"></button>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <div class="row">
                                                                        <div class="col-6">
                                                                            <div class="form-floating mb-3">
                                                                                <input type="text" class="form-control"
                                                                                    id="floatingInput"
                                                                                    value="#M23231232" disabled
                                                                                    placeholder="name@example.com">
                                                                                <label for="floatingInput">Trading
                                                                                    code</label>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-6">
                                                                            <div class="form-floating mb-3">
                                                                                <input type="text" class="form-control"
                                                                                    id="floatingInput" value="Zalo Pay"
                                                                                    disabled
                                                                                    placeholder="name@example.com">
                                                                                <label for="floatingInput">Type
                                                                                    method</label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            <div class="form-floating mb-3">
                                                                                <input type="text" class="form-control"
                                                                                    id="floatingInput"
                                                                                    value="12/09/2021 07:58:29" disabled
                                                                                    placeholder="name@example.com">
                                                                                <label for="floatingInput">Date</label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-6">
                                                                            <div class="form-floating mb-3">
                                                                                <input type="text" class="form-control"
                                                                                    id="floatingInput" value="10.000"
                                                                                    disabled
                                                                                    placeholder="name@example.com">
                                                                                <label for="floatingInput">Deposit
                                                                                    amount $</label>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-6">
                                                                            <div class="form-floating mb-3">
                                                                                <input type="text" class="form-control"
                                                                                    id="floatingInput" value="10"
                                                                                    disabled
                                                                                    placeholder="name@example.com">
                                                                                <label for="floatingInput">Fee $</label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            <div class="form-floating mb-3">
                                                                                <input type="text" class="form-control"
                                                                                    id="floatingInput" value="10.010"
                                                                                    disabled
                                                                                    placeholder="name@example.com">
                                                                                <label for="floatingInput">Total
                                                                                    $</label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr data-bs-toggle="modal" data-bs-target="#InfoTransferModal">
                                                <td>12/09/2021 07:32:56</td>
                                                <td>Momo Pay</td>
                                                <td>10.000</td>
                                                <td>10</td>
                                                <td>10.010</td>
                                                <td>
                                                    <span class="badge bg-warning">Processing</span>
                                                </td>
                                                <td>
                                                    <!-- Button trigger modal -->
                                                    <!-- Modal -->
                                                    <div class="modal fade" id="InfoTransferModal" tabindex="-1"
                                                        aria-labelledby="InfoTransferModal" aria-hidden="true">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header ">
                                                                    <h5 class="modal-title" id="InfoTransferModal">
                                                                        Transfer Details <span
                                                                            class="badge bg-warning">Processing</span>
                                                                    </h5>
                                                                    <button type="button" class="btn-close"
                                                                        data-bs-dismiss="modal"
                                                                        aria-label="Close"></button>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <div class="row">
                                                                        <div class="col-6">
                                                                            <div class="form-floating mb-3">
                                                                                <input type="text" class="form-control"
                                                                                    id="floatingInput"
                                                                                    value="#M23231232" disabled
                                                                                    placeholder="name@example.com">
                                                                                <label for="floatingInput">Trading
                                                                                    code</label>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-6">
                                                                            <div class="form-floating mb-3">
                                                                                <input type="text" class="form-control"
                                                                                    id="floatingInput" value="Zalo Pay"
                                                                                    disabled
                                                                                    placeholder="name@example.com">
                                                                                <label for="floatingInput">Type
                                                                                    method</label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            <div class="form-floating mb-3">
                                                                                <input type="text" class="form-control"
                                                                                    id="floatingInput"
                                                                                    value="12/09/2021 07:58:29" disabled
                                                                                    placeholder="name@example.com">
                                                                                <label for="floatingInput">Date</label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-6">
                                                                            <div class="form-floating mb-3">
                                                                                <input type="text" class="form-control"
                                                                                    id="floatingInput" value="10.000"
                                                                                    disabled
                                                                                    placeholder="name@example.com">
                                                                                <label for="floatingInput">Deposit
                                                                                    amount $</label>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-6">
                                                                            <div class="form-floating mb-3">
                                                                                <input type="text" class="form-control"
                                                                                    id="floatingInput" value="10"
                                                                                    disabled
                                                                                    placeholder="name@example.com">
                                                                                <label for="floatingInput">Fee $</label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            <div class="form-floating mb-3">
                                                                                <input type="text" class="form-control"
                                                                                    id="floatingInput" value="10.010"
                                                                                    disabled
                                                                                    placeholder="name@example.com">
                                                                                <label for="floatingInput">Total
                                                                                    $</label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr data-bs-toggle="modal" data-bs-target="#InfoTransferModal">
                                                <td>12/09/2021 07:32:56</td>
                                                <td>Momo Pay</td>
                                                <td>10.000</td>
                                                <td>10</td>
                                                <td>10.010</td>
                                                <td>
                                                    <span class="badge bg-danger">Error</span>
                                                </td>
                                                <td>
                                                    <!-- Button trigger modal -->
                                                    <!-- Modal -->
                                                    <div class="modal fade" id="InfoTransferModal" tabindex="-1"
                                                        aria-labelledby="InfoTransferModal" aria-hidden="true">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header ">
                                                                    <h5 class="modal-title" id="InfoTransferModal">
                                                                        Transfer Details <span
                                                                            class="badge bg-danger">Erro</span></h5>
                                                                    <button type="button" class="btn-close"
                                                                        data-bs-dismiss="modal"
                                                                        aria-label="Close"></button>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <div class="row">
                                                                        <div class="col-6">
                                                                            <div class="form-floating mb-3">
                                                                                <input type="text" class="form-control"
                                                                                    id="floatingInput"
                                                                                    value="#M23231232" disabled
                                                                                    placeholder="name@example.com">
                                                                                <label for="floatingInput">Trading
                                                                                    code</label>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-6">
                                                                            <div class="form-floating mb-3">
                                                                                <input type="text" class="form-control"
                                                                                    id="floatingInput" value="Zalo Pay"
                                                                                    disabled
                                                                                    placeholder="name@example.com">
                                                                                <label for="floatingInput">Type
                                                                                    method</label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            <div class="form-floating mb-3">
                                                                                <input type="text" class="form-control"
                                                                                    id="floatingInput"
                                                                                    value="12/09/2021 07:58:29" disabled
                                                                                    placeholder="name@example.com">
                                                                                <label for="floatingInput">Date</label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-6">
                                                                            <div class="form-floating mb-3">
                                                                                <input type="text" class="form-control"
                                                                                    id="floatingInput" value="10.000"
                                                                                    disabled
                                                                                    placeholder="name@example.com">
                                                                                <label for="floatingInput">Deposit
                                                                                    amount $</label>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-6">
                                                                            <div class="form-floating mb-3">
                                                                                <input type="text" class="form-control"
                                                                                    id="floatingInput" value="10"
                                                                                    disabled
                                                                                    placeholder="name@example.com">
                                                                                <label for="floatingInput">Fee $</label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            <div class="form-floating mb-3">
                                                                                <input type="text" class="form-control"
                                                                                    id="floatingInput" value="10.010"
                                                                                    disabled
                                                                                    placeholder="name@example.com">
                                                                                <label for="floatingInput">Total
                                                                                    $</label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <!-- pagination -->
                                    <nav class="p-3 pb-0">
                                        <ul class="pagination  justify-content-end">
                                            <li class="page-item disabled">
                                                <a class="page-link link-secondary">Previous</a>
                                            </li>
                                            <li class="page-item"><a class="page-link link-secondary " href="#!">1</a>
                                            </li>
                                            <li class="page-item"><a class="page-link link-secondary" href="#!">2</a>
                                            </li>
                                            <li class="page-item"><a class="page-link link-secondary" href="#!">3</a>
                                            </li>
                                            <li class="page-item">
                                                <a class="page-link link-secondary" href="#!">Next</a>
                                            </li>
                                        </ul>
                                    </nav>
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
