<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Otp Verification</title>
    <!-- LInk To CSS -->
    <link rel="stylesheet" href="style.css">
    <!-- Box Icons -->
    <link rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
</head>
<body>
    <!-- Navbar -->
    <header>
        <div class="nav container">
            <!-- Logo -->
            <a href="index.html" class="logo"><i class='bx bx-home'></i>BankingApp</a>
           
            <!-- Log In Button -->
            <a href="login.html" class="btn">Log In</a>
        </div>

    </header>
    <!-- Log In -->
    <div class="login container">
        <div class="login-container">
            <h2>Verification Page</h2>
            <p>Enter you OTP (One Time Password) <br>To verify yourself.</p>
            <!-- Login Form -->
            <form action="otpVerification" method="post">
                <span>Enter OTP Here</span>
                <input type="text" name="otp" id="" placeholder="Enter Your Otp" required>
                <input type = "hidden" name="email" value=  ${email }  >
				<input type="submit" value="Verify" class="buttom">
            </form>
        </div>
        ${text }
        <!-- Log In Image -->
        <div class="login-image">
            <img src="img/login.png" alt="">
        </div>
    </div>
    
    
    
</body>
</html>