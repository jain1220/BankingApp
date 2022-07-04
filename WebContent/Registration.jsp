<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<<style>
body{
    background-color:blueviolet;
    margin-left: 450px;
   
}
h1{
    color: azure;
    align-items: center;
    margin-left: 150px;
    
}

form{
    margin-left: 20px;
    font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    font-size: large;
}
input {
    margin-left: 120px;
}
img{
    margin-right: 850PX;
    height: 80px;
    border-radius: 50%;
}
button{
    font-size: large;
    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    cursor: hand;
    color: brown;
    border-style:dotted;
    
}
a{
    font-size: larger;
    cursor: hand;
    border-style: dotted;
    color:antiquewhite;
}
</style>
<html>
<head>
<meta charset="UTF-8">
<html>
  <title>REGISTRATION PAGE</title>
    <HEAD>
        <link rel = "stylesheet" href ="style.css">
    </HEAD>
    <img src="https://cdn.vectorstock.com/i/1000x1000/63/64/golden-institute-building-symbol-logo-design-vector-21246364.webp">
    <body>

        <h1>REGISTRATION FORM</h1>
        <br>
        <form action ="/BankingApp/registration">
            
           USER-NAME =  <input type="text" placeholder="USER NAME" name="username">
           <br>
           <br>
          FATHER-NAME =  <input type="text" placeholder="USER NAME" name="fathername">
          <br>
          <br>
          AGE        = <input type ="number"placeholder="AGE" name="age">
          <br>
          <br>
          GENDER    = <input id ="gender" type="radio" name="gender" value ="MALE">
          <label for ="gender">MALE</label>
          <input id ="gender1" type="radio" name="g" value ="FEMALE">
          <label for ="gender1">FEMALE</label>
          <input id ="gender2" type="radio" name="g" value ="OTHERS">
          <label for ="gender2">OTHERS</label>
          <br>
          <br>
          Are You Citizen Of India ?
                  <input id ="citizen" type="radio" name="c" value ="YEs">
          <label for ="citizen">Yes</label>
          <input id ="citizen2" type="radio" name="c" value ="No">
          <label for ="citizen2">No</label>
          <br>
          <br>
          DOB = <input type="date" name="dob">
          <br>
          <br>
          City = <input type="text" placeholder="city" name="city">
          <br>
          <br>
          <label for = "MAIL">EMAIL = </label>
          <input type="email" id="MAIL" name="email">
        <button type="submit">OTP</button>
        <br>
        <BR>
        A/c Type = <input id ="ac" type="radio" name="actype" value ="Saving">
          <label for ="ac">Saving</label>
          <input id ="ac1" type="radio" name="o" value ="Current">
          <label for ="ac1">Current</label>
            <br>
            <br>
           <a href= "file:///C:/Users/DELL/Desktop/Untitled-2.html"</a>
          
         <input type="submit">
        
        </form>
        <form action="">
        
        </form>
        
    </body>
</html>
