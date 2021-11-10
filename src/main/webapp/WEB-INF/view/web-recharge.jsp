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
                                <a href="/web/history-recharge" class="link-secondary fs-7 ">View history <i
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
                                    <h4 class="m-0"><i class="bi bi-bank2 me-2"></i>Momo Pay</h4>
                                    <p class="text-muted fs-7 ">Processing Time: 5 minutes</p>
                                </div>
                                <div class="row">
                                    <div class="col-12 col-lg-12">
                                        <div class="form-floating mb-3">
                                            <input type="number" class="form-control" id="enterAmount" oninput="changeMoney(this);" placeholder="name@example.com">
                                            <label for="floatingInput">Deposit amount</label>
                                            <small class="text-muted m-0 p-0">Range: $ 10 - 100.000</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="row text-center align-content-stretch">
                                    <div class="col-4 col-lg-4 ">
                                        <div class="form-group mb-3">
                                            <button class="btn  btn-secondary" onclick="selectMoney(this);" value="10">10$</button>
                                        </div>
                                    </div>
                                    <div class="col-4 col-lg-4">
                                        <div class="form-group mb-3">
                                            <button class="btn  btn-secondary" onclick="selectMoney(this);" value="100">100$</button>
                                        </div>
                                    </div>
                                    <div class="col-4 col-lg-4">
                                        <div class="form-group mb-3">
                                            <button class="btn  btn-secondary" onclick="selectMoney(this);" value="1000">1000$</button>
                                        </div>
                                    </div>
                                </div>
                                <span class="dropdown-divider text-muted"></span>
                                <div class="row">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <p class="fs-6">Deposit amount</p>
                                        <p class="fs-6" id="amountHtml">0$</p>
                                    </div>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <p class="fs-6 mb-0">Fee</p>
                                        <p class="fs-6 mb-0">0$</p>
                                    </div>
                                </div>
                                <span class="dropdown-divider text-muted"></span>
                                <div class="row">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <h5>Total</h5>
                                        <h5 id="totalHtml">0$</h5>
                                    </div>
                                </div>
                                <div class="row pt-3">
                                    <div class="form-group ">
                                        <form action="/web/paypal" onsubmit="return validateMoney();" method="post">
                                            <input type="hidden" id="totalHidden" value="0" name="total">
                                            <button type="submit" class="btn btn-primary w-100" id="paypalPayment" name="btn" value="">Continue</button>
                                        </form>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
            </div>
        </div>
    </main>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        if (window.location.search != '') {
            var url_string = 'http://localhost:8080' + window.location.pathname + window.location.search;
            var url = new URL(url_string);
            var paymentInfor = {
                    walletId: user.wallet[0].id,
                    paymentId: url.searchParams.get('paymentId'),
                    payerId: url.searchParams.get('PayerID'),
                    amount: url.searchParams.get('total')
                }
                // Get infor of payment
            var payment = {
                paymentType: 'deposit',
                amount: paymentInfor.amount,
                status: 1,
                walletId: paymentInfor.walletId,
                fromBankAccount: null,
                toBankAccount: null,
                fromBankName: null,
                toBankName: null,
                promotionId: null
            }
            $.ajax({
                method: 'post',
                url: 'http://localhost:8000/PaymentCreate',
                contentType: 'application/json',
                data: JSON.stringify(payment),
                success: function(res) {
                    // alert('Congratulation: You just recharged ' + res.amount + '$ into your account.');
                    window.location.href = '/web/recharge';
                }
            })
        }

        function selectMoney(obj) {
            var selectMoney = $(obj).val();
            $('#enterAmount').val('');

            $('#amountHtml').html(selectMoney + '$');
            $('#totalHtml').html(selectMoney + '$');

            $('#totalHidden').val(selectMoney);
        }

        function changeMoney(obj) {
            var money = $(obj).val();
            if (money === '') {
                $('#amountHtml').html('0$');
                $('#totalHtml').html('0$');
            } else {
                $('#amountHtml').html(money + '$');
                $('#totalHtml').html(money + '$');
            }
            if (parseInt(money) > 2000) {
                alert('Maximun money is 2000');
                money = 2000;
                $(obj).val(money);
                $('#amountHtml').html(money + '$');
                $('#totalHtml').html(money + '$');
            }
            $('#totalHidden').val(money);
        }

        function validateMoney() {
            var total = $('#totalHidden').val();
            if (total == 0 || total == '') {
                alert('Please enter amount !');
                return false;
            }
        }
    </script>
    <%@include file="../common/website/web-footer.jspf"%>
        <!-- end main content -->