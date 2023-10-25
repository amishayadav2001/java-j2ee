function validateForm() {
  var name = document.getElementById("name").value;
  var email = document.getElementById("email").value;
  var dob = document.getElementById("dob").value;
  var genderElements = document.getElementsByName("gender");
  var designation = document.getElementById("designation").value;

  if (name === "") {
    alert("Name is required");
    return false;
  }

  if (email === "") {
    alert("Email is required");
    return false;
  }
  
  var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
  if (!email.match(emailPattern)) {
    alert("Please enter a valid email address");
    return false;
  }

  if (dob === "") {
    alert("Date of Birth is required");
    return false;
  }

  var selectedGender = false;
  for (var i = 0; i < genderElements.length; i++) {
    if (genderElements[i].checked) {
      selectedGender = true;
      break;
    }
  }

  if (!selectedGender) {
    alert("Please select a gender");
    return false;
  }

  if (designation === "") {
    alert("Designation is required");
    return false;
  }

  return true; 
}



function validateFormSearch() {
	  var searchValue = document.getElementsByName("searchValue")[0].value;
	  var searchOption = document.getElementsByName("searchOption")[0].value;

	  if (searchValue.trim() === "") {
	    alert("Please enter a search value.");
	    return false;
	  }

	  if (searchOption === "name") {
	    if (!isValidName(searchValue)) {
	      alert("Please enter a valid name.");
	      return false;
	    }
	  } else if (searchOption === "email") {
	    if (!isValidEmail(searchValue)) {
	      alert("Please enter a valid email address.");
	      return false;
	    }
	  } else if (searchOption === "dob") {
	    if (!isValidDateOfBirth(searchValue)) {
	      alert("Please enter a valid date of birth (YYYY-MM-DD).");
	      return false;
	    }
	  }

	  return true; 
	}

	function isValidName(name) {
	  var namePattern = /^[A-Za-z\s]+$/;
	  return namePattern.test(name);
	}

	function isValidEmail(email) {
	  var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
	  return emailPattern.test(email);
	}

	function isValidDateOfBirth(dob) {
	  var datePattern = /^\d{4}-\d{2}-\d{2}$/;
	  return datePattern.test(dob);
	}
