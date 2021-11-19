<%@include file="../common/website/web-header.jspf" %>
    <main class="main-content position-relative border-radius-lg  ">
        <div class="container">
            <div class="league-choose-block p-5">
                <h1 class="text-center pb-5">Featured Match Of The Month</h1>
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
                    <span style="text-decoration: none; font-size: 11px;"> Leagues </span>
                </div>
                <div class="league-choose-form " style="margin-top: 10px;">
                    <div class="row mb-3 flex-lg-row flex-column " id="leagues">

                    </div>
                    <!-- <div class="row mb-3 flex-lg-row flex-column ">
                        <div class="col-lg-4 col-12">
                            <div class="league-choose-group mb-3  d-flex shadow rounded-md overflow-hidden">
                                <button class="btn btn-outline-dark d-inline-flex align-items-center border-0  p-3 w-100" data-bs-toggle="button"> <img class="rounded-circle me-3"
                                        src="https://source.unsplash.com/random" alt="" width="100" height="100">UEFA
                                    CHAMPIONS
                                    LEAGUE</button>
                            </div>
                        </div>
                        <div class="col-lg-4 col-12">
                            <div class="league-choose-group mb-3  d-flex shadow rounded-md overflow-hidden">
                                <button class="btn btn-outline-dark d-inline-flex align-items-center border-0  p-3 w-100" data-bs-toggle="button"> <img class="rounded-circle me-3"
                                        src="https://source.unsplash.com/random" alt="" width="100" height="100">UEFA
                                    CHAMPIONS
                                    LEAGUE</button>
                            </div>
                        </div>
                        <div class="col-lg-4 col-12">
                            <div class="league-choose-group mb-3  d-flex shadow rounded-md overflow-hidden">
                                <button class="btn btn-outline-dark d-inline-flex align-items-center border-0  p-3 w-100" data-bs-toggle="button"> <img class="rounded-circle me-3"
                                        src="https://source.unsplash.com/random" alt="" width="100" height="100">UEFA
                                    CHAMPIONS
                                    LEAGUE</button>
                            </div>
                        </div>
                    </div> -->
                </div>
            </div>
        </div>
    </main>
    <script>
        function getListShow() {
            return $.ajax({
                method: 'get',
                url: 'http://localhost:8000/LeagueTop'
            })
        }
        getListShow().then(res => {
            // alert(JSON.stringify(res));
            // var listLeagues = [];
            // $.each(res, function(index, value) {
            //     var league = {
            //         id: value[0],
            //         name: value[1],
            //         logo: value[2],
            //         status: value[3]
            //     }
            //     listLeagues.push(league);
            // });

            var rows = `<div class="row mb-3 flex-lg-row flex-column " id="leagues">`;
            $.each(res, function(index, league) {
                rows += `<div class="col-lg-4 col-12 ">` +
                    `<div class="league-choose-group mb-3  d-flex shadow rounded-md overflow-hidden">` +
                    `<button class="btn btn-outline-dark d-inline-flex align-items-center border-0  p-3 w-100" data-id="` + league.id + `" onclick="goToFixtures(this);"> <img class="me-3"
                                        src="` + league.logo + `" alt="" width="100" height="100">` +
                    league.name +
                    `</button>` +
                    `</div>` +
                    `</div>`;
            });
            rows += `</div>`;
            $('#leagues').replaceWith(rows);
        })

        function goToFixtures(obj) {
            var leagueId = $(obj).data('id');
            window.location.href = '/web/match/?league=' + leagueId;
        }
    </script>
    <%@include file="../common/website/web-footer.jspf" %>