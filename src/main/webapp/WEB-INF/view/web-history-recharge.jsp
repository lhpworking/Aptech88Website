<%@include file="../common/website/web-header.jspf"%>
    <script>
        var user = JSON.parse(getCookie('profileUser'));
        var take = 5;
        if (user == null) {
            window.location.href = '/web';
        } else {
            $(document).ready(function() {
                renderListRecharge(0);
                countAllAndRenderPagination();
            })
        }

        // Render pagination
        function countAllAndRenderPagination() {
            return $.ajax({
                method: 'get',
                url: 'http://localhost:8080/payment/countPaymentByWalletId',
                data: {
                    id: user.wallet[0].id
                }
            }).then(res => {
                var pagination = $('#pagination');
                var sizePage = Math.ceil(res / take);
                if (res == 0) {
                    pagination.replaceWith('<ul class="pagination  justify-content-end" id="pagination"></ul>');
                } else {
                    var rows = `<ul class="pagination  justify-content-end" id="pagination"><li class="page-item disabled">
                            <a class="page-link link-secondary">Previous</a>
                        </li>`;
                    for (var i = 1; i <= sizePage; i++) {
                        rows += `<li class="page-item"><a class="page-link link-secondary " href="javascript:renderListRecharge(` + i + `);">` + i + `</a></li>`;
                    }
                    rows += `<li class="page-item"><a class="page-link link-secondary" href="#!">Next</a></li></ul>`;
                    pagination.replaceWith(rows);
                }

            });
        }

        function renderListRecharge(skip) {
            var id = user.wallet[0].id;
            if (skip == 0) {
                skip = skip * take;
            } else {
                skip = (parseInt(skip) - 1) * take;
            }
            $.ajax({
                method: 'get',
                url: 'http://localhost:8080/payment/getPaymentByWallet',
                data: {
                    id: id,
                    skip: skip,
                    take: take
                }
            }).then(payments => {
                if (payments == '') {
                    $('#tablePayment').append(`<tr style='text-align: center;' ><td colspan="6">You have no transactions yet !</td></tr>`);
                } else {
                    var paymentsObject = [];
                    // Mapping data from object
                    $.each(payments, function(index, payment) {
                        var paymentObject = {
                            id: payment[0],
                            paymentType: payment[1],
                            promotionId: payment[2],
                            amount: payment[3],
                            status: payment[4],
                            walletId: payment[5],
                            fromBankAccount: payment[6],
                            toBankAccount: payment[7],
                            fromBankName: payment[8],
                            toBankName: payment[9],
                            paymentDate: payment[10]
                        }
                        paymentsObject.push(paymentObject);
                    });
                    var rows = '<tbody id="tablePayment">';
                    $.each(paymentsObject, function(index, payment) {
                        rows += '<tr data-bs-toggle="modal" data-bs-target="#InfoTransferModal">' +
                            '<td>' + parseDate(payment.paymentDate) + '</td>' +
                            '<td>Paypal</td>' +
                            '<td>' + formatter.format(payment.amount) + '</td>' +
                            '<td>' + formatter.format(0) + '</td>' +
                            '<td>' + formatter.format(payment.amount) + '</td>' +
                            '<td>' +
                            '<span class="badge bg-success">Success</span>' +
                            '</td>' +
                            '</tr>';
                    });
                    // if (paymentsObject.length < take) {
                    //     var times = take - paymentsObject.length;
                    //     for (var i = 0; i < times; i++) {
                    //         rows += '<tr data-bs-toggle="modal" data-bs-target="#InfoTransferModal"><td></td><td></td><td></td><td></td><td></td><td></td></tr>';
                    //     }
                    // }
                    rows += '</tbody>';
                    $('#tablePayment').replaceWith(rows);
                }

            })

        }

        function parseDate(date) {
            const yourDate = new Date(date);
            // Hours part from the timestamp
            var hours = yourDate.getHours();
            // Minutes part from the timestamp
            var minutes = "0" + yourDate.getMinutes();
            // Seconds part from the timestamp
            var seconds = "0" + yourDate.getSeconds();

            // Will display time in 10:30:23 format
            var formattedTime = hours + ':' + minutes.substr(-2) + ':' + seconds.substr(-2);
            return yourDate.toISOString().split('T')[0] + ' ' + formattedTime;
        }


        var formatter = new Intl.NumberFormat('en-US', {
            style: 'currency',
            currency: 'USD',
        });
    </script>
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
                                                <input type="date" id="fromDate" class="form-control" id="exampleFormControlInput1" multiple>
                                            </div>
                                            <div class="date-to">
                                                <label for="exampleFormControlInput1" class="form-label m-0 fs-7">Date
                                                to</label>
                                                <input type="date" id="toDate" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
                                            </div>
                                        </div>
                                        <div class="type-block">
                                            <label for="exampleDataList" class="form-label m-0 fs-7">Type</label>
                                            <input class="form-control" list="datalistOptions" id="exampleDataList" placeholder="Type method">
                                            <datalist id="datalistOptions">
                                            <option value="Zalo Pay">
                                            <option value="Momo Pay">
                                            <option value="Bank Transfer">
                                            <option value="QR Pay">
                                        </datalist>
                                        </div>
                                        <div class="d-flex align-items-center gap-2">
                                            <button class="btn btn-primary shadow-sm mt-2" id="searchRecharge"><i
                                                class="bi bi-search me-2"></i>Search</button>
                                            <button class="btn btn-light shadow-sm mt-2" id="btnResetListRecharge"><i
                                                class="bi bi-arrow-clockwise me-2" ></i>Reset</button>
                                            <button class="btn btn-secondary shadow-sm mt-2" onclick="exportData('History_recharge_report.csv');" id="btn_export"><i
                                                class="bi bi-file-earmark-arrow-down me-2"></i>Export</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class=" card mt-3 shadow-sm mb-3 p-0">
                                        <table class="table table-responsive table-hover table-striped " id="myTable" cellpadding="0" cellspacing="0">
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
                                            <tbody id="tablePayment">

                                            </tbody>
                                        </table>
                                        <!-- pagination -->
                                        <nav class="p-3 pb-0">
                                            <ul class="pagination  justify-content-end" id="pagination">
                                                <!-- <li class="page-item disabled">
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
                                                </li> -->
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
        <script>
            var wallet_id = user.wallet[0].id;
            $('#searchRecharge').on('click', function() {
                var fromDate = $('#fromDate').val();
                var toDate = $('#toDate').val();

                renderPaginationForFilter(fromDate, toDate).then(countPayment => {
                    templatePaginationForFilter(fromDate, toDate, countPayment);

                    filterDate(fromDate, toDate, 0);
                });



            });

            renderPaginationForFilter = (fromDate, toDate) => {
                if (fromDate != '' && toDate != '') {
                    fromDate += ' 00:00:00';
                    toDate += ' 23:59:59';
                }
                return $.ajax({
                    method: 'get',
                    url: 'http://localhost:8080/payment/countOfFilter',
                    data: {
                        fromDate: fromDate,
                        toDate: toDate,
                        wallet_id: wallet_id
                    }
                });
            }

            function filterDate(fromDate, toDate, skip) {
                if (fromDate != '' && toDate != '') {
                    fromDate += ' 00:00:00';
                    toDate += ' 23:59:59';
                }
                if (skip == 0) {
                    skip = skip * take;
                } else {
                    skip = (parseInt(skip) - 1) * take;
                }
                return $.ajax({
                    method: 'get',
                    url: 'http://localhost:8080/payment/filterDate',
                    data: {
                        fromDate: fromDate,
                        toDate: toDate,
                        skip: skip,
                        take: take,
                        wallet_id: wallet_id
                    }
                }).then(payments => {
                    if (payments == '') {
                        $('#tablePayment').replaceWith(`<tbody id='tablePayment'><tr style='text-align: center;' ><td colspan="6">You have no transactions yet !</td></tr></tbody>`);
                    } else {
                        var paymentsObject = [];
                        // Mapping data from object
                        $.each(payments, function(index, payment) {
                            var paymentObject = {
                                id: payment[0],
                                paymentType: payment[1],
                                promotionId: payment[2],
                                amount: payment[3],
                                status: payment[4],
                                walletId: payment[5],
                                fromBankAccount: payment[6],
                                toBankAccount: payment[7],
                                fromBankName: payment[8],
                                toBankName: payment[9],
                                paymentDate: payment[10]
                            }
                            paymentsObject.push(paymentObject);
                        });
                        var rows = '<tbody id="tablePayment">';
                        $.each(paymentsObject, function(index, payment) {
                            rows += '<tr data-bs-toggle="modal" data-bs-target="#InfoTransferModal">' +
                                '<td>' + parseDate(payment.paymentDate) + '</td>' +
                                '<td>Paypal</td>' +
                                '<td>' + formatter.format(payment.amount) + '</td>' +
                                '<td>' + formatter.format(0) + '</td>' +
                                '<td>' + formatter.format(payment.amount) + '</td>' +
                                '<td>' +
                                '<span class="badge bg-success">Success</span>' +
                                '</td>' +
                                '</tr>';
                        });
                        rows += '</tbody>';
                        $('#tablePayment').replaceWith(rows);
                    }
                });
            }

            templatePaginationForFilter = (fromDate, toDate, res) => {
                var pagination = $('#pagination');
                var sizePage = Math.ceil(res / take);
                if (res == 0) {
                    pagination.replaceWith('<ul class="pagination  justify-content-end" id="pagination"></ul>');
                } else {
                    var rows = `<ul class="pagination  justify-content-end" id="pagination"><li class="page-item disabled">
                            <a class="page-link link-secondary">Previous</a>
                        </li>`;
                    for (var i = 1; i <= sizePage; i++) {
                        rows += `<li class="page-item"><a class="page-link link-secondary " href="javascript:filterDate('` + fromDate + "','" + toDate + "'," + i + `);">` + i + `</a></li>`;
                    }
                    rows += `<li class="page-item"><a class="page-link link-secondary" href="#!">Next</a></li></ul>`;
                    pagination.replaceWith(rows);
                }
            }

            $('#btnResetListRecharge').on('click', function() {
                renderListRecharge(0);
                countAllAndRenderPagination();
                $('#fromDate').val('');
                $('#toDate').val('');
            });
        </script>
    </main>
    <%@include file="../common/website/web-footer.jspf"%>
        <!-- end main content -->