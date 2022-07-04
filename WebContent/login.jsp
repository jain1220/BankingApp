<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<<style>
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
    background:url(https://images.pexels.com/photos/534216/pexels-photo-534216.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1) no-repeat center / cover;
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
.features img{
    width: 10.3%;
    border-radius: 50%;
    transform: scale(1.2);
    margin-left: 540px;
    
    
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
input{
    margin-right: 790px;
    margin-bottom: 30px;
    font-size: large;
}
button{
    margin-right: 875px;
    margin-bottom: 30px;
    font-size: large;
    color: bisque;
    background-color: brown;
    cursor:hand;

}
footer{
    background-color: black;
    display: flex;
    justify-content: space-between;
    padding:2rem 3rem;
    align-items: center;
}

footer div ul li {
    color: goldenrod;
    font-size: 1rem;
    border: 0.5px solid white;
    padding: 0.5rem;
    margin: 0.5rem;
    border-radius: 20%;
}
footer div h2{
    color: white;
}
.features ol li{
    margin-left: 1000px;
    font-size: 1.5rem;
    color: black;

} 

</style>
<html>
<head>
<meta charset="UTF-8">
        <title>APKA APNA BANK</title>
        <link rel="stylesheet" href="style.css">
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
                <img src="https://images.pexels.com/photos/534216/pexels-photo-534216.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
            </div>
        </header>
        <section>
            <div id="firstpara">
            </div>
            <div class="features">
                <img src="https://cdn.pixabay.com/photo/2018/11/13/21/43/avatar-3814049_960_720.png">
                <div>
                    <h2>WELCOME</h2>
                    <h3>आपका स्वागत है</h3>
                    <br>
                    <form action="/BankingApp/login" method="post">
                    
                        <input type="text" placeholder="type email" id="type username" name ="email">
                         <br>
                        <input type="password" placeholder="type password" id="type password" name = "password">
                         <br>
                         <input type="submit">
                         
                         ${test }
                    </form>
                </div>
            </div>
            <div class ="features">
                <ol>
                    <li><a href="Signup.jsp">Create Account</a></li><br>
                    <li><a href="">FORGOT PASSWORD</a></li><br>
                    <li><a href="">HELP</a></li>
                </li>
            </div>
            <div class="features">
                <div>
                    <h2>APKA APNA BANK</h2>
                    <p>APKA APNA BANK internet banking portal provides personal banking services that gives you complete control over all your banking demands online. CORPORATE BANKING LOGIN Have you tried our new</p>
                 </div>
                <img src="https://cdn.vectorstock.com/i/1000x1000/63/64/golden-institute-building-symbol-logo-design-vector-21246364.webp">
            </div>
        </section>
        <footer>
            <div>
                <h2>APKA APNA BANK PAYMENTS</h2>
                <ul>
                    <li>PAYMENT SOLUTION</li>
                    <li>IMPORTANT LINKS</li>
                    <li> JOIN US</li>
                   
                </ul>
            </div>
            </div>
        </footer>
    </body>
    </HTMl>

