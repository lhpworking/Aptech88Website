<%@include file="../common/website/web-header.jspf" %>
    <script>
        var url_string = window.location.href;
        var url = new URL(url_string);
        var fixture = url.searchParams.get("league");


        function getFixture(leagueId) {
            var param = {
                id: leagueId
            }
            return $.ajax({
                method: 'post',
                url: 'http://localhost:8000/FixtureGet',
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
                url: 'http://localhost:8000/GetTeamById',
                contentType: 'application/json',
                data: JSON.stringify(param)
            })
        }

        getFixture(fixture).then(res => {
            var rows = `<div class="row mb-3 flex-lg-row flex-column " id="matchs">`;
            $.each(res, function(index, match) {
                rows += `<div class="col-lg-4 col-12">` +
                    `<div class="league-choose-group mb-3  d-flex shadow rounded-md overflow-hidden">` +
                    `<button class="btn btn-outline-dark d-inline-flex align-items-center border-0  p-3 w-100" data-bs-toggle="button" data-idMatch="` + match.id + `" onclick="goToMatch(this);">`;
                var away = {
                    id: match.away
                };
                $.ajax({
                    method: 'post',
                    url: 'http://localhost:8000/GetTeamById',
                    contentType: 'application/json',
                    async: false,
                    data: JSON.stringify(away),
                    success: function(team) {
                        rows += `<div>` +
                            `<img class="rounded-circle me-3" src="` + team.logo + `" alt="" width="80" height="80">` +
                            `<div>` +
                            `<span style="font-size: 11px;">` + team.name + `</span>` +
                            `</div>` +
                            `</div>`;
                    }
                })
                rows += `<div style="width: 50%;"><img src="/assets/website/img/versus.png" alt="" style="width: 20%;"><div>` + match.time + `</div></div>`;
                var home = {
                    id: match.home
                };
                $.ajax({
                    method: 'post',
                    url: 'http://localhost:8000/GetTeamById',
                    contentType: 'application/json',
                    async: false,
                    data: JSON.stringify(home),
                    success: function(team) {
                        rows += `<div>` +
                            `<img class="rounded-circle me-3" src="` + team.logo + `" alt="" width="80" height="80">` +
                            `<div>` +
                            `<span style="font-size: 11px;">` + team.name + `</span>` +
                            `</div>` +
                            `</div>`;
                    }
                })
                rows += `</button></div></div>`;
            });

            rows += `</div>`;
            $('#matchs').replaceWith(rows);
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
                <div class="league-choose-form ">
                    <div class="row mb-3 flex-lg-row flex-column " id="matchs">
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
                        </div>
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