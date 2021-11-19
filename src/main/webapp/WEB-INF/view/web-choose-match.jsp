<%@include file="../common/website/web-header.jspf" %>
    <script>
        var url_string = window.location.href;
        var url = new URL(url_string);
        var fixture = url.searchParams.get("league");

        setCookie('league', fixture);

        function getFixture(leagueId) {
            var param = {
                id: leagueId
            }
            return $.ajax({
                method: 'post',
                url: 'http://localhost:8080/FixtureGet',
                contentType: 'application/json',
                async: false,
                data: JSON.stringify(param)
            })
        }

        function getTeam(id) {
            var param = {
                id: id
            };
            return $.ajax({
                method: 'post',
                url: 'http://localhost:8080/GetTeamById',
                contentType: 'application/json',
                data: JSON.stringify(param)
            })
        }

        Date.prototype.addDays = function(days) {
            var date = new Date(this.valueOf());
            date.setDate(date.getDate() + days);
            return date;
        }

        getFixture(fixture).then(res => {
            var LIMIT_DAY = 3;
            var rows = `<div class="row mb-3 flex-lg-row flex-column " id="matchs">`;
            var date = new Date();

            var currentDate = date.getFullYear() + '-' + (date.getMonth() + 1) + '-' + date.getDate();
            date.setDate(date.getDate() + LIMIT_DAY);
            var dateLimit = date.getFullYear() + '-' + (date.getMonth() + 1) + '-' + date.getDate();

            var count = 0;
            $.each(res, function(index, match) {
                if (Date.parse(match.date) >= Date.parse(currentDate) && Date.parse(match.date) <= Date.parse(dateLimit)) {
                    console.log(match.date);
                    rows += `<div class="col-lg-4 col-12 mb-3">` +
                        `<div class="league-choose-group h-100  d-flex shadow rounded-md overflow-hidden">` +
                        `<button class="btn btn-outline-dark d-inline-flex align-items-center border-0  p-3 w-100" data-idMatch="` + match.id + `" onclick="goToMatch(this);">`;
                    var away = {
                        id: match.away
                    };
                    $.ajax({
                        method: 'post',
                        url: 'http://localhost:8080/GetTeamById',
                        contentType: 'application/json',
                        async: false,
                        data: JSON.stringify(away),
                        success: function(team) {
                            rows += `<div>` +
                                `<img  src="` + team.logo + `" alt="" width="100" height="100">` +
                                `<div>` +
                                `<span style="font-size: 16px;">` + team.name + `</span>` +
                                `</div>` +
                                `</div>`;
                        }
                    })
                    rows += `<div style="width: 50%;"><img src="/assets/website/img/versus.png" alt="" style="width: 20%;"><div>` + match.date + `</div><div>` + match.time + `</div></div>`;
                    var home = {
                        id: match.home
                    };
                    $.ajax({
                        method: 'post',
                        url: 'http://localhost:8080/GetTeamById',
                        contentType: 'application/json',
                        async: false,
                        data: JSON.stringify(home),
                        success: function(team) {
                            rows += `<div>` +
                                `<img src="` + team.logo + `" alt="" width="100" height="100">` +
                                `<div>` +
                                `<span style="font-size: 16px;">` + team.name + `</span>` +
                                `</div>` +
                                `</div>`;
                        }
                    })
                    rows += `</button></div></div>`;
                    count++;
                }

            });

            rows += `</div>`;
            if (count > 0) {
                $('#matchs').replaceWith(rows);
            }
        })
    </script>
    <main class="main-content position-relative border-radius-lg  ">
        <div class="container">
            <div class="league-choose-block p-5">
                <h1 class="text-center pb-5">Matchs</h1>
                <div class="search-league text-center pb-5">
                    <div class="row">
                        <div class="col-12">
                            <div class="input-group mb-3">
                                <input type="text" class="form-control form-control-lg" placeholder="Find league.." aria-label="Find league" aria-describedby="button-addon2">
                                <button class="btn btn-secondary" type="button" id="button-addon2"><i
                                        class="bi bi-search"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                    <a href="/web" style="text-decoration: none; font-size: 11px;">Home</a>
                    <span style="text-decoration: none; font-size: 11px;"> > </span>
                    <a href="/web/choose-league" style="text-decoration: none; font-size: 11px;">Leagues</a>
                    <span style="text-decoration: none; font-size: 11px;"> > </span>
                    <span style="text-decoration: none; font-size: 11px;"> Matchs </span>
                </div>
                <div class="league-choose-form " style="margin-top: 10px;">
                    <div class="row mb-3 flex-lg-row flex-column " id="matchs">

                        <div>
                            <h2>We will update new match as soon as posible</h2>
                        </div>
                        <!-- <div class="col-lg-4 col-12">
                            <div class="league-choose-group mb-3  d-flex shadow rounded-md overflow-hidden">
                                <button class="btn btn-outline-dark d-inline-flex align-items-center border-0  p-3 w-100" data-bs-toggle="button"> 
                                    <div>
                                        <img class="rounded-circle me-3" src="https://source.unsplash.com/random" alt="" width="80" height="80">
                                        <div>
                                            <span style="font-size: 11px;">Sheffield Wednesday</span>
                                        </div>
                                    </div>
                                    <div style="width: 50%;">
                                        <img src="/assets/website/img/versus.png" alt="" style="width: 20%;">
                                        <div>
                                            20:00 AM
                                        </div>
                                    </div>
                                    <div>
                                        <img class="rounded-circle me-3" src="https://source.unsplash.com/random" alt="" width="80" height="80">
                                        <div>
                                            <span style="font-size: 11px;">Sheffield Wednesday</span>
                                        </div>
                                    </div>
                                </button>
                            </div>
                        </div>
                        <div class="col-lg-4 col-12">
                            <div class="league-choose-group mb-3  d-flex shadow rounded-md overflow-hidden">
                                <button class="btn btn-outline-dark d-inline-flex align-items-center border-0  p-3 w-100" data-bs-toggle="button"> 
                                    <div>
                                        <img class="rounded-circle me-3" src="https://source.unsplash.com/random" alt="" width="80" height="80">
                                        <div>
                                            <span style="font-size: 11px;">Sheffield Wednesday</span>
                                        </div>
                                    </div>
                                    <div style="width: 50%;">
                                        <img src="/assets/website/img/versus.png" alt="" style="width: 20%;">
                                    </div>
                                    <div>
                                        <img class="rounded-circle me-3" src="https://source.unsplash.com/random" alt="" width="80" height="80">
                                        <div>
                                            <span style="font-size: 11px;">Sheffield Wednesday</span>
                                        </div>
                                    </div>
                                </button>
                            </div>
                        </div>
                        <div class="col-lg-4 col-12">
                            <div class="league-choose-group mb-3  d-flex shadow rounded-md overflow-hidden">
                                <button class="btn btn-outline-dark d-inline-flex align-items-center border-0  p-3 w-100" data-bs-toggle="button"> 
                                    <div>
                                        <img class="rounded-circle me-3" src="https://source.unsplash.com/random" alt="" width="80" height="80">
                                        <div>
                                            <span style="font-size: 11px;">Sheffield Wednesday</span>
                                        </div>
                                    </div>
                                    <div style="width: 50%;">
                                        <img src="/assets/website/img/versus.png" alt="" style="width: 20%;">
                                    </div>
                                    <div>
                                        <img class="rounded-circle me-3" src="https://source.unsplash.com/random" alt="" width="80" height="80">
                                        <div>
                                            <span style="font-size: 11px;">Sheffield Wednesday</span>
                                        </div>
                                    </div>
                                </button>
                            </div>
                        </div> -->
                    </div>
                </div>
            </div>
        </div>
    </main>
    <script>
        function goToMatch(obj) {
            var idMatch = $(obj).data('idmatch');
            window.location.href = '/web/betting/?match=' + idMatch;
        }
    </script>
    <%@include file="../common/website/web-footer.jspf" %>