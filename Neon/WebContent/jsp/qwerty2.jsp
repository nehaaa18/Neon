<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Sign Up</title>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
    <link rel="stylesheet" type="text/css" href="../css/signup.css">
    <link href="https://fonts.googleapis.com/css2?family=Lemonada:wght@300;500&family=Recursive:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <script type="text/javascript">
    function validate()
	{
		var uname=document.f2.username.value;
		if (uname=="")
		{
			alert("Username cannot be blank");
			document.f2.username.focus();
			return false;
		}
		var regex1 = /^([a-zA-Z].*[a-zA-Z])$/;
		if( !(regex1.test(uname)) ){
			alert("Enter a valid username");
			document.f2.username.focus();
			return false;
		}
		var email=document.f2.email.value;
		if (email=="")
		{
			alert("Email cannot be blank");
			document.f2.email.focus();
			return false;
		}
		var regex2 = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
		if ( !(regex2.test(email)) ){
			alert("Enter a valid email!");
			document.f2.email.focus();
			return false;
		}
		var passwordValue=document.f2.password.value;
		if (passwordValue=="")
		{
			alert("Password cannot be blank");
			document.f2.password.focus();
			return false;
		}
		if (passwordValue.length<=4 || passwordValue.length>=10)
		{
			alert("Password should be between 5-9 letters");
			document.f2.password.focus();
			return false;
		}
		var passwordValue2=document.f2.password2.value;
		if (passwordValue2=="")
		{
			alert("Repeated password cannot be blank");
			document.f2.password2.focus();
			return false;
		}
		if(passwordValue2!=passwordValue){
			alert("Repeated password should be same!");
			document.f2.password2.focus();
			return false;
		}
	}
    </script>
</head>
<body>
<div class="header">
<div class="container">
   <div class="navbar">
    <div class="logo">
        <a href="index.html"><img src="../img/logo2.jpg" width="125px"></a>
    </div>
    <nav>
        <ul>
            <li><a href="../html/index.html">Home</a></li>
            <li><a href="../jsp/qwerty2.jsp">Sign Up</a></li>
            <li><a href="../signIn/qwerty.jsp">Sign In</a></li>
            <li><img src="../img/cart.png" width="30px" height="30px"><a href="cart.html">Cart</a></li>
            

        </ul>
    </nav>
    
   </div>
   </div>
</div>
<div class="page-wrapper">
    <div id="error"></div>

    <div id="login-box">
        <div class="left-box">
            <form id="form" name="f2" class="form"  action="../jsp/signup.jsp" method="post">
                <h1> Sign Up</h1>
            
        

                <div class="form-control">
                    <label for="username"><b>Username</b></label>
                    <input id="name" type="text" name="username" placeholder="Username">
                    <small>Error message</small>
                </div>
                <br>
             <div class="form-control">
                    <label for="email"><b>Email</b></label><br>
                    <input id="email" type="text" name="email" placeholder="Email"/>
                    <small>Error message</small>
                </div>
                <br>
                 <div class="form-control">
                    <label for="psw"><b>Password</b></label>
                    <input  id="password" type="password" name="password" placeholder="Password">
                    <small>Error message</small>
                </div>
                <br>
               <div class="form-control">
                    <label for="psw-repeat"><b>Repeat Password</b></label>
                    <input id="repeat" type="password" name="password2" placeholder="Retype Password">
                    <small>Error message</small>
                </div>
                <br>
                <!-- <label for="psw-repeat"><b>Repeat Password</b></label>
                    <input id="repeat"type="password" name="password2" placeholder="Retype Password" required>
                <br> -->
                <label>
                <input type="checkbox" checked="checked" name="remember" > Remember me
                </label>
                <br>
                <p>By creating an account you agree to our <a href="terms&condition.html" style="color:dodgerblue">Terms & Privacy</a>.</p>
                 <p><a href="forgotPass.html" style="color:dodgerblue">Forgot Password? </a></p>
           
            <br>
                <!-- <input type="submit" name="sign-up-button" placeholder="Sign Up"> -->
                <button id="submit" onclick="return validate();">Submit</button>
                <!-- <br> -->
            </form>
        <!-- <br> -->
        </div>

        <div class="right-box">
            <span class="signinwith">Sign in with<br/>Social Network</span>
            <button class="social facebook">Log in with Facebook</button>
            <button class="social twitter">Log in with Twitter</button> 
            <button class="social google">Log in with Google</button>
        </div>
    </div>
</div>
    <div class="footer">
        <div class="footer-content">
            <div class="footer-section about">
                <h1 class="logo-text"><span>Neon</span></h1>
                <p>India's no. 1 online fashion destination justifies its fashion relevance 
                    by bringing something new and chic to the table on the daily.
                     Fashion trends seem to change at lightning speed, yet the Neon
                      shopping app has managed to keep up without any hiccups.
                </p>
                <div class="contact">
                    <span><i class="fas fa-phone"></i>&nbsp; 123-456-789</span>
                    <span><i class="fas fa-envelope"></i>&nbsp; info@neonfashion.com</span>
                </div>
                <div class="socials">
                    <a href="#"><i class="fab fa-facebook"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-youtube"></i></a>
                </div>
            </div>
            <div class="footer-section links">
                <h2>Quick Links</h2>
                <br>
                <ul>
                    <a href="../html/cancel.html"><li>Cancellation & Returns</li></a>
                    <a href="../html/terms&condition.html"><li>Terms Of Use</li></a>
                    <a href="../html/summary.html"><li>FAQ</li></a>
                </ul>
            </div>
            <div class="footer-section contact-form">
                <h2>Contact us</h2>
                <br>
                <form action="index_sample.html" method="post">
                    <input type="email" name="email" class="text-input contact-input size" placeholder="Enter your email here...">
                    <br>
                    <textarea name="message" rows="5" class="text-input contact-input size" placeholder="Your message..."></textarea>
                    <br>
                    <button type="submit" class="btn btn-big contact-btn">
                        <i class="fas fa-paper-plane"></i> 
                        Send
                    </button>
                </form>
            </div>
        </div>
        <div class="footer-bottom">
            &copy;  Designed by Neon Developers
        </div>
    </div>

    <!--  <script src="../js/script.js" type="text/javascript"></script> -->
    </body>
    </html>