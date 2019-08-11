<%@page import="java.util.ArrayList"%>
<%@page import="Dao.TestDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

<title>Group 22</title>
</head>
<!-- <script type="text/javascript">
<!-- $(document).ready(function() {
	const monthNames = ["January", "February", "March", "April", "May", "June",
	  "July", "August", "September", "October", "November", "December"
	];
	  var qntYears = 4;
	  var selectYear = $("#year");
	  var selectMonth = $("#month");
	  var selectDay = $("#day");
	  var currentYear = new Date().getFullYear();
	  
	  for (var y = 0; y < qntYears; y++){
	    let date = new Date(currentYear);
	    var yearElem = document.createElement("option");
	    yearElem.value = currentYear 
	    yearElem.textContent = currentYear;
	    selectYear.append(yearElem);
	    currentYear--;
	  } 

	  for (var m = 0; m < 12; m++){
	      let monthNum = new Date(2018, m).getMonth()
	      let month = monthNames[monthNum];
	      var monthElem = document.createElement("option");
	      monthElem.value = monthNum; 
	      monthElem.textContent = month;
	      selectMonth.append(monthElem);
	    }

	    var d = new Date();
	    var month = d.getMonth();
	    var year = d.getFullYear();
	    var day = d.getDate();

	    selectYear.val(year); 
	    selectYear.on("change", AdjustDays);  
	    selectMonth.val(month);    
	    selectMonth.on("change", AdjustDays);

	    AdjustDays();
	    selectDay.val(day)
	    
	    function AdjustDays(){
	      var year = selectYear.val();
	      var month = parseInt(selectMonth.val()) + 1;
	      selectDay.empty();
	      
	      //get the last day, so the number of days in that month
	      var days = new Date(year, month, 0).getDate(); 
	      
	      //lets create the days of that month
	      for (var d = 1; d <= days; d++){
	        var dayElem = document.createElement("option");
	        dayElem.value = d; 
	        dayElem.textContent = d;
	        selectDay.append(dayElem);
	      }
	    }    
	});
</script> --> 
<%
	TestDao t = new TestDao();

%>
<script type="text/javascript">
	var d = new Date();
	
	//To test 29th Feb 2016 uncomment the below line
	//d = new Date(2016, 01, 29, 10, 33, 30, 0); //
	
	var month = d.getMonth() + 1;
	var year = d.getFullYear();
	var date = d.getDate();
	
	$("#monthh").val(month); 
    $("#year").val(year); 
	function getYear() {
		year = document.getElementById("year").value;
		if ((year % 4===0 &&year%100 !==0 && year % 400 !==0)||(year%100===0 && year % 400===0)){
			
	}
	function getMonth() {
		month = document.getElementById("month").value;
		console.log(month);
	}
</script>
<body>
			<select id="monthh">
				<option></option>
			</select>
			<%
			
				ArrayList<Integer> listYear = t.getYear(100);
				ArrayList<Integer> listMonth = t.getMonth();
			%>
			<select id="year" onchange="getYear()">
			<% 
				for(int item : listYear){
			%>
				<option value=<%=item%>>
					<%=item %>
				</option>
			
			<%} %>
			</select>
			<select id="month" onchange="getMonth()">
			<% 
				for(int item : listMonth){
			%>
				<option value=<%=item%>>
					<%=item %>
				</option>
			
			<%} %>
			</select>
			<select id="day"></select>    

</body>
</html>
