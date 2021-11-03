<%@include file="../common/website/web-header.jspf"%>


 <main class="main-content position-relative border-radius-lg  ">
        <div class="container-fluid ">

            <div class="row">
                <!-- popular leagues -->
                <div class="col-lg-2 mb-2 mb-lg-0  d-lg-block   col-lg-2  bg-secondary  p-3">
                    <!-- in-play block -->
                    <div class="leagues-block mb-3">
                        <h5 class="title-leagues bg-light w-100 align-items-center">All Popular Leagues <i class="bi bi-collection-play-fill text-primary float-end"></i></h5>
                        <!-- europe -->
                        <div class="accordion">
                            <a class=" accordion-name nav-link bg-light  text-dark fw-bold"><img
                                    src="https://source.unsplash.com/featured?country-soccer" width="32" height="32"
                                    class="rounded-circle me-2" alt=""> EUROPE</a>
                            <div class="panel">
                                <div class="nav flex-column w-100  " id="v-pills-tab" role="tablist"
                                    aria-orientation="vertical">
                                    <a class="nav-link link-secondary d-flex justify-content-between align-items-center"
                                        id="v-pills-champions-tab" data-bs-toggle="pill"
                                        data-bs-target="#v-pills-champions" type="button" role="tab"
                                        aria-controls="v-pills-champions" aria-selected="true">UEFA CHAMPIONS LEAGUE
                                        <span class="badge bg-secondary">4</span></a>
                                    <a class="nav-link link-secondary d-flex justify-content-between align-items-center"
                                        id="v-pills-europa-tab" data-bs-toggle="pill" data-bs-target="#v-pills-europa"
                                        type="button" role="tab" aria-controls="v-pills-europa"
                                        aria-selected="true">UEFA EUROPA LEAGUE
                                        <span class="badge bg-secondary">4</span></a>
                                </div>
                            </div>
                        </div>
                        <!-- end europe -->
                    </div>
                </div>
                <!-- end leagues -->
                <!-- content screen -->
                <div class="main-screen col-12 col-lg-10 ms-lg-auto d shadow p-0 ">
                    <!-- Tab panes -->
                    <div class="tab-content" id="v-pills-tabContent">
                        <!-- leagues block -->
                        <div class="tab-pane fade show active " id="v-pills-champions" role="tabpanel"
                            aria-labelledby="v-pills-champions-tab">
                            <!-- title leagues -->
                            <div class="title-leagues border-0 bg-white shadow-sm text-center mb-2 p-1  ">
                                <h3>UEFA Champion Leagues</h3>
                            </div>
                            <ul class="nav nav-pills justify-content-center mb-3 gap-2 text-uppercase" id="pills-tab"
                                role="tablist">
                                <!-- main markets -->
                                <li class="nav-item  " role="presentation">
                                    <a class="nav-link link-secondary border" id="pills-markets-tab"
                                        data-bs-toggle="pill" data-bs-target="#pills-markets" type="button" role="tab"
                                        aria-controls="pills-markets" aria-selected="true">main markets</a>
                                </li>
                                <!-- bet score -->
                                <li class="nav-item  " role="presentation">
                                    <a class="nav-link link-secondary border " id="pills-score-tab"
                                        data-bs-toggle="pill" data-bs-target="#pills-score" type="button" role="tab"
                                        aria-controls="pills-score" aria-selected="true">correct score</a>
                                </li>
                            </ul>
                            <div class="tab-content" id="pills-tabContent">
                                <div class="tab-pane fade show active" id="pills-markets" role="tabpanel"
                                    aria-labelledby="pills-markets-tab">
                                    <div class="container ">
                                        <!-- fixture block main markets -->
                                        <div class="fixture d-flex flex-column ">
                                            <div class=" table-responsive card rounded-md shadow-sm mb-3">
                                                <!-- table main markets -->
                                                <div class="date-fixture p-3">
                                                    <h6 class=" m-0">Friday 11/09 2:45</h6>
                                                </div>
                                                <table 
                                                    class="table table-hover table-borderless  text-center text-wrap  text-muted ">
                                                    <thead class="border">
                                                        <tr>
                                                            <th scope="col" colspan="2">Team</th>
                                                            <th scope="col">Handicap</th>
                                                            <th scope="col">Goals O/U
                                                            </th>
                                                            <th scope="col">1 X 2</th>
                                                            <th scope="col">1 X 2 <br>
                                                                1st Half</th>
                                                            <th scope="col">Handicap <br>
                                                                1st Half</th>
                                                            <th scope="col">Goals O/U <br>
                                                                1st Half</th>
                                                            <th scope="col">Both Teams <br> to Score</th>
                                                            <th scope="col">Goals O/E</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <!-- data fixture home -->
                                                        <tr>
                                                            <th><img src="https://source.unsplash.com/random"
                                                                    class="rounded-circle" alt="logo club" width="35"
                                                                    height="35"></th>
                                                            <th class="text-nowrap text-start">Manchester United</th>
                                                            <td>
                                                                <div class="nav nav-pills">
                                                                    <div class="nav-item  " role="presentation">
                                                                        <a class="nav-link link-secondary border "
                                                                            data-bs-toggle="button" type="button"
                                                                            role="tab">correct score</a>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="nav nav-pills">
                                                                    <div class="nav-item  " role="presentation">
                                                                        <a class="nav-link link-secondary border "
                                                                            data-bs-toggle="button" type="button"
                                                                            role="tab">correct score</a>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="nav nav-pills">
                                                                    <div class="nav-item  " role="presentation">
                                                                        <a class="nav-link link-secondary border "
                                                                            data-bs-toggle="button" type="button"
                                                                            role="tab">correct score</a>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="nav nav-pills">
                                                                    <div class="nav-item  " role="presentation">
                                                                        <a class="nav-link link-secondary border "
                                                                            data-bs-toggle="button" type="button"
                                                                            role="tab">correct score</a>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="nav nav-pills">
                                                                    <div class="nav-item  " role="presentation">
                                                                        <a class="nav-link link-secondary border "
                                                                            data-bs-toggle="button" type="button"
                                                                            role="tab">correct score</a>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="nav nav-pills">
                                                                    <div class="nav-item  " role="presentation">
                                                                        <a class="nav-link link-secondary border "
                                                                            data-bs-toggle="button" type="button"
                                                                            role="tab">correct score</a>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="nav nav-pills">
                                                                    <div class="nav-item  " role="presentation">
                                                                        <a class="nav-link link-secondary border "
                                                                            data-bs-toggle="button" type="button"
                                                                            role="tab">correct score</a>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="nav nav-pills">
                                                                    <div class="nav-item  " role="presentation">
                                                                        <a class="nav-link link-secondary border "
                                                                            data-bs-toggle="button" type="button"
                                                                            role="tab">correct score</a>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <!-- data fixture away -->
                                                        <tr>
                                                            <th><img src="https://source.unsplash.com/random"
                                                                    class="rounded-circle" alt="logo club" width="35"
                                                                    height="35"></th>
                                                            <th class="text-nowrap text-start">Chelsea</th>
                                                            <td>
                                                                <div class="nav nav-pills">
                                                                    <div class="nav-item  " role="presentation">
                                                                        <a class="nav-link link-secondary border "
                                                                            data-bs-toggle="button" type="button"
                                                                            role="tab">correct score</a>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="nav nav-pills">
                                                                    <div class="nav-item  " role="presentation">
                                                                        <a class="nav-link link-secondary border "
                                                                            data-bs-toggle="button" type="button"
                                                                            role="tab">correct score</a>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="nav nav-pills">
                                                                    <div class="nav-item  " role="presentation">
                                                                        <a class="nav-link link-secondary border "
                                                                            data-bs-toggle="button" type="button"
                                                                            role="tab">correct score</a>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="nav nav-pills">
                                                                    <div class="nav-item  " role="presentation">
                                                                        <a class="nav-link link-secondary border "
                                                                            data-bs-toggle="button" type="button"
                                                                            role="tab">correct score</a>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="nav nav-pills">
                                                                    <div class="nav-item  " role="presentation">
                                                                        <a class="nav-link link-secondary border "
                                                                            data-bs-toggle="button" type="button"
                                                                            role="tab">correct score</a>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="nav nav-pills">
                                                                    <div class="nav-item  " role="presentation">
                                                                        <a class="nav-link link-secondary border "
                                                                            data-bs-toggle="button" type="button"
                                                                            role="tab">correct score</a>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="nav nav-pills">
                                                                    <div class="nav-item  " role="presentation">
                                                                        <a class="nav-link link-secondary border "
                                                                            data-bs-toggle="button" type="button"
                                                                            role="tab">correct score</a>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="nav nav-pills">
                                                                    <div class="nav-item  " role="presentation">
                                                                        <a class="nav-link link-secondary border "
                                                                            data-bs-toggle="button" type="button"
                                                                            role="tab">correct score</a>
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
                                                                <div class="nav nav-pills">
                                                                    <div class="nav-item  " role="presentation">
                                                                        <a class="nav-link link-secondary border "
                                                                            data-bs-toggle="button" type="button"
                                                                            role="tab">correct score</a>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="nav nav-pills">
                                                                    <div class="nav-item  " role="presentation">
                                                                        <a class="nav-link link-secondary border "
                                                                            data-bs-toggle="button" type="button"
                                                                            role="tab">correct score</a>
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
                                </div>
                                <div class="tab-pane fade " id="pills-score" role="tabpanel"
                                    aria-labelledby="pills-score-tab">
                                    <div class="container ">
                                        <!-- fixture block bet score -->
                                        <div class="fixture">
                                            <div class=" card rounded border-0 shadow-sm mb-3 p-3 ">
                                                <div
                                                    class="fixtutre d-flex justify-content-between align-items-center ">
                                                    <div class="team-fixture">
                                                        <h5>Manchester United</h5>
                                                        <h5>Chelsea</h5>
                                                    </div>
                                                    <div class="date-fixture">
                                                        <h6 class=" m-0">Friday 11/09 2:45</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="fixture-score card p-3 rounded shadow-sm border-0   ">
                                                <div class="container rounded-md">
                                                    <div class="row mb-3 justify-content-center">
                                                        <div class="col-3  ">
                                                            <div class="nav nav-pills ">
                                                                <div class="nav-item w-100  " role="presentation">
                                                                    <button
                                                                        class="nav-link link-secondary border w-100  "
                                                                        data-bs-toggle="button" role="tab">
                                                                        <div class="score-block">
                                                                            <h6 class="text-muted">1 - 0</h6>
                                                                            <h5 class="m-0 text-dark">1.00</h5>
                                                                        </div>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-3 ">
                                                            <div class="nav nav-pills ">
                                                                <div class="nav-item w-100  " role="presentation">
                                                                    <button
                                                                        class="nav-link link-secondary border w-100  "
                                                                        data-bs-toggle="button" role="tab">
                                                                        <div class="score-block">
                                                                            <h6 class="text-muted">1 - 0</h6>
                                                                            <h5 class="m-0 text-dark">1.00</h5>
                                                                        </div>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-3 ">
                                                            <div class="nav nav-pills ">
                                                                <div class="nav-item w-100  " role="presentation">
                                                                    <button
                                                                        class="nav-link link-secondary border w-100  "
                                                                        data-bs-toggle="button" role="tab">
                                                                        <div class="score-block">
                                                                            <h6 class="text-muted">1 - 0</h6>
                                                                            <h5 class="m-0 text-dark">1.00</h5>
                                                                        </div>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-3 ">
                                                            <div class="nav nav-pills ">
                                                                <div class="nav-item w-100  " role="presentation">
                                                                    <button
                                                                        class="nav-link link-secondary border w-100  "
                                                                        data-bs-toggle="button" role="tab">
                                                                        <div class="score-block">
                                                                            <h6 class="text-muted">1 - 0</h6>
                                                                            <h5 class="m-0 text-dark">1.00</h5>
                                                                        </div>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row mb-3 justify-content-center">
                                                        <div class="col-3  ">
                                                            <div class="nav nav-pills ">
                                                                <div class="nav-item w-100  " role="presentation">
                                                                    <button
                                                                        class="nav-link link-secondary border w-100  "
                                                                        data-bs-toggle="button" role="tab">
                                                                        <div class="score-block">
                                                                            <h6 class="text-muted">1 - 0</h6>
                                                                            <h5 class="m-0 text-dark">1.00</h5>
                                                                        </div>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-3 ">
                                                            <div class="nav nav-pills ">
                                                                <div class="nav-item w-100  " role="presentation">
                                                                    <button
                                                                        class="nav-link link-secondary border w-100  "
                                                                        data-bs-toggle="button" role="tab">
                                                                        <div class="score-block">
                                                                            <h6 class="text-muted">1 - 0</h6>
                                                                            <h5 class="m-0 text-dark">1.00</h5>
                                                                        </div>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-3 ">
                                                            <div class="nav nav-pills ">
                                                                <div class="nav-item w-100  " role="presentation">
                                                                    <button
                                                                        class="nav-link link-secondary border w-100  "
                                                                        data-bs-toggle="button" role="tab">
                                                                        <div class="score-block">
                                                                            <h6 class="text-muted">1 - 0</h6>
                                                                            <h5 class="m-0 text-dark">1.00</h5>
                                                                        </div>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-3 ">
                                                            <div class="nav nav-pills ">
                                                                <div class="nav-item w-100  " role="presentation">
                                                                    <button
                                                                        class="nav-link link-secondary border w-100  "
                                                                        data-bs-toggle="button" role="tab">
                                                                        <div class="score-block">
                                                                            <h6 class="text-muted">1 - 0</h6>
                                                                            <h5 class="m-0 text-dark">1.00</h5>
                                                                        </div>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row mb-3 justify-content-center">
                                                        <div class="col-3  ">
                                                            <div class="nav nav-pills ">
                                                                <div class="nav-item w-100  " role="presentation">
                                                                    <button
                                                                        class="nav-link link-secondary border w-100  "
                                                                        data-bs-toggle="button" role="tab">
                                                                        <div class="score-block">
                                                                            <h6 class="text-muted">1 - 0</h6>
                                                                            <h5 class="m-0 text-dark">1.00</h5>
                                                                        </div>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-3 ">
                                                            <div class="nav nav-pills ">
                                                                <div class="nav-item w-100  " role="presentation">
                                                                    <button
                                                                        class="nav-link link-secondary border w-100  "
                                                                        data-bs-toggle="button" role="tab">
                                                                        <div class="score-block">
                                                                            <h6 class="text-muted">1 - 0</h6>
                                                                            <h5 class="m-0 text-dark">1.00</h5>
                                                                        </div>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-3 ">
                                                            <div class="nav nav-pills ">
                                                                <div class="nav-item w-100  " role="presentation">
                                                                    <button
                                                                        class="nav-link link-secondary border w-100  "
                                                                        data-bs-toggle="button" role="tab">
                                                                        <div class="score-block">
                                                                            <h6 class="text-muted">1 - 0</h6>
                                                                            <h5 class="m-0 text-dark">1.00</h5>
                                                                        </div>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-3 ">
                                                            <div class="nav nav-pills ">
                                                                <div class="nav-item w-100  " role="presentation">
                                                                    <button
                                                                        class="nav-link link-secondary border w-100  "
                                                                        data-bs-toggle="button" role="tab">
                                                                        <div class="score-block">
                                                                            <h6 class="text-muted">1 - 0</h6>
                                                                            <h5 class="m-0 text-dark">1.00</h5>
                                                                        </div>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row mb-3 justify-content-center">
                                                        <div class="col-3  ">
                                                            <div class="nav nav-pills ">
                                                                <div class="nav-item w-100  " role="presentation">
                                                                    <button
                                                                        class="nav-link link-secondary border w-100  "
                                                                        data-bs-toggle="button" role="tab">
                                                                        <div class="score-block">
                                                                            <h6 class="text-muted">1 - 0</h6>
                                                                            <h5 class="m-0 text-dark">1.00</h5>
                                                                        </div>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-3 ">
                                                            <div class="nav nav-pills ">
                                                                <div class="nav-item w-100  " role="presentation">
                                                                    <button
                                                                        class="nav-link link-secondary border w-100  "
                                                                        data-bs-toggle="button" role="tab">
                                                                        <div class="score-block">
                                                                            <h6 class="text-muted">1 - 0</h6>
                                                                            <h5 class="m-0 text-dark">1.00</h5>
                                                                        </div>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-3 ">
                                                            <div class="nav nav-pills ">
                                                                <div class="nav-item w-100  " role="presentation">
                                                                    <button
                                                                        class="nav-link link-secondary border w-100  "
                                                                        data-bs-toggle="button" role="tab">
                                                                        <div class="score-block">
                                                                            <h6 class="text-muted">1 - 0</h6>
                                                                            <h5 class="m-0 text-dark">1.00</h5>
                                                                        </div>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-3 ">
                                                            <div class="nav nav-pills ">
                                                                <div class="nav-item w-100  " role="presentation">
                                                                    <button
                                                                        class="nav-link link-secondary border w-100  "
                                                                        data-bs-toggle="button" role="tab">
                                                                        <div class="score-block">
                                                                            <h6 class="text-muted">1 - 0</h6>
                                                                            <h5 class="m-0 text-dark">1.00</h5>
                                                                        </div>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row mb-3 justify-content-center">
                                                        <div class="col-3  ">
                                                            <div class="nav nav-pills ">
                                                                <div class="nav-item w-100  " role="presentation">
                                                                    <button
                                                                        class="nav-link link-secondary border w-100  "
                                                                        data-bs-toggle="button" role="tab">
                                                                        <div class="score-block">
                                                                            <h6 class="text-muted">1 - 0</h6>
                                                                            <h5 class="m-0 text-dark">1.00</h5>
                                                                        </div>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-3 ">
                                                            <div class="nav nav-pills ">
                                                                <div class="nav-item w-100  " role="presentation">
                                                                    <button
                                                                        class="nav-link link-secondary border w-100  "
                                                                        data-bs-toggle="button" role="tab">
                                                                        <div class="score-block">
                                                                            <h6 class="text-muted">1 - 0</h6>
                                                                            <h5 class="m-0 text-dark">1.00</h5>
                                                                        </div>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-3 ">
                                                            <div class="nav nav-pills ">
                                                                <div class="nav-item w-100  " role="presentation">
                                                                    <button
                                                                        class="nav-link link-secondary border w-100  "
                                                                        data-bs-toggle="button" role="tab">
                                                                        <div class="score-block">
                                                                            <h6 class="text-muted">1 - 0</h6>
                                                                            <h5 class="m-0 text-dark">1.00</h5>
                                                                        </div>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-3 ">
                                                            <div class="nav nav-pills ">
                                                                <div class="nav-item w-100  " role="presentation">
                                                                    <button
                                                                        class="nav-link link-secondary border w-100  "
                                                                        data-bs-toggle="button" role="tab">
                                                                        <div class="score-block">
                                                                            <h6 class="text-muted">1 - 0</h6>
                                                                            <h5 class="m-0 text-dark">1.00</h5>
                                                                        </div>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row mb-3 justify-content-center">
                                                        <div class="col-3  ">
                                                            <div class="nav nav-pills ">
                                                                <div class="nav-item w-100  " role="presentation">
                                                                    <button
                                                                        class="nav-link link-secondary border w-100  "
                                                                        data-bs-toggle="button" role="tab">
                                                                        <div class="score-block">
                                                                            <h6 class="text-muted">1 - 0</h6>
                                                                            <h5 class="m-0 text-dark">1.00</h5>
                                                                        </div>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-3 ">
                                                            <div class="nav nav-pills ">
                                                                <div class="nav-item w-100  " role="presentation">
                                                                    <button
                                                                        class="nav-link link-secondary border w-100  "
                                                                        data-bs-toggle="button" role="tab">
                                                                        <div class="score-block">
                                                                            <h6 class="text-muted">1 - 0</h6>
                                                                            <h5 class="m-0 text-dark">1.00</h5>
                                                                        </div>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-3 ">
                                                            <div class="nav nav-pills ">
                                                                <div class="nav-item w-100  " role="presentation">
                                                                    <button
                                                                        class="nav-link link-secondary border w-100  "
                                                                        data-bs-toggle="button" role="tab">
                                                                        <div class="score-block">
                                                                            <h6 class="text-muted">1 - 0</h6>
                                                                            <h5 class="m-0 text-dark">1.00</h5>
                                                                        </div>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-3 ">
                                                            <div class="nav nav-pills ">
                                                                <div class="nav-item w-100  " role="presentation">
                                                                    <button
                                                                        class="nav-link link-secondary border w-100  "
                                                                        data-bs-toggle="button" role="tab">
                                                                        <div class="score-block">
                                                                            <h6 class="text-muted">1 - 0</h6>
                                                                            <h5 class="m-0 text-dark">1.00</h5>
                                                                        </div>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row mb-3 justify-content-center">
                                                        <div class="col-3  ">
                                                            <div class="nav nav-pills ">
                                                                <div class="nav-item w-100  " role="presentation">
                                                                    <button
                                                                        class="nav-link link-secondary border w-100  "
                                                                        data-bs-toggle="button" role="tab">
                                                                        <div class="score-block">
                                                                            <h6 class="text-muted">1 - 0</h6>
                                                                            <h5 class="m-0 text-dark">1.00</h5>
                                                                        </div>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-3 ">
                                                            <div class="nav nav-pills ">
                                                                <div class="nav-item w-100  " role="presentation">
                                                                    <button
                                                                        class="nav-link link-secondary border w-100  "
                                                                        data-bs-toggle="button" role="tab">
                                                                        <div class="score-block">
                                                                            <h6 class="text-muted">1 - 0</h6>
                                                                            <h5 class="m-0 text-dark">1.00</h5>
                                                                        </div>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-3 ">
                                                            <div class="nav nav-pills ">
                                                                <div class="nav-item w-100  " role="presentation">
                                                                    <button
                                                                        class="nav-link link-secondary border w-100  "
                                                                        data-bs-toggle="button" role="tab">
                                                                        <div class="score-block">
                                                                            <h6 class="text-muted">1 - 0</h6>
                                                                            <h5 class="m-0 text-dark">1.00</h5>
                                                                        </div>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-3 ">
                                                            <div class="nav nav-pills ">
                                                                <div class="nav-item w-100  " role="presentation">
                                                                    <button
                                                                        class="nav-link link-secondary border w-100  "
                                                                        data-bs-toggle="button" role="tab">
                                                                        <div class="score-block">
                                                                            <h6 class="text-muted">1 - 0</h6>
                                                                            <h5 class="m-0 text-dark">1.00</h5>
                                                                        </div>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col ">
                                                        <div class="nav nav-pills ">
                                                            <div class="nav-item w-100  " role="presentation">
                                                                <button class="nav-link link-secondary border w-100  "
                                                                    data-bs-toggle="button" role="tab">
                                                                    <div class="score-block">
                                                                        <h6 class="text-muted">Other score</h6>
                                                                        <h5 class="m-0 text-dark">1.00</h5>
                                                                    </div>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <hr class="text-muted">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade " id="v-pills-europa" role="tabpanel"
                            aria-labelledby="v-pills-europa-tab">1</div>
                    </div>
                    <%-- footer --%>
                    <%@include file="../common/website/web-footer.jspf"%>       
                </div>
                <!-- end screen -->
            </div>
        </div>
</main>