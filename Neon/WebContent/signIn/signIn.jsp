<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Log In</title>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Lemonada:wght@300;500&family=Recursive:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../css/signIn.css">
    <script type="text/javascript">
    const name=document.getElementById('name');
    const password=document.getElementById('password');
    const form=document.getElementById('form');
    const btn = document.querySelector('submit');
    function checkInput() {
    	const usernameValue = name.value.trim();
    	const passwordValue = password.value.trim();
    	if(usernameValue === ''){
    		setErrorFor(name, "Username cannot be blank");
    	}
    	else if (!isUserName(usernameValue)) {
    		setErrorFor(name, 'Not a valid name');
    	}
    	else{
    		setSuccessFor(name);
    	}

    	if(passwordValue === '') {
    		setErrorFor(password, 'Password cannot be blank');
    	}
        else if (passwordValue <=4 || passwordValue>=8)
        {
        	setErrorFor(password, 'Password should be between 5-7 letters');
        }
    	 else {
    		setSuccessFor(password);
    	}
    	
    }

    function setErrorFor(input, message) {
    	const formControl = input.parentElement;
    	const small = formControl.querySelector('small');

    	formControl.className = 'form-control error';
    	// add error message inside small
    	small.innerText = message;

    	// add error class
    	
    }

    function setSuccessFor(input) {
    	const formControl = input.parentElement;
    	formControl.className = 'form-control success';
    }

    function isEmail(email) {
    	return /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(email);
    }
    function isUserName(name) {
    	return /^([a-zA-Z].*[a-zA-Z])$/.test(name);
    }
    </script>
</head>
<body>
<div class="header">
<div class="container">
   <div class="navbar">
    <div class="logo">
        <a href="index.html"><img src="..//img/logo2.jpg" width="125px"></a>
    </div>
    <nav>
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="signup.html.html">Sign Up</a></li>
            <li><a href="signIn.html">Sign In</a></li>
            <li><img src="..//img/cart.png" width="30px" height="30px"><a href="cart.html">Cart</a></li>
            

        </ul>
    </nav>
    
   </div>
   </div>
</div>
<div class="page-wrapper">
    <div id="error"></div>

    <div id="login-box">
        <!-- <div class="left-box"> -->
            <form id="form" class="form" action="1.jsp" method="post">
                <br><br>
                <h1> Log In To Your Existing Account</h1>
            
        

                <div class="form-control">
                    <label for="username"><b>Username</b></label><br>
                    <input id="name" type="text" name="username" placeholder="Username">
                    <small>Error message</small>
                </div>
                <br>
                
                <div class="form-control">
                    <label for="psw"><b>Password</b></label>
                    <input  id="password" type="password" name="password" placeholder="Password">
                    <small>Error message</small>
                </div>
                <br>
                
            <br>
               
                <button id="submit" onclick="checkInput();">Submit</button>
            </form>
       
        <!-- </div> -->
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
                    <a href="cancel.html"><li>Cancellation & Returns</li></a>
                    <a href="terms&condition.html"><li>Terms Of Use</li></a>
                    <a href="summary.html"><li>FAQ</li></a>
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

    
    </body>
    </html>