<%@include file="../common/admin/header.jspf" %>
  <!-- main content -->
  <div class="container-fluid py-4">
      <div class="row">
        <!-- card layout project -->
        <div class="col-lg-12 col-md-6 mb-md-0 mb-4">
          <div class="card">
            <div class="row p-3">
                <div class="col-6 col-lg-6">
                    <div class="input-group input-group-outline ">
                        <input type="text" class="form-control" placeholder="Search..">
                    </div>
                </div>   
              <div class="col-3 col-lg-3">
                    <div class="input-group input-group-outline ">
                      <button class="btn bg-gradient-yellow text-white w-100" onclick="getClientList();">Client List</button>
                    </div>
                </div>     
            </div>
            <div class="table-responsive">
              <table class="table align-items-center mb-0">
                <thead>
                  <tr>
                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">#</th>
                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Client Name </th>
                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Client Age</th>
                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Client Address</th>
                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Client Contact</th>
                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Verified</th>
                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Username</th>
                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Client Country</th>
                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Client Province</th>
                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Max Deposit</th>
                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Today Deposit</th>
                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Protect Time Start</th>
                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Verified Code</th>
                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Verified Create Date </th>
                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Banned Reason</th>
                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Status</th>
                    <th class="text-secondary opacity-7"></th>
                  </tr>
                </thead>
                <tbody id="tbClient">
                  <tr>
                    <td >
                      <p class="ps-3 font-weight-bold mb-0">1</p>
                    </td>
                     <td >
                      <p class="ps-3 font-weight-bold mb-0">Phat Ly</p>
                    </td>
                    <td >
                      <p class="ps-3 font-weight-bold mb-0">20</p>
                    </td>
                    <td >
                      <p class="ps-3 font-weight-bold mb-0">285 Hoa Binh, Tan Phu, Ho Chi Minh City</p>
                    </td>
                    <td>
                      <p class=" ps-3  font-weight-bold mb-0"><i class="bi bi-envelope me-2"></i>lyphat200@gmail.com</p>
                      <p class="ps-3  font-weight-bold mb-0"><i class="bi bi-phone me-2"></i>0909123456</p>
                    </td>
                    <td >
                      <p class="ps-3 font-weight-bold mb-0">True</p>
                    </td>
                    <td >
                      <p class="ps-3 font-weight-bold mb-0">hungphat</p>
                    </td>
                    <td >
                      <p class="ps-3 font-weight-bold mb-0">Hungphat.</p>
                    </td>
                    <td >
                      <p class="ps-3 font-weight-bold mb-0">Ho Chi Minh City</p>
                    </td>
                    <td >
                      <p class="ps-3 font-weight-bold mb-0">Tan Phu</p>
                    </td>
                    <td >
                      <p class="ps-3 font-weight-bold mb-0">5000</p>
                    </td>
                    <td >
                      <p class="ps-3 font-weight-bold mb-0">3000</p>
                    </td>
                    <td >
                      <p class="ps-3 font-weight-bold mb-0">20/11/2021</p>
                    </td>
                    <td >
                      <p class="ps-3 font-weight-bold mb-0">LHP2001</p>
                    </td>
                    <td >
                      <p class="ps-3 font-weight-bold mb-0">19/11/2021</p>
                    </td>
                    <td >
                      <p class="ps-3 font-weight-bold mb-0"></p>
                    </td>
                    <td >
                      <span class="ms-3 badge badge-sm bg-gradient-success">active</span>
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

<script>
getClientList();
  function getClientList()
  {$.ajax({
    type: "GET",
    url: "http://localhost:8000/AccountGet",
    contentType: "application/json",
    success: function (response) {
      // alert(JSON.stringify(response));

      var row = '<tbody id="tbClient">';
      $.each(response, function (indexInArray, valueOfElement) {
        row +=
          " <tr>" +
          "<td >" +
          '<p class="ps-3 font-weight-bold mb-0">'+valueOfElement.id +'</p>' +
          "</td>" +
          "<td >" +
          '<p class="ps-3 font-weight-bold mb-0">'+valueOfElement.name +'</p>' +
          "</td>" +
          "<td >" +
          '<p class="ps-3 font-weight-bold mb-0">'+valueOfElement.age +'</p>' +
          "</td>" +
           "<td >" +
          '<p class="ps-3 font-weight-bold mb-0">'+valueOfElement.address +'</p>' +
          "</td>" +  
          "<td>"+
            '<p class="ps-3  font-weight-bold mb-0"><i class="bi bi-envelope me-2"></i>'+valueOfElement.email+'</p>'+
            '<p class="ps-3  font-weight-bold mb-0"><i class="bi bi-phone me-2"></i>'+valueOfElement.phonenumber+'</p>'+
            '</td>'+
          "<td >" +
          '<p class="ps-3 font-weight-bold mb-0">'+valueOfElement.verified +'</p>' +
          "</td>" +
          "<td >" +
          '<p class="ps-3 font-weight-bold mb-0">'+valueOfElement.username +'</p>' +
          "</td>" +
          "<td >" +
          '<p class="ps-3 font-weight-bold mb-0">'+ valueOfElement.country +'</p>' +
          "</td>" +
          "<td >" +
          '<p class="ps-3 font-weight-bold mb-0">'+ valueOfElement.province +'</p>' +
          "</td>" +
          "<td >" +
          '<p class="ps-3 font-weight-bold mb-0">'+ valueOfElement.maximumDeposit +'</p>' +
          "</td>" +
          "<td >" +
          '<p class="ps-3 font-weight-bold mb-0">'+ valueOfElement.todayDeposit +'</p>' +
          "</td>" +
          "<td >" +
          '<p class="ps-3 font-weight-bold mb-0">'+ valueOfElement.protectTimeStart +'</p>' +
          "</td>" +
          "<td >" +
          '<p class="ps-3 font-weight-bold mb-0">'+ valueOfElement.verifiedCode +'</p>' +
          "</td>" +
          "<td >" +
          '<p class="ps-3 font-weight-bold mb-0">'+ valueOfElement.verifiedCreateDate +'</p>' +
          "</td>" +
          "<td >" +
          '<p class="ps-3 font-weight-bold mb-0">'+valueOfElement.bannedReason +'</p>' +
          "</td>" +  
          "<td >" +
          '<span class="ms-3 badge badge-sm bg-gradient-success">'+valueOfElement.status +'</span>' +
          "</td>" +
          "</tr>";
      });
      row += " </tbody>";
      $("#tbClient").replaceWith(row);
    },
  })}
</script>