<%@include file="../common/admin/header.jspf" %>
  <!-- main content -->
  <div class="container-fluid py-4">
    <%-- card input data form --%>
      <div class="card p-3">
        <h4 class=" my-3 my-lg-3">Select Date Fixture</h4>
        <div class="row">
          <div class="col-6 col-lg-6">
            <div class="form-floating">
              <input type="date" class="form-control" id="dateFrom" placeholder="name@example.com" disabled>
              <label for="floatingInput">Date Form</label>
            </div>
          </div>
          <div class="col-6 col-lg-6">
            <div class="form-floating">
              <input type="date" class="form-control" id="dateTo" placeholder="name@example.com">
              <label for="floatingInput">Date To</label>
            </div>
          </div>
        </div>
        <div class="row pt-3">
          <div class="form-group">
            <button class="btn bg-gradient-yellow text-white w-100" onclick="dateFixture();">submit</button>
          </div>
        </div>
      </div>
      <div class="row pt-3">
        <!-- card layout project -->
        <div class="col-lg-12 col-md-6 mb-md-0 mb-4">
          <div class="card">
            <div class="row p-3">
                <div class="col-6 col-lg-6">
                    <div class="input-group input-group-outline ">
                        <input type="text" class="form-control" placeholder="Search..">
                    </div>
                </div>        
            </div>
            <div class="table-responsive">
              <table class="table align-items-center mb-0">
                <thead>
                  <tr>
                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Author</th>
                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Function</th>
                    <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                      Technology</th>
                    <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Employed
                    </th>
                    <th class="text-secondary opacity-7"></th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <div class="d-flex px-2 py-1">
                        <div>
                          <img src="https://demos.creative-tim.com/test/material-dashboard-pro/assets/img/team-2.jpg"
                            class="avatar avatar-sm me-3">
                        </div>
                        <div class="d-flex flex-column justify-content-center">
                          <h6 class="mb-0 text-xs">John Michael</h6>
                          <p class="text-xs text-secondary mb-0">john@creative-tim.com</p>
                        </div>
                      </div>
                    </td>
                    <td>
                      <p class="text-xs font-weight-bold mb-0">Manager</p>
                      <p class="text-xs text-secondary mb-0">Organization</p>
                    </td>
                    <td class="align-middle text-center text-sm">
                      <span class="badge badge-sm bg-gradient-success">Online</span>
                    </td>
                    <td class="align-middle text-center">
                      <span class="text-secondary text-xs font-weight-normal">23/04/18</span>
                    </td>
                    <td class="align-middle">
                      <a href="javascript:;" class="text-secondary font-weight-normal text-xs" data-toggle="tooltip"
                        data-original-title="Edit user">
                        Edit
                      </a>
                    </td>
                  </tr>

                  <tr>
                    <td>
                      <div class="d-flex px-2 py-1">
                        <div>
                          <img src="https://demos.creative-tim.com/test/material-dashboard-pro/assets/img/team-3.jpg"
                            class="avatar avatar-sm me-3">
                        </div>
                        <div class="d-flex flex-column justify-content-center">
                          <h6 class="mb-0 text-xs">Alexa Liras</h6>
                          <p class="text-xs text-secondary mb-0">alexa@creative-tim.com</p>
                        </div>
                      </div>
                    </td>
                    <td>
                      <p class="text-xs font-weight-bold mb-0">Programator</p>
                      <p class="text-xs text-secondary mb-0">Developer</p>
                    </td>
                    <td class="align-middle text-center text-sm">
                      <span class="badge badge-sm bg-gradient-secondary">Offline</span>
                    </td>
                    <td class="align-middle text-center">
                      <span class="text-secondary text-xs font-weight-normal">11/01/19</span>
                    </td>
                    <td class="align-middle">
                      <a href="#!" class="text-secondary font-weight-normal text-xs" data-toggle="tooltip"
                        data-original-title="Edit user">
                        Edit
                      </a>
                    </td>
                  </tr>

                  <tr>
                    <td>
                      <div class="d-flex px-2 py-1">
                        <div>
                          <img src="https://demos.creative-tim.com/test/material-dashboard-pro/assets/img/team-4.jpg"
                            class="avatar avatar-sm me-3">
                        </div>
                        <div class="d-flex flex-column justify-content-center">
                          <h6 class="mb-0 text-xs">Laurent Perrier</h6>
                          <p class="text-xs text-secondary mb-0">laurent@creative-tim.com</p>
                        </div>
                      </div>
                    </td>
                    <td>
                      <p class="text-xs font-weight-bold mb-0">Executive</p>
                      <p class="text-xs text-secondary mb-0">Projects</p>
                    </td>
                    <td class="align-middle text-center text-sm">
                      <span class="badge badge-sm bg-gradient-success">Online</span>
                    </td>
                    <td class="align-middle text-center">
                      <span class="text-secondary text-xs font-weight-normal">19/09/17</span>
                    </td>
                    <td class="align-middle">
                      <a href="#!" class="text-secondary font-weight-normal text-xs" data-toggle="tooltip"
                        data-original-title="Edit user">
                        Edit
                      </a>
                    </td>
                  </tr>

                  <tr>
                    <td>
                      <div class="d-flex px-2 py-1">
                        <div>
                          <img src="https://demos.creative-tim.com/test/material-dashboard-pro/assets/img/team-3.jpg"
                            class="avatar avatar-sm me-3">
                        </div>
                        <div class="d-flex flex-column justify-content-center">
                          <h6 class="mb-0 text-xs">Michael Levi</h6>
                          <p class="text-xs text-secondary mb-0">michael@creative-tim.com</p>
                        </div>
                      </div>
                    </td>
                    <td>
                      <p class="text-xs font-weight-bold mb-0">Programator</p>
                      <p class="text-xs text-secondary mb-0">Developer</p>
                    </td>
                    <td class="align-middle text-center text-sm">
                      <span class="badge badge-sm bg-gradient-success">Online</span>
                    </td>
                    <td class="align-middle text-center">
                      <span class="text-secondary text-xs font-weight-normal">24/12/08</span>
                    </td>
                    <td class="align-middle">
                      <a href="#!" class="text-secondary font-weight-normal text-xs" data-toggle="tooltip"
                        data-original-title="Edit user">
                        Edit
                      </a>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <div class="d-flex px-2 py-1">
                        <div>
                          <img src="https://demos.creative-tim.com/test/material-dashboard-pro/assets/img/team-2.jpg"
                            class="avatar avatar-sm me-3">
                        </div>
                        <div class="d-flex flex-column justify-content-center">
                          <h6 class="mb-0 text-xs">Richard Gran</h6>
                          <p class="text-xs text-secondary mb-0">richard@creative-tim.com</p>
                        </div>
                      </div>
                    </td>
                    <td>
                      <p class="text-xs font-weight-bold mb-0">Manager</p>
                      <p class="text-xs text-secondary mb-0">Executive</p>
                    </td>
                    <td class="align-middle text-center text-sm">
                      <span class="badge badge-sm bg-gradient-secondary">Offline</span>
                    </td>
                    <td class="align-middle text-center">
                      <span class="text-secondary text-xs font-weight-normal">04/10/21</span>
                    </td>
                    <td class="align-middle">
                      <a href="#!" class="text-secondary font-weight-normal text-xs" data-toggle="tooltip"
                        data-original-title="Edit user">
                        Edit
                      </a>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <div class="d-flex px-2 py-1">
                        <div>
                          <img src="https://demos.creative-tim.com/test/material-dashboard-pro/assets/img/team-4.jpg"
                            class="avatar avatar-sm me-3">
                        </div>
                        <div class="d-flex flex-column justify-content-center">
                          <h6 class="mb-0 text-xs">Miriam Eric</h6>
                          <p class="text-xs text-secondary mb-0">miriam@creative-tim.com</p>
                        </div>
                      </div>
                    </td>
                    <td>
                      <p class="text-xs font-weight-bold mb-0">Programtor</p>
                      <p class="text-xs text-secondary mb-0">Developer</p>
                    </td>
                    <td class="align-middle text-center text-sm">
                      <span class="badge badge-sm bg-gradient-secondary">Offline</span>
                    </td>
                    <td class="align-middle text-center">
                      <span class="text-secondary text-xs font-weight-normal">14/09/20</span>
                    </td>
                    <td class="align-middle">
                      <a href="#!" class="text-secondary font-weight-normal text-xs" data-toggle="tooltip"
                        data-original-title="Edit user">
                        Edit
                      </a>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
            <nav class="p-3" aria-label="Page navigation example">
                <ul class="pagination justify-content-end">
                    <li class="page-item disabled">
                    <a class="page-link" href="javascript:;" tabindex="-1">
                        <span class="material-icons">
                        keyboard_arrow_left
                        </span>
                        <span class="sr-only">Previous</span>
                    </a>
                    </li>
                    <li class="page-item active"><a class="page-link" href="javascript:;">1</a></li>
                    <li class="page-item "><a class="page-link" href="javascript:;">2</a></li>
                    <li class="page-item"><a class="page-link" href="javascript:;">3</a></li>
                    <li class="page-item">
                    <a class="page-link" href="javascript:;">
                        <span class="material-icons">
                        keyboard_arrow_right
                        </span>
                        <span class="sr-only">Next</span>
                    </a>
                    </li>
                </ul>
                </nav>
            </div>
          </div>
        </div>
        <!-- end card project -->
      </div>

  </div>
  <!-- end main content -->
  <%@include file="../common/admin/footer.jspf" %>

<script>

function getToday() {
    var dateFrom = new Date(),
      dayFrom = dateFrom.getDate(),
      monthFrom = dateFrom.getMonth() + 1,
      yearFrom = dateFrom.getFullYear();

      if (monthFrom < 10) monthFrom = "0" + monthFrom;
      if (dayFrom < 10) dayFrom = "0" + dayFrom;
      var today = yearFrom + "-" + monthFrom + "-" + dayFrom ;
    $("#dateFrom").attr("value", today);    
  }
getToday();
function dateFixture() {
  var dateFrom = new Date(),
      dayFrom = dateFrom.getDate(),
      monthFrom = dateFrom.getMonth() + 1,
      yearFrom = dateFrom.getFullYear();

      if (monthFrom < 10) monthFrom = "0" + monthFrom;
      if (dayFrom < 10) dayFrom = "0" + dayFrom;
  var today = yearFrom + "-" + monthFrom + "-" + dayFrom ;

  var dateTo = new Date($('#dateTo').val()),
      dayTo = dateTo.getDate(),
      monthTo = dateTo.getMonth() + 1,
      yearTo = dateTo.getFullYear();
  var dateToSelected = [yearTo, monthTo, dayTo].join('-');

  var inputJson = {
    fromDate: today,
    toDate: dateToSelected,
    status: true
  }
  $.ajax({
    type: "POST",
    url: "http://localhost:8080/FixtureUpdate",
    contentType: "application/json",
    data: JSON.stringify(inputJson),
    success: function (response) {
      alert(response)
    }
  });
}
</script>