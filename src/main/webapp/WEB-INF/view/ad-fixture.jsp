<%@include file="../common/admin/header.jspf"%>
<!-- main content -->
<div class="container-fluid py-4">
	<%-- card input data form --%>
	<div class="card p-3">
		<h4 class=" my-3 my-lg-3">Select Date Fixture</h4>
		<div class="row">
			<div class="col-6 col-lg-6">
				<div class="form-floating">
					<input type="date" class="form-control" id="dateFrom"
						placeholder="name@example.com" disabled> <label
						for="floatingInput">Date Form</label>
				</div>
			</div>
			<div class="col-6 col-lg-6">
				<div class="form-floating">
					<input type="date" class="form-control" id="dateTo"
						placeholder="name@example.com"> <label for="floatingInput">Date
						To</label>
				</div>
			</div>
		</div>
		<div class="row pt-3">
			<div class="form-group">
				<button class="btn bg-gradient-yellow text-white w-100"
					onclick="dateFixture();">submit</button>
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
							<input type="text" class="form-control" placeholder="Search.."
								id="fixtureSearch">
						</div>
					</div>
				</div>
				<div class="table-responsive">
					<table class="table align-items-center mb-0" id="fixtureTable">
						<thead>
							<tr>
								<th
									class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">League</th>
								<th
									class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Date</th>
								<th
									class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Time</th>
								<th
									class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Away</th>
								<th
									class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Home</th>
								<th
									class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Status</th>
								<th
									class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">InMatch</th>
								<th class="text-secondary opacity-7"></th>
							</tr>
						</thead>
						<tbody id="tbFixture">
						</tbody>
					</table>
				</div>
				<nav class="p-3" aria-label="Page navigation example">
					<ul class="pagination justify-content-end">
						<li class="page-item disabled"><a class="page-link"
							href="javascript:;" tabindex="-1"> <span
								class="material-icons"> keyboard_arrow_left </span> <span
								class="sr-only">Previous</span>
						</a></li>
						<li class="page-item active"><a class="page-link"
							href="javascript:;">1</a></li>
						<li class="page-item "><a class="page-link"
							href="javascript:;">2</a></li>
						<li class="page-item"><a class="page-link"
							href="javascript:;">3</a></li>
						<li class="page-item"><a class="page-link"
							href="javascript:;"> <span class="material-icons">
									keyboard_arrow_right </span> <span class="sr-only">Next</span>
						</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
	<!-- end card project -->
</div>

</div>
<!-- end main content -->
<%@include file="../common/admin/footer.jspf"%>

<script>
	$("#fixtureSearch").on("keyup", function() {
		var value = $(this).val().toLowerCase();
		$("#fixtureTable tr").filter(function() {
			$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
		});
	});

	$(document).ready(function() {
		getFixture();
	})

	function getFixture() {
		$
				.ajax({
					type : "GET",
					url : "http://localhost:8080/FixtureGet",
					contentType : "application/json",
					success : function(response) {
						var row = '<tbody id="tbFixture">';
						$
								.each(
										response,
										function(indexInArray, valueOfElement) {
											row += " <tr>"
													+ "<td >"
													+ '<p class="ps-3 font-weight-bold mb-0">'
													+ valueOfElement.leauge.name
													+ '</p>'
													+ "</td>"
													+ "<td >"
													+ '<p class="ps-3 font-weight-bold mb-0">'
													+ valueOfElement.date
													+ '</p>'
													+ "</td>"
													+ "<td >"
													+ '<p class="ps-3 font-weight-bold mb-0">'
													+ valueOfElement.time
													+ '</p>'
													+ "</td>"
													+ "<td >"
													+ '<p class="ps-3 font-weight-bold mb-0">'
													+ valueOfElement.awayTeam.name
													+ '</p>'
													+ "</td>"
													+ "<td >"
													+ '<p class="ps-3 font-weight-bold mb-0">'
													+ valueOfElement.homeTeam.name
													+ '</p>' + "</td>";
											if (valueOfElement.status == true) {
												row += "<td >"
														+ '<span class="ms-3 badge badge-sm bg-gradient-success">'
														+ valueOfElement.status
														+ '</span>' + "</td>";

											}
											if (valueOfElement.status == false) {
												row += "<td >"
														+ '<span class="ms-3 badge badge-sm bg-gradient-danger">'
														+ valueOfElement.status
														+ '</span>' + "</td>";

											}
											if (valueOfElement.inMatch == true) {
												row += "<td >"
														+ '<span class="ms-3 badge badge-sm bg-gradient-success">'
														+ valueOfElement.inMatch
														+ '</span>' + "</td>";

											}
											if (valueOfElement.inMatch == false) {
												row += "<td >"
														+ '<span class="ms-3 badge badge-sm bg-gradient-danger">'
														+ valueOfElement.inMatch
														+ '</span>' + "</td>";

											}

											+"</tr>";
										});
						row += " </tbody>";
						$("#tbFixture").replaceWith(row);
					}
				});
	}
	function getToday() {
		var dateFrom = new Date(), dayFrom = dateFrom.getDate(), monthFrom = dateFrom
				.getMonth() + 1, yearFrom = dateFrom.getFullYear();

		if (monthFrom < 10)
			monthFrom = "0" + monthFrom;
		if (dayFrom < 10)
			dayFrom = "0" + dayFrom;
		var today = yearFrom + "-" + monthFrom + "-" + dayFrom;
		$("#dateFrom").attr("value", today);
	}
	getToday();
	function dateFixture() {
		var dateFrom = new Date(), dayFrom = dateFrom.getDate(), monthFrom = dateFrom
				.getMonth() + 1, yearFrom = dateFrom.getFullYear();

		if (monthFrom < 10)
			monthFrom = "0" + monthFrom;
		if (dayFrom < 10)
			dayFrom = "0" + dayFrom;
		var today = yearFrom + "-" + monthFrom + "-" + dayFrom;

		var dateTo = new Date($('#dateTo').val()), dayTo = dateTo.getDate(), monthTo = dateTo
				.getMonth() + 1, yearTo = dateTo.getFullYear();
		var dateToSelected = [ yearTo, monthTo, dayTo ].join('-');

		var inputJson = {
			fromDate : today,
			toDate : dateToSelected,
			status : true
		}
		$.ajax({
			type : "POST",
			url : "http://localhost:8080/FixtureUpdate",
			contentType : "application/json",
			data : JSON.stringify(inputJson),
			success : function(response) {
				alert(response)
				getFixture()
			}
		});
	}
</script>