function validateForm() {
	var firstname = document.getElementById("firstname").value;
	var lastname = document.getElementById("lastname").value;
	var email = document.getElementById("email").value;

	if (firstname === "") {
		alert("First name must be filled out");
		return false;
	}

	if (lastname === "") {
		alert("Last name must be filled out");
		return false;
	}
	
	if (!isValidName(firstname)) {
        alert("First name should contain only alphabetic characters");
        return false;
    }

    if (!isValidName(lastname)) {
        alert("Last name should contain only alphabetic characters");
        return false;
    }
    
    function isValidName(name) {
        var namePattern = /^[A-Za-z]+$/;
        return namePattern.test(name);
    }

	if (email === "") {
		alert("Email must be filled out");
		return false;
	}

	var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
	if (!email.match(emailPattern)) {
		alert("Invalid email address format");
		return false;
	}

	return true;
}

function validateFormSearch() {
    var searchValue = document.getElementsByName("searchValue")[0].value;
    if (searchValue.trim() === "") {
        alert("Search value must be filled out");
        return false;
    }
    
    if (!isValidName(searchValue)) {
        alert("Search value should contain only alphabetic characters");
        return false;
    }
    
    if (!isSearchValueInTable(searchValue)) {
        alert("No results found for the search value.");
        return false;
    }


    var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    if (!emailPattern.test(searchValue)) {
        alert("Invalid email address format");
        return false;
    }

    return true;
}

function isValidName(name) {
    var namePattern = /^[A-Za-z]+$/;
    return namePattern.test(name);
}


function isSearchValueInTable(searchValue) {
    var table = document.getElementsByClassName("table")[0];
    var rows = table.getElementsByTagName("tr");

    for (var i = 1; i < rows.length; i++) {
        var columns = rows[i].getElementsByTagName("td");
        var found = false;
        for (var j = 0; j < columns.length; j++) {
            var cellText = columns[j].innerText;
            if (cellText.includes(searchValue)) {
                found = true;
                break;
            }
        }
        if (found) {
            return true; 
        }
    }

    return false; 
}





