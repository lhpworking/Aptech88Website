<%@include file="../common/website/web-header.jspf"%>
    <script>
        var listBets;
        if (getCookie('profileUser') == null) {
            window.location.href = '/web';
        } else {
            var user = JSON.parse(getCookie('profileUser'));
            $(document).ready(function() {
                getAll();
            });
        }

        function getAll() {
            listBets = [];
            getHistoryBet(user).then(bets => {
                console.log(bets);
                var rows = `<tbody id="listBetHistory">`;
                $.each(bets, function(index, bet) {
                    var betInfor = bet.bet;

                    var date = betInfor.betdetail[0].date;
                    var betAmount = betInfor.betAmount;
                    var odd = betInfor.odd;
                    var oddId = betInfor.betdetail[0].oddId;
                    var homeTeam = '';
                    var awayTeam = '';
                    var fixture = {
                        id: oddId
                    }
                    $.ajax({
                        method: 'post',
                        url: 'http://localhost:8080/GetOddById',
                        contentType: 'application/json',
                        async: false,
                        data: JSON.stringify(fixture)
                    }).done(function(oddInfor) {
                        var fixtureInfor = {
                            id: oddInfor.fixtureId
                        }
                        var oddName = oddInfor.value;
                        $.ajax({
                            method: 'post',
                            url: 'http://localhost:8080/GetFixtureById',
                            contentType: 'application/json',
                            async: false,
                            data: JSON.stringify(fixtureInfor)
                        }).done(function(fixture) {
                            homeTeam = fixture.homeTeam.name;
                            awayTeam = fixture.awayTeam.name;
                            var bettypeId = {
                                id: oddInfor.bettypeId
                            }
                            $.ajax({
                                method: 'post',
                                url: 'http://localhost:8080/GetBettypeById',
                                contentType: 'application/json',
                                async: false,
                                data: JSON.stringify(bettypeId)
                            }).done(function(bettype) {
                                var objectBet = {
                                    date: date,
                                    homeTeam: homeTeam,
                                    awayTeam: awayTeam,
                                    oddName: oddName,
                                    odd: odd,
                                    betAmount: betAmount,
                                    status: betInfor.status,
                                    bettype: bettype.name,
                                    betwin: betInfor.win
                                };
                                listBets.push(objectBet);

                                rows += `<tr data-bs-toggle="modal" data-bs-target="#InfoTransferModal">` +
                                    `<td>` + date + `</td>` +
                                    `<td>` +
                                    `<div class="d-flex flex-column">` +
                                    `<h6 class="menu-method-link m-0">` + homeTeam + ` vs ` + awayTeam + `</h6>` +
                                    `</div>` +
                                    `</td>` +
                                    `<td>` + objectBet.bettype + `</td>` +
                                    `<td>` + oddName + `</td>` +
                                    `<td>` + odd + `</td>` +
                                    `<td>` + betAmount + `$</td>` +
                                    `<td>`;
                                if (bet.bet.status == false) {
                                    rows += `<span class="badge bg-success">in progress</span>`;
                                } else {
                                    rows += `<span class="badge bg-danger">Returned</span>`;
                                }
                                rows += `</td>` +
                                    `</td>` +
                                    `<td>` + objectBet.betwin + `</td>` +
                                    `</tr>`;
                            });

                        });
                    });
                });
                console.log(listBets);
                rows += `</tbody>`;
                $('#listBetHistory').replaceWith(rows);
            });
        }

        function getOdd(id) {
            var fixture = {
                id: id
            }
            $.ajax({
                method: 'post',
                url: 'http://localhost:8080/GetOddById',
                contentType: 'application/json',
                data: JSON.stringify(fixture)
            })
        }

        function getHistoryBet(user) {
            var account = {
                accountId: user.id
            }
            return $.ajax({
                method: 'post',
                url: 'http://localhost:8080/HistoryFindByAccount',
                contentType: 'application/json',
                data: JSON.stringify(account)
            })
        }
    </script>
    <style>
        tbody {
            display: block;
            height: 350px;
            overflow: auto;
        }
        
        thead,
        tbody tr {
            display: table;
            width: 100%;
            table-layout: fixed;
            /* even columns width , fix width of table too*/
        }
        
        thead {
            width: calc( 100% - 1em)/* scrollbar is average 1em/16px width, remove it from thead width */
        }
        
        table {
            width: 400px;
        }
        /* width */
        
         ::-webkit-scrollbar {
            width: 6px;
        }
        /* Track */
        
         ::-webkit-scrollbar-track {
            background: #f1f1f1;
        }
        /* Handle */
        
         ::-webkit-scrollbar-thumb {
            background: #888;
        }
        /* Handle on hover */
        
         ::-webkit-scrollbar-thumb:hover {
            background: #555;
        }
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
                    <div class="col-12 col-lg-9">
                        <div class="content-block p-3">
                            <h2>Betting History</h2>
                            <hr>
                            <div class="user-block">
                                <div class="row ">
                                    <div class=" d-flex flex-lg-wrap flex-wrap gap-1 gap-lg-2 align-items-end m-0 ">
                                        <div class="date-block d-flex gap-2">
                                            <div class="date-from ">
                                                <label for="exampleFormControlInput1" class="form-label m-0 fs-7">Date
                                                from</label>
                                                <input type="date" class="form-control" id="fromDate" multiple>
                                            </div>
                                            <div class="date-to">
                                                <label for="exampleFormControlInput1" class="form-label m-0 fs-7">Date
                                                to</label>
                                                <input type="date" class="form-control" id="toDate" placeholder="name@example.com">
                                            </div>
                                        </div>
                                        <div class="d-flex align-items-center gap-2">
                                            <button class="btn btn-primary shadow-sm mt-2" id="searchBet"><i
                                                class="bi bi-search me-2"></i>Search</button>
                                            <button class="btn btn-light shadow-sm mt-2" id="reset"><i
                                                class="bi bi-arrow-clockwise me-2"></i>Reset</button>
                                            <button class="btn btn-light shadow-sm mt-2" id="new"><i
                                                    class="bi bi-arrow-clockwise me-2"></i>Today</button>
                                            <button class="btn btn-secondary shadow-sm mt-2" onclick="exportData('History_withdraw_report.csv');" id="btn_export"><i
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
                                                    <th scope="col">Fixture</th>
                                                    <th scope="col">Betting Name</th>
                                                    <th scope="col">Value</th>
                                                    <th scope="col">Fee</th>
                                                    <th scope="col">Total</th>
                                                    <th scope="col">Status</th>
                                                    <th scope="col">Actually received</th>
                                                </tr>
                                            </thead>
                                            <tbody id="listBetHistory">
                                                <tr data-bs-toggle="modal" data-bs-target="#InfoTransferModal">
                                                    <td>12/09/2021 07:32:56</td>
                                                    <td>
                                                        <div class="d-flex flex-column">
                                                            <h6 class="menu-method-link m-0">Manchester United vs Chelsea </h6>
                                                        </div>
                                                    </td>
                                                    <td>Manchester United</td>
                                                    <td>U @2.5</td>
                                                    <td>10</td>
                                                    <td>10.010</td>
                                                    <td>
                                                        <span class="badge bg-success">Success</span>
                                                    </td>
                                                    <td>
                                                        <!-- Button trigger modal -->
                                                        <!-- Modal -->

                                                    </td>
                                                </tr>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
    </main>
    <script>
        $('#searchBet').on('click', function() {
            if ($('#fromDate').val() == '' || $('#toDate').val() == '') {
                alert('Please Choose Date');
                return;
            }
            var fromDate = Date.parse($('#fromDate').val());
            var toDate = Date.parse($('#toDate').val());
            var user = JSON.parse(getCookie('profileUser'));
            var rows = `<tbody id="listBetHistory">`;
            $.each(listBets, function(index, bet) {
                var date = Date.parse(bet.date);
                if (fromDate <= date && date <= toDate) {
                    rows += `<tr data-bs-toggle="modal" data-bs-target="#InfoTransferModal">` +
                        `<td>` + bet.date + `</td>` +
                        `<td>` +
                        `<div class="d-flex flex-column">` +
                        `<h6 class="menu-method-link m-0">` + bet.homeTeam + ` vs ` + bet.awayTeam + `</h6>` +
                        `</div>` +
                        `</td>` +
                        `<td>` + bet.bettype + `</td>` +
                        `<td>` + bet.oddName + `</td>` +
                        `<td>` + bet.odd + `</td>` +
                        `<td>` + bet.betAmount + `$</td>` +
                        `<td>`;
                    if (bet.status == false) {
                        rows += `<span class="badge bg-success">in progress</span>`;
                    } else {
                        rows += `<span class="badge bg-danger">Returned</span>`;
                    }
                    rows += `</td>` +
                        `</td>` +
                        `<td>` + bet.betwin + `</td>` +
                        `</tr>`;
                }

            });
            rows += `</tbody>`;
            $('#listBetHistory').replaceWith(rows);
        });

        $('#reset').on('click', function() {
            getAll();
        });

        function reverseArray(arr) {
            if (arr.length === 0) {
                return []
            }
            return [arr.pop()].concat(reverseArray(arr))
        }
        $('#new').on('click', function() {
            var rows = `<tbody id="listBetHistory">`;
            listBets = reverseArray(listBets);
            console.log(listBets);
            $.each(listBets, function(index, bet) {
                rows += `<tr data-bs-toggle="modal" data-bs-target="#InfoTransferModal">` +
                    `<td>` + bet.date + `</td>` +
                    `<td>` +
                    `<div class="d-flex flex-column">` +
                    `<h6 class="menu-method-link m-0">` + bet.homeTeam + ` vs ` + bet.awayTeam + `</h6>` +
                    `</div>` +
                    `</td>` +
                    `<td>` + bet.bettype + `</td>` +
                    `<td>` + bet.oddName + `</td>` +
                    `<td>` + bet.odd + `</td>` +
                    `<td>` + bet.betAmount + `$</td>` +
                    `<td>`;
                if (bet.status == false) {
                    rows += `<span class="badge bg-success">in progress</span>`;
                } else {
                    rows += `<span class="badge bg-danger">Returned</span>`;
                }
                rows += `</td>` +
                    `</td>` +
                    `<td>` + bet.betwin + `</td>` +
                    `</tr>`;
            });
            rows += `</tbody>`;
            $('#listBetHistory').replaceWith(rows);
        });
    </script>
    <%@include file="../common/website/web-footer.jspf"%>
        <!-- end main content -->