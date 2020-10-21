const name=document.getElementById('name');
    const password=document.getElementById('password');
    const form=document.getElementById('form');
    const btn = document.querySelector('submit');


    form.addEventListener('submit', e => {
    	e.preventDefault();

    	checkInput();
    });

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