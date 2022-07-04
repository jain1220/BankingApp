<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<style>
table, th, td {
  border:1px solid black;
}
</style>
<body>

<h2> wating for varify</h2>

<table style="width:100%">
  <tr>
    <th>name</th>
    <th>email</th>
    <th>approved</th>
    <th>reject</th>
    
  </tr>
 <c:forEach var="item" items="${userInfo}">
  <form action="/BankingApp/conformation" method="post"> 
   <tr>
    <td> <input name="userName"  value="${item.name }"> ${item.name } </td>
    <td> <input name="email"  value="${item.email}"> ${item.email} </td>
    <td> <input type="submit" name="conformation" value="approved"> </td>
    <td> <input type="submit" name="conformation" value="reject"> </td>
    
  </tr>
  </form>
  </c:forEach>
 
</table>


</body>
</html>