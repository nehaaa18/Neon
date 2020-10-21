const name=document.getElementById('name');
const email=document.getElementById('email');
const password=document.getElementById('password');
const repeat=document.getElementById('repeat');
const form=document.getElementById('form');
const btn = document.querySelector('submit');

btn.onclick = function() {
  const rndCol = 'rgb(' + random(255) + ',' + random(255) + ',' + random(255) + ')';
  document.body.style.backgroundColor = rndCol;
}
// const errorElement=document.getElementById('error')

// form.addEventListener('submit', (e)=> {
// 	let messages=[]
// 	if (name.value ===' '  || name.value==null)
// 	{
// 		messages.push('Name is Required')
// 	}
// 	if (password.value.length<=6) {
// 		messages.push("Password must be longer than 6 characters")
// 	}
// 	if (password.value.length>20) {
// 		messages.push("Password must be less than 20 characters")
// 	}
// 	if (password.value==='password') {
// 		messages.push("Password cannot be password")
// 	}
// 	if (messages.length>0) {
// 		e.preventDefault()
// 		errorElement.innerText=message.join(', ')
// 	}
// })

form.addEventListener('submit', e => {
	e.preventDefault();

	checkInput();
});

function checkInput() {
	const usernameValue = name.value.trim();
	const emailValue = email.value.trim();
	const passwordValue = password.value.trim();
	const repeatValue = repeat.value.trim();

	if(usernameValue === ''){
		setErrorFor(name, "Username cannot be blank");
	}
	else if (!isUserName(usernameValue)) {
		setErrorFor(name, 'Not a valid name');
	}
	else{
		setSuccessFor(name);
	}

	if(emailValue === '') {
		setErrorFor(email, 'Email cannot be blank');
	} else if (!isEmail(emailValue)) {
		setErrorFor(email, 'Not a valid email');
	} else {
		setSuccessFor(email);
	}

	if(passwordValue === '') {
		setErrorFor(password, 'Password cannot be blank');
	} else {
		setSuccessFor(password);
	}
	
	if(repeatValue === '') {
		setErrorFor(repeat, 'Password2 cannot be blank');
	} else if(passwordValue !== repeatValue) {
		setErrorFor(repeat, 'Passwords does not match');
	} else{
		setSuccessFor(repeat);
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