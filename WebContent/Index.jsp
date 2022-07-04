<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<<<style>


*{
    padding: 0;
    margin: 0;
}
body{
    font-family: Arial, Helvetica, sans-serif;
    font-weight: 500;
}
#top{
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: black;
    height: 75px;
    padding: 0 3rem;
}
nav ul li{
    color: white;
    list-style-type: none;
    margin: 10px;
}
#logo img{
    height: 50px;
}
nav ul{
    display: flex;
}
#banner{
    background:url(https://images.pexels.com/photos/534216/pexels-photo-534216.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1)  no-repeat center / cover;
    height: 200px;
    
}
#firstpara{
    padding:2rem 3rem;
}
#firstpara p{
    text-align: center;
    color: #948e9a;
    font-size: 25px;
    
}
.features{
    display: flex;
    padding:2rem 3rem;
    align-items:center;
    justify-content: space-between;
    border-bottom: 1px solid #948e9a;
}
.features div{
    width: 50%;
}
</style>



<html>
<head>
<meta charset="UTF-8">
 <title>MINI BANK</title>
    <head>
        <link rel = "stylesheet" href ="style.css">
    </head>
    <body>
        <header>
            <div id="top">
                <div id="logo">
                    <img src="https://cdn.vectorstock.com/i/1000x1000/63/64/golden-institute-building-symbol-logo-design-vector-21246364.webp">
                </div>
                <nav>
                    <ul>
                        <li>About Us</li>
                        <li>How Do I</li>
                        <li>Careers</li>
                        <li>New User</li>
                        <li>Contact Us</li>
                    </ul>
                </nav>
            </div>
            <div id="banner">
                <img src="https://images.pexels.com/photos/534216/pexels-photo-534216.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1>
            </div>
        </header>
        <section>
            <div id="firstpara">
            </div>
            <div class="features">
                
                <div>
                    <h2>WELCOME</h2>
                    <h3>आपका स्वागत है</h3>
                    <br>
                    <a href =login.jsp>ADMIN LOGIN</a>
                    <br>
                    <br>

                    <a href=Registration.jsp>USER REGISTRATION</a>
                </div>
            </div>
        </section>          
        </body>
</html>
