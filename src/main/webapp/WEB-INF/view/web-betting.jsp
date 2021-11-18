<%@include file="../common/website/web-header.jspf" %>
    <script>
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
            alert(JSON.stringify(res));
            $('#image').attr('src', res.leauge.logo);
            $('#league').html(res.leauge.name);
            $('#dateTimeOfMatch').html(res.date + ' ' + res.time);

            getTeam(res.away).then(team => {
                $('#logoAway').attr('src', team.logo);
                $('#nameAway').html(team.name);
            });

            getTeam(res.home).then(team => {
                $('#logoHome').attr('src', team.logo);
                $('#nameHome').html( team.name);
            });

            $.ajax({
                    method: 'GET',
                    url: 'https://api-football-v1.p.rapidapi.com/v3/odds?fixture=' + fixture,
                    headers: {
                        'x-rapidapi-host': 'api-football-v1.p.rapidapi.com',
                        'x-rapidapi-key': 'c20af5d45emsh3116f32c09643fcp1848d8jsn2559bfc29c69'
                    },
                    async: true,
                    crossDomain: true,
                    success: function(data) {
                        console.log(JSON.stringify(data));
                    }
                })
            $.ajax(settings).done(function(response) {
                console.log(response);
            });

        })
    </script>
   <main class="main-content position-relative border-radius-lg  ">
    <div id="match">

    </div>
    <div class="container-fluid ">
        <div class="row">
            <div class="col-lg-2 mb-2 mb-lg-0  d-lg-block bg-secondary  p-3">
                <div class="leagues-block mb-3">
                    <h5 class="title-leagues bg-light w-100 align-items-center">All Betting Type</h5>
                    <!-- europe -->
                    <div class="panel bg-white overflow-hidden">
                        <div class="nav flex-column w-100  " id="v-pills-tab" role="tablist"
                            aria-orientation="vertical">
                            <a class="nav-link link-secondary d-flex justify-content-between align-items-center"
                                type="button">Goal Odd / Even</a>
                            <a class="nav-link link-secondary d-flex justify-content-between align-items-center"
                                type="button">Goal Over / Under</a>
                            <a class="nav-link link-secondary d-flex justify-content-between align-items-center"
                                type="button">Handicap</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- content screen -->
            <div class="main-screen col-lg-10 col-12 ms-lg-auto border-0  shadow p-0 ">
                <div
                    class="title-leagues d-flex justify-content-center align-items-center border-0 bg-white shadow-sm text-center mb-3">
                    <img class="mt-2 mb-2 me-3" src="" width="100" height="100" id="image" alt="">
                    <h1 id="league" class="m-0">UEFA Champion Leagues</h1>
                </div>
                <div class="container ">
                    <!-- fixture block main markets -->
                    <div class="fixture d-flex flex-column ">
                        <div class="card rounded-md shadow-sm mb-3">
                            <!-- table main markets -->
                            <div class="d-inline-flex align-items-center border-0  p-5 justify-content-around">
                                <div class="d-flex align-items-center flex-column">
                                    <img class="mb-3" id="logoHome" src="https://source.unsplash.com/random" alt=""
                                        width="100" height="100">
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
                                <div class="row mb-3 flex-lg-row flex-column " id="matchs">
                                    <div class="col-lg-4 col-12">
                                        <div class="league-choose-group mb-3  d-flex shadow rounded-md overflow-hidden">
                                            <button
                                                class="btn btn-outline-dark d-inline-flex flex-column align-items-center border-0  p-3 w-100"
                                                data-bs-toggle="modal" data-bs-target="#betModal">
                                                <h5>Correct Score - First Half<h3>
                                                <h3>3:0<h3>
                                                <h5>46.00<h3>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-12">
                                        <div class="league-choose-group mb-3  d-flex shadow rounded-md overflow-hidden">
                                            <button
                                                class="btn btn-outline-dark d-inline-flex flex-column align-items-center border-0  p-3 w-100"
                                                data-bs-toggle="modal" data-bs-target="#betModal">
                                                <h5>Correct Score - First Half<h3>
                                                <h3>3:1<h3>
                                                <h5>61.00<h3>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-12">
                                        <div class="league-choose-group mb-3  d-flex shadow rounded-md overflow-hidden">
                                            <button
                                                class="btn btn-outline-dark d-inline-flex flex-column align-items-center border-0  p-3 w-100"
                                                data-bs-toggle="modal" data-bs-target="#betModal">
                                                <h5>Correct Score - First Half<h3>
                                                <h3>3:2<h3>
                                                <h5>126.00<h3>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Modal -->
                            <div class="modal fade" id="betModal" tabindex="-1" aria-labelledby="betModalLabel"
                                aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="betModal">Bet Ticket</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body text-center">
                                            <%-- handicap type --%>
                                            <h3>Manchester United</h3>
                                            <div>
                                                <span class="fs-5 fw-bold me-2">
                                                    Handicap
                                                </span>
                                                <span class="text-success me-2 fw-bold"> +0.5/1</span>
                                                <span class="fw-bold"> @ 0.88</span>
                                            </div>
                                            <%-- 1 x2 type --%>
                                            <h3>Manchester United</h3>
                                            <div>
                                                <span class="fs-5 fw-bold me-2">
                                                    1 x 2
                                                </span>
                                                <span class="fw-bold"> @ 0.88</span>
                                            </div>
                                            <%-- Goals O/u type --%>
                                            <h3>Manchester United vs Chelsea</h3>
                                            <div class="">
                                                <span class="fs-5 fw-bold me-2">
                                                    Over
                                                </span>
                                                <span class="text-success me-2 fw-bold"> +0.5/1</span>
                                                <span class="fw-bold"> @ 0.88</span>
                                                <h5>Goals: Over / Under</h5>
                                            </div>
                                            <%-- end --%>
                                            <%-- Goals O/E type --%>
                                            <h3>Manchester United vs Chelsea</h3>
                                            <div class="">
                                                <span class="fs-5 fw-bold me-2">
                                                    Odd
                                                </span>
                                                <span class="fw-bold"> @ 0.88</span>
                                                <h5>Goals: Odd / Even</h5>
                                            </div>
                                            <%-- end --%>
                                            <div class="form-floating">
                                                <input type="number" class="form-control"
                                                    id="floatingPassword"
                                                    placeholder="Enter Stake">
                                                <label for="floatingPassword">Enter
                                                    Stake</label>
                                            </div>
                                            <div
                                                class="d-flex align-items-center justify-content-between text-start mt-2 p-2">
                                                <div class="fs-6 fw-bold">Total Bet</div>
                                                <div> 100 <span>USD</span></div>
                                            </div>
                                            <div
                                                class="d-flex align-items-center justify-content-between text-start p-2">
                                                <div class="fs-6 fw-bold text-success">Est.
                                                    Winnings</div>
                                                <div class="text-success"> 188 <span>USD</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary"
                                                data-bs-dismiss="modal">Cancel</button>
                                            <button type="button" class="btn btn-primary">Submit</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%-- footer --%>
                    <%@include file="../common/website/web-footer.jspf" %>
                </div>
            </div>
        </div>
    </div>
</main>