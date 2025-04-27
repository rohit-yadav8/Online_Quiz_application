<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="includes/Header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password</title>

<!-- Bootstrap & Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<style>
    body {
        font-family: 'Poppins', sans-serif;
        background-color: #f8f9fa;
    }

    .card-container {
        margin: 60px auto;
        max-width: 600px;
        background: #ffffff;
        border-radius: 15px;
        box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.1);
        padding: 40px;
    }

    .scrollable-container {
        max-height: 500px;
        overflow-y: auto;
        padding-right: 15px; /* prevent content hiding behind scrollbar */
    }

    .form-label {
        font-weight: 500;
        color: #343a40;
    }

    .form-control {
        border-radius: 10px;
    }

    .btn-primary {
        width: 100px;
        margin-right: 10px;
    }

    .form-buttons {
        margin-top: 20px;
        text-align: center;
    }
</style>

<script type="text/javascript">
	function regvalidate() {
		var pass = document.changepasswordForm.password.value;
		var newpass = document.changepasswordForm.newpassword.value;
		var rnewpass = document.changepasswordForm.rnewpassword.value;

		if (pass.length === 0 || newpass.length === 0 || rnewpass.length === 0) {
			alert("Please fill all the password fields.");
			return false;
		}

		if (!(pass.length >= 8 && pass.length <= 12) || !(newpass.length >= 8 && newpass.length <= 12) || !(rnewpass.length >= 8 && rnewpass.length <= 12)) {
			alert("Password should be between 8 and 12 characters.");
			return false;
		}

		var regex = /^(?=.*\d)(?=.*[a-zA-Z])(?=.*[\W_]).{8,}$/;
		if (!regex.test(pass) || !regex.test(newpass) || !regex.test(rnewpass)) {
			alert("Password must contain letters, numbers, and special characters.");
			return false;
		}

		if (newpass !== rnewpass) {
			alert("New password and confirmation do not match.");
			return false;
		}

		alert("Password change submitted successfully.");
		return true;
	}
</script>
</head>
<body>

<div class="card-container">
    <h3 class="text-center mb-4">Change Password</h3>
    <div class="scrollable-container">
        <form name="changepasswordForm" method="post" onsubmit="return regvalidate();">
            <div class="form-group">
                <label class="form-label">Old Password</label>
                <input type="password" class="form-control" name="password" placeholder="Enter old password">
            </div>
            <div class="form-group">
                <label class="form-label">New Password</label>
                <input type="password" class="form-control" name="newpassword" placeholder="Enter new password">
            </div>
            <div class="form-group">
                <label class="form-label">Confirm New Password</label>
                <input type="password" class="form-control" name="rnewpassword" placeholder="Retype new password">
            </div>
            <div class="form-buttons">
                <input type="submit" class="btn btn-primary" value="Submit">
                <input type="reset" class="btn btn-secondary" value="Reset">
            </div>
        </form>
    </div>
</div>

</body>
<%@include file="includes/Footer.jsp"%>
</html>
