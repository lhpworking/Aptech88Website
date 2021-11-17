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
                $('#nameAway').attr('src', team.name);
            });

            getTeam(res.home).then(team => {
                $('#logoHome').attr('src', team.logo);
                $('#nameHome').attr('src', team.name);
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
                        alert(JSON.stringify(data));
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
                <!-- end leagues -->
                <!-- content screen -->
                <div class="main-screen col-12 ms-lg-auto d shadow p-0 ">
                    <div class="title-leagues border-0 bg-white shadow-sm text-center mb-5 p-1  ">
                        <img src="" id="image" alt="">
                        <h3 id="league">UEFA Champion Leagues</h3>
                    </div>
                    <div class="container ">
                        <!-- fixture block main markets -->
                        <div class="fixture d-flex flex-column ">
                            <div class=" table-responsive card rounded-md shadow-sm mb-3">
                                <!-- table main markets -->
                                <div class="date-fixture p-3">
                                    <h6 class=" m-0" id="dateTimeOfMatch"></h6>
                                </div>
                                <table class="table table-hover table-borderless  text-center text-wrap  text-muted ">
                                    <thead class="border">
                                        <tr>
                                            <th scope="col">Team</th>
                                            <th scope="col">Handicap </th>
                                            <th scope="col">Goals O/U
                                            </th>
                                            <th scope="col">1 X 2</th>
                                            <th scope="col">1 X 2 <br> 1st Half</th>
                                            <th scope="col">Handicap <br> 1st Half</th>
                                            <th scope="col">Goals O/U <br> 1st Half</th>
                                            <th scope="col">Both Teams <br> to Score</th>
                                            <th scope="col">Goals O/E</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <!-- data fixture home -->
                                        <tr>
                                            <th class="text-nowrap text-start" id="nameAway"><img src="https://source.unsplash.com/random" id="logoAway" class="rounded-circle me-2" alt="logo club" width="35" height="35">Manchester United</th>
                                            <td>
                                                <div class=" h-100">
                                                    <div class="nav-item h-100 " role="presentation">
                                                        <a type="button" class="nav-link link-secondary border h-100  " data-bs-toggle="modal" data-bs-target="#betModal" type="button" role="tab">
                                                            <div class="text-success">+0.5/1</div>
                                                            <div class="fw-bold fs-5">0.88</div>
                                                        </a>
                                                    </div>
                                                </div>
                                                <!-- Modal -->
                                                <div class="modal fade" id="betModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="betModal">Bet Ticket</h5>
                                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                            </div>
                                                            <div class="modal-body">
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
                                                                            <%-- end  --%>
                                                                                <%-- Goals O/E type --%>
                                                                                    <h3>Manchester United vs Chelsea</h3>
                                                                                    <div class="">
                                                                                        <span class="fs-5 fw-bold me-2">
                                                                Odd
                                                            </span>
                                                                                        <span class="fw-bold"> @ 0.88</span>
                                                                                        <h5>Goals: Odd / Even</h5>
                                                                                    </div>
                                                                                    <%-- end  --%>
                                                                                        <div class="form-floating">
                                                                                            <input type="number" class="form-control" id="floatingPassword" placeholder="Enter Stake">
                                                                                            <label for="floatingPassword">Enter Stake</label>
                                                                                        </div>
                                                                                        <div class="d-flex align-items-center justify-content-between text-start mt-2 p-2">
                                                                                            <div class="fs-6 fw-bold">Total Bet</div>
                                                                                            <div> 100 <span>USD</span></div>
                                                                                        </div>
                                                                                        <div class="d-flex align-items-center justify-content-between text-start p-2">
                                                                                            <div class="fs-6 fw-bold text-success">Est. Winnings</div>
                                                                                            <div class="text-success"> 188 <span>USD</span></div>
                                                                                        </div>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                                                <button type="button" class="btn btn-primary">Submit</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class=" h-100">
                                                    <div class="nav-item h-100 " role="presentation">
                                                        <a type="button" class="nav-link link-secondary border h-100  " data-bs-toggle="modal" data-bs-target="#betModal" type="button" role="tab">
                                                            <div class="text-success"><span class="me-1">O</span>2.5</div>
                                                            <div class="fw-bold fs-5">0.88</div>
                                                        </a>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class=" h-100">
                                                    <div class="nav-item h-100 " role="presentation">
                                                        <a type="button" class="nav-link d-flex align-items-center justify-content-center  link-secondary border h-100 " data-bs-toggle="modal" data-bs-target="#betModal" type="button" role="tab">
                                                            <div class="fw-bold fs-5">0.88</div>
                                                        </a>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class=" h-100">
                                                    <div class="nav-item h-100  " role="presentation">
                                                        <a type="button" class="nav-link d-flex align-items-center justify-content-center link-secondary border h-100 " data-bs-toggle="modal" data-bs-target="#betModal" type="button" role="tab">
                                                            <div class="fw-bold fs-5">0.88</div>
                                                        </a>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class=" h-100">
                                                    <div class="nav-item h-100 " role="presentation">
                                                        <a type="button" class="nav-link link-secondary border h-100  " data-bs-toggle="modal" data-bs-target="#betModal" type="button" role="tab">
                                                            <div class="text-success">+0.5/1</div>
                                                            <div class="fw-bold fs-5">0.88</div>
                                                        </a>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class=" h-100">
                                                    <div class="nav-ite h-100 " role="presentation">
                                                        <a type="button" class="nav-link link-secondary border h-100  " data-bs-toggle="modal" data-bs-target="#betModal" type="button" role="tab">
                                                            <div class="text-success"><span class="me-1">O</span>2.5</div>
                                                            <div class="fw-bold fs-5">0.88</div>
                                                        </a>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class=" h-100">
                                                    <div class="nav-ite h-100 " role="presentation">
                                                        <a type="button" class="nav-link link-secondary border h-100  " data-bs-toggle="modal" data-bs-target="#betModal" type="button" role="tab">
                                                            <div>Yes</div>
                                                            <div class="fw-bold fs-5">0.88</div>
                                                        </a>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class=" h-100">
                                                    <div class="nav-item h-100 " role="presentation">
                                                        <a type="button" class="nav-link link-secondary border h-100  " data-bs-toggle="modal" data-bs-target="#betModal" type="button" role="tab">
                                                            <div>Odd</div>
                                                            <div class="fw-bold fs-5">0.88</div>
                                                        </a>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <!-- data fixture away -->
                                        <tr>
                                            <th class="text-nowrap text-start" id="nameHome"><img src="https://source.unsplash.com/random" id="logoHome" class="rounded-circle me-2" alt="logo club" width="35" height="35">Chelsea</th>
                                            <td>
                                                <div class=" h-100">
                                                    <div class="nav-item h-100   " role="presentation">
                                                        <a type="button" class="nav-link link-secondary border h-100  " data-bs-toggle="modal" data-bs-target="#betModal" type="button" role="tab">
                                                            <div class="text-danger">-0.5/1</div>
                                                            <div class="fw-bold fs-5">1.04</div>
                                                        </a>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class=" h-100">
                                                    <div class="nav-item h-100  " role="presentation">
                                                        <a type="button" class="nav-link link-secondary border h-100 " data-bs-toggle="modal" data-bs-target="#betModal" type="button" role="tab">
                                                            <div class="text-danger"><span class="me-1">U</span>2.5</div>
                                                            <div class="fw-bold fs-5">0.88</div>
                                                        </a>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class=" h-100">
                                                    <div class="nav-item h-100 " role="presentation">
                                                        <a type="button" class="nav-link d-flex align-items-center justify-content-center link-secondary border h-100  " data-bs-toggle="modal" data-bs-target="#betModal" type="button" role="tab">
                                                            <div class="fw-bold fs-5">0.88</div>
                                                        </a>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class=" h-100">
                                                    <div class="nav-ite h-100 " role="presentation">
                                                        <a type="button" class="nav-link d-flex align-items-center justify-content-center link-secondary border h-100  " data-bs-toggle="modal" data-bs-target="#betModal" type="button" role="tab">
                                                            <div class="fw-bold fs-5">0.88</div>
                                                        </a>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class=" h-100">
                                                    <div class="nav-item h-100  " role="presentation">
                                                        <a type="button" class="nav-link link-secondary border h-100 " data-bs-toggle="modal" data-bs-target="#betModal" type="button" role="tab">
                                                            <div class="text-danger">-0.5/1</div>
                                                            <div class="fw-bold fs-5">0.88</div>
                                                        </a>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class=" h-100">
                                                    <div class="nav-item  h-100 " role="presentation">
                                                        <a type="button" class="nav-link link-secondary border h-100 " data-bs-toggle="modal" data-bs-target="#betModal" type="button" role="tab">
                                                            <div class="text-danger"><span class="me-1">U</span>2.5</div>
                                                            <div class="fw-bold fs-5">0.88</div>
                                                        </a>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class=" h-100">
                                                    <div class="nav-item h-100 " role="presentation">
                                                        <a type="button" class="nav-link link-secondary border h-100  " data-bs-toggle="modal" data-bs-target="#betModal" type="button" role="tab">
                                                            <div>Yes</div>
                                                            <div class="fw-bold fs-5">0.88</div>
                                                        </a>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class=" h-100">
                                                    <div class="nav-item h-100 " role="presentation">
                                                        <a type="button" class="nav-link link-secondary border h-100  " data-bs-toggle="modal" data-bs-target="#betModal" type="button" role="tab">
                                                            <div>odd</div>
                                                            <div class="fw-bold fs-5">0.88</div>
                                                        </a>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <!-- data draw -->
                                        <tr>
                                            <th></th>
                                            <td></td>
                                            <td>
                                            </td>
                                            <td>
                                            </td>
                                            <td>
                                                <div class=" h-100">
                                                    <div class="nav-item h-100 " role="presentation">
                                                        <a type="button" class="nav-link link-secondary border h-100  " data-bs-toggle="modal" data-bs-target="#betModal" type="button" role="tab">
                                                            <div>Draw</div>
                                                            <div class="fw-bold fs-5">0.88</div>
                                                        </a>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class=" h-100">
                                                    <div class="nav-item " h-100 role="presentation">
                                                        <a type="button" class="nav-link link-secondary border   h-100" data-bs-toggle="modal" data-bs-target="#betModal" type="button" role="tab">
                                                            <div>Draw</div>
                                                            <div class="fw-bold fs-5">0.88</div>
                                                        </a>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>

                                            </td>
                                            <td>

                                            </td>
                                            <td>

                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <!-- end table main markets -->
                            </div>
                            <hr class="text-muted">
                        </div>
                    </div>
                    <%-- footer --%>
                        <%@include file="../common/website/web-footer.jspf" %>
                </div>
                <!-- end screen -->
            </div>
        </div>
    </main>