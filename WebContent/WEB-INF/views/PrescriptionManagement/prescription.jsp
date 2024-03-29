<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HealthCare | Stock</title>
<link rel="stylesheet" type="text/css" href="<c:url value="//resources/css/prescription.css"/>">
<link rel="stylesheet" type="text/css" href="../shareFiles/index.css">
</head>
<body>
<%@ include file="../shareFiles/header.jsp" %>
<div class="row g-0">
<%@ include file="../shareFiles/sideMenu.jsp" %> 
 <div  class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
               <h1>PRESCRIPTION MANAGEMENT</h1>
                   <div class="container mb-5">

  <% if(userName.equals("doctor")){ %>
  <div class="column">
    <div class="card rounded-3">
      <h4 class="mt-4 mb-0">HISTORY  <img width=100 height=100 src="<c:url value="//resources/img/prescrip.png"/>"></img></h4><br></br>
      <a href="../prescription/history"><p class="mb-0">More Info -> </p></a>
    </div>
  </div>
      
  <div class="column">
    <div class="card rounded-3"> <h4 class="mt-4 mb-0">RECOM MEDICINE <img width=100 height=100 src="<c:url value="//resources/img/medic.png"/>"></img></h4><br></br>
    <a href="../prescription/recommend"> <p class="mb-0">More Info -> </p></a></div>
  </div>
<%}%>      
<% if(userName.equals("pharmacist")){ %>
  <div class="column">
    <div class="card rounded-3"> <h4 class="mt-4 mb-0">GENERATE MEDICINE LIST  <img width=100 height=100 src="<c:url value="//resources/img/list.png"/>"></img></h4><br></br>
     <div class="moreInfo"> <a href="../prescription/medicineList"><p class="mb-0">More Info -> </p></a></div></div>
  </div>
</div>
  <%}%>
  
  <% if(userName.equals("admin")){ %>
  <div class="column">
    <div class="card rounded-3"> <h4 class="mt-4 mb-0">VIEW PATIENT LIST  <img width=100 height=100 src="<c:url value="//resources/img/user.png"/>"></img></h4><br></br>
     <div class="moreInfo"> <a href="../prescription/patientList"><p class="mb-0">More Info -> </p></a></div></div>
  </div>
</div>
  <%}%>
                    </div>
                </div>
            </div>
            </div>
<%@ include file="../shareFiles/footer.jsp" %>
</body>
</html>