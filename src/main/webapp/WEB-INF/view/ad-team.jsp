<%@include file="../common/admin/header.jspf" %>
  <!-- main content -->
  <div class="container-fluid py-4">
    <%-- card input data form --%>
      <div class="card p-3">
        <h4 class=" my-3 my-lg-3">Add Team</h4>
        <div class="row">
          <div class="col-6 col-lg-6">
            <div class="form-floating">
              <input type="text" class="form-control" id="logo" placeholder="name@example.com">
              <label for="floatingInput">Logo</label>
            </div>
          </div>
          <div class="col-6 col-lg-6">
            <div class="form-floating">
              <input type="text" class="form-control" id="name" placeholder="name@example.com">
              <label for="floatingInput">Name</label>
            </div>
          </div>
        </div>
        <div class="row pt-3">
          <div class="form-group">
            <button class="btn bg-gradient-yellow text-white w-100">submit</button>
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
                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">#</th>
                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Team Logo </th>
                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Team Name</th>
                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Status</th>
                    <th class="text-secondary opacity-7"></th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td >
                      <p class="ps-3 font-weight-bold mb-0">1</p>
                    </td>
                    <td>
                      <div class="d-flex ps-3 px-2 py-1">
                        <img src="https://demos.creative-tim.com/test/material-dashboard-pro/assets/img/team-2.jpg"
                            class="avatar avatar-sm me-3">
                      </div>
                    </td>
                    <td >
                      <p class="ps-3 font-weight-bold mb-0">Manager</p>
                    </td>
                    <td >
                      <span class="ms-3 badge badge-sm bg-gradient-success">Online</span>
                    </td>
                    <td>
                      <a href="javascript:;" class="text-secondary font-weight-normal text-xs" data-toggle="tooltip"
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