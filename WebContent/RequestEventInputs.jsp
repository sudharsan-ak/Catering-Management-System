<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add User Event</title>
</head>
<style type="text/css">
<%@include file="CSS/style.css"%>
</style>
<link href="myStyle.css" rel="stylesheet" type="text/css" />
    <div class="header_resize">
      <div class="logo"><h1><a href="<c:url value='/' />">Campus Event Catering System</a></h1></div>
	  <div class="content">Request Event</div>
      <div class="menu_nav">
      </div>
  </div>

<body>
<input name="errMsg" value="<c:out value='${errorMsgs.errorMsg}'/>" class="errorPane">

         
<table>
  <tr>
   <td>
   <form name="mgrEventForm" action="<c:url value='/EventController' />" method="post">
         <input name="user" value="<c:out value='${EVENTS.username}'/>" type="hidden">
         <input name="last" value="<c:out value='${EVENTS.userLast}'/>" type="hidden">
         <input name="first" value="<c:out value='${EVENTS.userFirst}'/>" type="hidden">
         <input name="date" value="<c:out value='${EVENTS.date}'/>" type="hidden">
         <input name="time" value="<c:out value='${EVENTS.time}'/>" type="hidden">
         <table border="1" class="myTable"> 
       
    <tr>
    <td> Last Name: </td>
    <td> <c:out value="${EVENTS.userLast}" /> </td>
    <td> <input name="userNamesError" value="<c:out value='${errorMsgs.userNamesError}'/>" class="errorMsg"> </td>
    </tr>

    <tr>
    <td> First Name: </td>
    <td> <c:out value="${EVENTS.userFirst}" /> </td>
     <td> <input name="userNamesError" value="<c:out value='${errorMsgs.userNamesError}'/>" class="errorMsg"/> </td>
    </tr>

    <tr>
    <td> Date: </td>
    <td> <c:out value="${EVENTS.date}" /> </td>
     <td> <input name="eventDateError" value="<c:out value='${errorMsgs.eventDateError}'/>" class="errorMsg"> </td>
    </tr>

    <tr>
    <td> Start Time: </td>
    <td> <c:out value="${EVENTS.time}" /> </td>
     <td> <input name="eventTimeError" value="<c:out value='${errorMsgs.eventTimeError}'/>" class="errorMsg"/></td>
    </tr>
    
    <tr>
    <td> Duration: </td>
    <td><select name="duration">
    <option value="2 hours"
       >2 hours</option>     
    <option value="3 hours"
       >3 hours</option>     
    <option value="4 hours"
        >4 hours</option>     
    <option value="5 hours"
        >5 hours</option>     
    <option value="6 hours"
        >6 hours</option>     
    <option value="7 hours"
        >7 hours</option>     
    <option value="8 hours"
       >8 hours</option> 
    </select> </td> 
     <td> <input name="durationError" value="<c:out value='${errorMsgs.durationError}'/>" class="errorMsg"> </td>
    </tr>

	<tr>
    <td> Hall Name: </td>
    <td><select name="hall">     
    <option value="Maverick"
       >Maverick</option>     
    <option value="KC"
       >KC</option>     
    <option value="Arlington"
      >Arlington</option> 
    <option value="Shard"
       >Shard</option> 
   <option value="Liberty"
        >Liberty</option> 
    </select> </td>
    </tr>
    
    <tr>
    <td> Estimated Attendees: </td>
    <td> <input name = "attendees" value = "<c:out value="${EVENTS.attendees}" />" class="text45"/> </td>
     <td> <input name="attendeeError" value="<c:out value='${errorMsgs.attendeeError}'/>" class="errorMsg"> </td>
    </tr>
    
    <tr>
    <td> Event Name: </td>
    <td> <input name = "eventName" value = "<c:out value="${EVENTS.eventName}" />" class="text45" /></td>
     <td> <input name="eventNameError" value="<c:out value='${errorMsgs.eventNameError}'/>" class="errorMsg"> </td>
    </tr>
    
    <tr>
    <td> Food Type: </td>
    <td><select name="food">
    <option value="American"
       >American</option>     
    <option value="Chinese"
      >Chinese</option>     
    <option value="French"
        >French</option> 
    <option value="Greek"
      >Greek</option> 
    <option value="Indian"
        >Indian</option> 
    <option value="Italian"
        >Italian</option> 
    <option value="Japanese"
        >Japanese</option> 
    <option value="Mexican"
        >Mexican</option> 
    <option value="Pizza"
        >Pizza</option> 
    </select> </td>
    </tr>
    
    <tr>
    <td> Meal: </td>
    <td><select name="meal">
    <option value="Breakfast"
       >Breakfast</option>     
    <option value="Lunch"
    >Lunch</option>     
    <option value="Supper"
        >Supper</option> 
    </select> </td>
    </tr>
    
    <tr>
    <td> Meal Formality: </td>
    <td><select name="formality">
    <option value="formal"
        >formal</option>     
    <option value="informal"
      >informal</option>     
    </select> </td>
    </tr>
    
    <tr>
    <td> Drink Type: </td>
    <td><select name="drinkType">
    <option value="alcohol"
       >alcohol</option>     
    <option value="standard"
       >non-alcohol</option>     
    </select> </td>
    </tr>
    
    <tr>
    <td> Entertainment: </td>
    <td><select name="entertainment">
    <option value="music"
      >music</option>     
    <option value="none"
     >non-music</option>     
    </select> </td>
    </tr>
    
    <tr>
    <td> Event Status: </td>
    <td> <c:out value="none" /> </td>
    </tr>
    
    <tr>
    </tr>
    </table>
    <input name="action" value="reserveE" type="hidden">
	<input name="submit" type="submit" value="Reserve">
	</form>
	<a href="<c:url value='/UserController?action=logout'/>"><input name="logoutButton" type="submit" value="Logout"></a>
</td>
</tr>
</table>
</body>
</html>