<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" 
integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Courses</title>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
$( function() {
	$( "#datepicker").datepicker();
	
});
</script>
<style type= "text/css">
.weekDays-selector input {
display: none!important;
}

.weekDays-selector input[type=checkbox] + label {
display: inline-block;
border-radius: 6px;
background: #dddddd;
height: 40px;
width: 30px;
margin-right: 3px;
line-height: 40px;
text-align: center;
cursor: pointer;
}

.weekDays-selector input[type=checkbox]:checked + label {
background: #2AD705
color:#ffffff;
}
</style>
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
<div class="container">
<div class="navbar-header">
<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria expanded="false" aria-controls="navbar">
<span class="sr-only">Toggle navigation</span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
<a class="navbar-brand" href="#">Course Scheduler</a>
</div>
<div id="navbar" class="collapse navbar-collapse">
<ul class="nav navbar-nav">
<li class="active"><a href="#">Home</a></li>
<li><a href="#about">About</a></li>
<li><a href="#contact">Contact</a></li>
</ul>
</div>
</div>
</nav>

<div class="container">
<div style="margin-top: 100px"></div>
<div style="width: 300px">

<br><br>
<form action="SchedulerServlet" method="post">
<label for="courseName">Course</label>
<select name="courseName" class="form-control">
<option value="Java Programming">Java Programming</option>
<option value="C#">C#</option>
<option value="C++">C++</option>
<option value="Ruby on Rails">Ruby on Rails</option>
<option value="PHP">PHP</option>
<option value="SQL">SQL</option>
<option value="Javascript">Javascript</option>
</select>
<br>

<label for="professor">Professor</label>
<select name="professor" class="form-control">
<option value="John White">John White</option>
<option value="Michael Brown">Michael Brown</option>
<option value="Tina Doe">Tina Doe</option>
<option value="Emily Winter">Emily Winter</option>
<option value="Christine Summer">Christine Summer</option>
</select>
<br>

<label for="time">Time</label>
<select name="time" class="form-control">
<option value="09:00 a.m.">09:00 a.m</option>
<option value="09:00 a.m.">10:00 a.m</option>
<option value="09:00 a.m.">11:00 a.m</option>
<option value="09:00 a.m.">12:00 p.m</option>
<option value="09:00 a.m.">01:00 p.m</option>
<option value="09:00 a.m.">02:00 p.m</option>
</select>
<br>

<label for="room">Room Number</label>
<select name="room" class="form-control">
<option value="300">300</option>
<option value="301">301</option>
<option value="301">302</option>
<option value="301">303</option>
<option value="301">304</option>
<option value="301">305</option>
<option value="301">306</option>
<option value="301">307</option>
<option value="301">308</option>
</select>
<br>

<label for="startDate">Start Date</label>
<input name="startDate" type="text" id="datepicker" class="form-control">
<br>

<label for="weekday">Weekdays</label>
<div class="weekDays-selector">
<input type="checkbox" name="weekday" value="MONDAY" id="weekday-mon" class="weekday"/>
<label for="weekday-mon">M</label>

<input type="checkbox" name="weekday" value="TUESDAY" id="weekday-tue" class="weekday" />
<label for="weekday-tue">T</label>

<input type="checkbox" name="weekday" value="WEDNESDAY" id="weekday-wed" class="weekday" />
<label for="weekday-wed">W</label>

<input type="checkbox" name="weekday" value="THURSDAY" id="weekday-thu" class="weekday" />
<label for="weekday-thu">T</label>

<input type="checkbox" name="weekday" value="FRIDAY" id="weekday-fri" class="weekday" />
<label for="weekday-fri">F</label>
</div>
<br>
<button type="submit">Add To Schedule</button>
<br>
</form>
</div>


<c:if test="${courses != null }"> <!-- ******* -->		
<br>
<h3>My Schedule</h3>
<table class="table table-striped">
<thead>
<tr>
<th scope="col">Course Name</th>
<th scope="col">Professor</th>
<th scope="col">Time</th>
<th scope="col">Room Number</th>
<th scope="col">Start Date</th>
<th scope="col">Weekdays</th>
</tr>
</thead>
<tbody>
<c:forEach var="course" items="${courses}"> <!-- ^^^^^^^ -->
<tr>
<td><c:out value="${course.courseName}"/></td>
<td><c:out value="${course.professor }"/></td>
<td><c:out value="${course.time}"/></td>
<td><c:out value="${course.room}"/></td>
<td><c:out value="${course.startDate}"/></td>

<td>
<c:forEach var="occurrence" items="${course.occurrences}">
<c:out value="${occurrence}"/>
</c:forEach>

</td>
</tr>
</c:forEach> <!-- ^^^^^^^ -->
</tbody>
</table>
</c:if> <!-- ******* -->
</div> <!-- /container -->
</body>
</html>