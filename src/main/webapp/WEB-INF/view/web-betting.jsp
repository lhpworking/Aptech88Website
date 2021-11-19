<%@include file="../common/website/web-header.jspf" %>
    <script>
        // if (getCookie('profileUser') == null) {
        //     window.location.href = '/web';
        // } else {
        //     var user = JSON.parse(getCookie('profileUser'));
        //     $(document).ready(function() {

        //     })
        // }
        var league = getCookie('league');
        $(document).ready(function() {
            $('#matchs').attr('href', '/web/match/?league=' + league);
        });
        var url_string = window.location.href;
        var url = new URL(url_string);
        var fixture = url.searchParams.get("match");

        function getFixture(idMatch) {
            var param = {
                id: idMatch
            };

            return $.ajax({
                method: 'post',
                url: 'http://localhost:8000/GetFixtureById',
                contentType: 'application/json',
                data: JSON.stringify(param)
            });
        }

        function getTeam(id) {
            var param = {
                id: id
            }
            return $.ajax({
                method: 'post',
                url: 'http://localhost:8000/GetTeamById',
                contentType: 'application/json',
                async: false,
                data: JSON.stringify(param)
            })
        }
        getFixture(fixture).then(res => {
            //alert(JSON.stringify(res));
            $('#image').attr('src', res.leauge.logo);
            $('#league').html(res.leauge.name);
            $('#dateTimeOfMatch').html(res.date + ' ' + res.time);

            getTeam(res.away).then(team => {
                $('#logoAway').attr('src', team.logo);
                $('#nameAway').html(team.name);
            });

            getTeam(res.home).then(team => {
                $('#logoHome').attr('src', team.logo);
                $('#nameHome').html(team.name);
            });

            if (!localStorage.getItem(fixture)) {
                $.ajax({
                    method: 'GET',
                    url: 'https://api-football-v1.p.rapidapi.com/v3/odds?fixture=' + fixture + '&bookmaker=6',
                    headers: {
                        'x-rapidapi-host': 'api-football-v1.p.rapidapi.com',
                        'x-rapidapi-key': 'c20af5d45emsh3116f32c09643fcp1848d8jsn2559bfc29c69'
                    },
                    async: true,
                    crossDomain: true
                }).done(function(bets) {
                    console.log(bets);
                    bets = bets.response[0].bookmakers[0].bets;
                    var rows = `<div class="flex-column w-100" style="height: 80vh; overflow-x: hidden; " id="menuBetType" role="tablist" aria-orientation="vertical">`;
                    $.each(bets, function(index, bet) {
                        rows += `<a href="javascript:viewOdd(` + bet.id + `);" class="nav-link link-secondary d-flex justify-content-between align-items-center" type="button">` + bet.name + `</a>`;
                    });
                    rows += `</div>`;
                    $('#menuBetType').replaceWith(rows);
                    console.log('This is call api');
                    console.log(bets);
                    localStorage.setItem(fixture, JSON.stringify(bets));
                })
            } else {
                var bets = JSON.parse(localStorage.getItem(fixture));

                var rows = `<div class="flex-column w-100" style="height: 80vh; overflow-x: hidden; " id="menuBetType" role="tablist" aria-orientation="vertical">`;
                $.each(bets, function(index, bet) {
                    rows += `<a href="javascript:viewOdd(` + bet.id + `);" class="nav-link link-secondary d-flex justify-content-between align-items-center" type="button">` + bet.name + `</a>`;
                });
                rows += `</div>`;
                $('#menuBetType').replaceWith(rows);
                console.log('This is local storage');
                console.log(bets);
            }

        })

        function viewOdd(betid) {
            var betId = betid;

            var ListBets = JSON.parse(localStorage.getItem(fixture));

            var rows = `<div class="row mb-3 flex-lg-row flex-column " id="odds">`;
            $.each(ListBets, function(index, bet) {
                if (bet.id === betId) {
                    $.each(bet.values, function(stt, odd) {
                        rows += `<div class="col-lg-4 col-12">` +
                            `<div class="league-choose-group mb-3  d-flex shadow rounded-md overflow-hidden">` +
                            `<button class="btn btn-outline-dark d-inline-flex flex-column align-items-center border-0  p-3 w-100" data-bs-toggle="modal" onclick="pickOdd(this);" data-betid="` + bet.id + `" data-value="` + odd.value + `" data-odd="` + odd.odd + `" data-bs-target="#betModal">` +
                            `<h5>` + bet.name + `<h5>` +
                            `<h3>` + odd.value + `<h3>` +
                            `<h5>` + odd.odd + `<h3>` +
                            `</button>` +
                            `</div>` +
                            `</div>`;
                    });
                    rows += `</div>`;
                    $('#odds').replaceWith(rows);
                }
            });
        }

        function pickOdd(obj) {
            var betId = $(obj).data('betid');
            var value = $(obj).data('value');
            var odd = $(obj).data('odd');
            var bets = JSON.parse(localStorage.getItem(fixture));
            $.each(bets, function(index, bet) {
                if (bet.id === betId) {
                    $('#betName').html(bet.name);
                    $('#betIdHidden').val(betId);
                }
            })

            $('#value').html(value);
            $('#odd').html(odd);


        }
    </script>
    <style>
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
    <main class="main-content position-relative border-radius-lg  ">
        <div id="match">

        </div>
        <div class="container-fluid ">
            <div class="row">
                <div class="col-lg-2 mb-2 mb-lg-0  d-lg-block bg-secondary  p-3">
                    <div class="leagues-block mb-3">
                        <h5 class="title-leagues bg-light w-100 align-items-center">All Betting Type</h5>
                        <!-- europe -->
                        <div class="panel bg-white">
                            <div class="nav flex-column w-100  " id="menuBetType" role="tablist" aria-orientation="vertical">
                                <!-- <a class="nav-link link-secondary d-flex justify-content-between align-items-center" type="button">Goal Odd / Even</a>
                                <a class="nav-link link-secondary d-flex justify-content-between align-items-center" type="button">Goal Over / Under</a>
                                <a class="nav-link link-secondary d-flex justify-content-between align-items-center" type="button">Handicap</a> -->
                            </div>
                        </div>
                    </div>
                </div>
                <!-- content screen -->

                <div class="main-screen col-lg-10 col-12 ms-lg-auto border-0  shadow p-0 ">
                    <div class="title-leagues d-flex justify-content-center align-items-center border-0 bg-white shadow-sm text-center mb-3">
                        <img class="mt-2 mb-2 me-3" src="" width="100" height="100" id="image" alt="">
                        <h1 id="league" class="m-0">UEFA Champion Leagues</h1>
                    </div>

                    <div class="container ">
                        <a href="/web" style="text-decoration: none; font-size: 11px;">Home</a>
                        <span style="text-decoration: none; font-size: 11px;"> > </span>
                        <a href="/web/choose-league" style="text-decoration: none; font-size: 11px;">Leagues</a>
                        <span style="text-decoration: none; font-size: 11px;"> > </span>
                        <a href="#" id="matchs" style="text-decoration: none; font-size: 11px;">Matchs</a>
                        <span style="text-decoration: none; font-size: 11px;"> > </span>
                        <span style="font-size: 11px;">This match</span>
                        <!-- fixture block main markets -->
                        <div class="fixture d-flex flex-column " style="margin-top: 10px;">
                            <div class="card rounded-md shadow-sm mb-3">
                                <!-- table main markets -->
                                <div class="d-inline-flex align-items-center border-0  p-5 justify-content-around">
                                    <div class="d-flex align-items-center flex-column">
                                        <img class="mb-3" id="logoHome" src="https://source.unsplash.com/random" alt="" width="100" height="100">
                                        <h3 id="nameHome">Sheffield Wednesday</h3>
                                        <span>(Home)<span>
                                </div>
                                <div class="flex-column align-items-center gap-3 d-flex">
                                    <img src="/assets/website/img/versus.png" width="50" alt="">
                                    <div class="date-fixture">
                                        <h6 class=" m-0 text-center" id="dateTimeOfMatch"></h6>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center flex-column">
                                    <img class="mb-3" id="logoAway" src="https://source.unsplash.com/random" alt=""
                                        width="100" height="100">
                                    <h3 id="nameAway">Sheffield Wednesday</h3>
                                    <span>(Away)<span>
                                </div>
                            </div>
                        </div>
                            <div class="league-choose-form ">
                                <div class="row mb-3 flex-lg-row flex-column " id="odds">
                                    <div style="text-align: center;">
                                        <h3>Please choose bet type</h3>
                                    </div>
                                    <!-- <div class="col-lg-4 col-12">
                                        <div class="league-choose-group mb-3  d-flex shadow rounded-md overflow-hidden">
                                            <button
                                                class="btn btn-outline-dark d-inline-flex flex-column align-items-center border-0  p-3 w-100"
                                                data-bs-toggle="modal" data-bs-target="#betModal">
                                                <h5>Correct Score - First Half<h3>
                                                <h3>3:0<h3>
                                                <h5>46.00<h3>
                                            </button>
                                        </div>
                                    </div> -->
                                </div>
                            </div>
                            <!-- Modal -->
                            <div class="modal fade" id="betModal" tabindex="-1" aria-labelledby="betModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="betModal">Bet Ticket</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body text-center">
                                            <%-- handicap type --%>
                                                <h3 id="betName">Manchester United</h3>
                                                <input type="hidden" id="betIdHidden">
                                                <div>
                                                    <span class="fs-5 fw-bold me-2" id="value">
                                                    Handicap
                                                </span>
                                        <span class="text-success me-2 fw-bold" id="odd"> +0.5/1</span>
                                    </div>

                                    <div class="form-floating">
                                        <input type="number" class="form-control" id="stake" onkeyup="changeStake(this);" placeholder="Enter Stake">
                                        <label for="floatingPassword">Enter
                                                    Stake</label>
                                    </div>
                                    <div class="d-flex align-items-center justify-content-between text-start mt-2 p-2">
                                        <div class="fs-6 fw-bold">Total Bet</div>
                                        <div style="text-align: right;">
                                            <span class="text-success" id="stakeShow">0
                                            </span>
                                            <span>USD</span>
                                        </div>
                                    </div>
                                    <div class="d-flex align-items-center justify-content-between text-start p-2">
                                        <div class="fs-6 fw-bold text-success">Est. Winnings
                                        </div>
                                        <div style="text-align: right;">
                                            <span class="text-success" id="moneyWin">0
                                            </span>
                                            <span>USD</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" id="cancelModal" data-bs-dismiss="modal">Cancel</button>
                                    <button type="button" class="btn btn-primary" id="betCreate">Submit</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <script src="../assets/website/js/cookie.js"></script>
            <script>
                var user = getCookie('profileUser');
                user = JSON.parse(user);

                $('#betCreate').on('click', function() {
                    if (user == null) {
                        alert('Please login to continue create bet');
                        return;
                    }
                    if (confirm('Are you sure you want to place this bet ?')) {
                        var wallet = user.wallet[0].id;
                        var stake = parseFloat($('#stake').val());
                        var betId = parseInt($('#betIdHidden').val());
                        var value = $('#value').html();
                        var oddValue = parseFloat($('#odd').html());
                        var currentDate = new Date();
                        var date = currentDate.getFullYear() + '/' + (currentDate.getMonth() + 1) + '/' + currentDate.getDate();
                        if (stake > 0) {
                            var bet = {
                                walletId: parseInt(wallet),
                                betAmount: stake
                            };
                            var betdetail_odds = [{
                                date: date,
                                status: false,
                                bettypeId: betId,
                                oddId: 0,
                                value: value,
                                oddValue: oddValue,
                                fixtureId: parseInt(fixture)
                            }];
                            var bet_betdetail_odd = {
                                walletId: wallet,
                                betAmount: stake,
                                betdetail_odds: [{
                                    date: date,
                                    status: false,
                                    bettypeId: betId,
                                    oddId: 0,
                                    value: value,
                                    oddValue: oddValue,
                                    fixtureId: parseInt(fixture)
                                }]
                            }
                            console.log(bet_betdetail_odd)
                            console.log(JSON.stringify(bet_betdetail_odd));
                            console.log(bet_betdetail_odd.bet);
                            console.log(bet_betdetail_odd.betdetail_odds);

                            $.ajax({
                                method: 'post',
                                url: '/web/bet/createBet',
                                data: {
                                    walletId: wallet,
                                    betAmount: stake,
                                    date: date,
                                    status: false,
                                    bettypeId: betId,
                                    oddId: 0,
                                    value: value,
                                    oddValue: oddValue,
                                    fixtureId: fixture
                                },
                                success: function(data) {
                                    data = JSON.parse(data);
                                    if (data.statusCode == 200) {
                                        alert("Create bet success, please check history betting in your account management. Thank for betting");
                                        $('#stake').val('');
                                        $('#stakeShow').html('0');
                                        $('#moneyWin').html('0');
                                        $('#cancelModal').click();
                                        $.ajax({
                                            method: 'post',
                                            url: 'http://localhost:8000/WalletGet',
                                            data: {
                                                accountId: user.id
                                            },
                                            success: function(wallet) {
                                                console.log(wallet);
                                                $.each(wallet, function(index, value) {
                                                    if (value.accountId == user.id) {
                                                        $('#miniAccountMoney').html(formatter.format(value.amount));
                                                    }
                                                });
                                            }
                                        })
                                    } else if (data.statusCode == 404) {
                                        alert("Your amount is less than " + stake + '$. Please recharge more money to your wallet!');
                                    }
                                }
                            })

                        } else {
                            alert('Stake must be more than 0$');
                        }
                    }
                });

                function changeStake(obj) {
                    var LIMIT = 1000;

                    var changeStake = $(obj).val();
                    if (parseInt(changeStake) > LIMIT) {
                        alert('Stake must be less ' + LIMIT + '$');
                        $(obj).val('');
                        $('#stakeShow').html('0');
                        $('#moneyWin').html('0');
                        return;
                    }
                    if (changeStake == '') {
                        $('#stakeShow').html(parseInt(0));
                        $('#moneyWin').html('0');
                    } else {
                        $('#stakeShow').html(parseInt(changeStake));
                        var odd = $('#odd').html();
                        var moneyWin = parseFloat(odd) * parseInt(changeStake);

                        $('#moneyWin').html(moneyWin);
                    }

                }
            </script>
            <%-- footer --%>
                <%@include file="../common/website/web-footer.jspf" %>
        </div>
        </div>
        </div>
        </div>
    </main>