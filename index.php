<?php
include('includes/database.php');
session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = trim($_POST['email']);
    $password = trim($_POST['password']);

    // Hash the entered password using SHA-256
    $hashedPassword = hash('sha256', $password);

    // Use parameterized query to prevent SQL injection
    $query = "SELECT * FROM users WHERE email=?";
    $stmt = $mysqli->prepare($query);

    if ($stmt) {
        $stmt->bind_param('s', $email);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result && $result->num_rows == 1) {
            $user = $result->fetch_assoc();
            $storedPassword = $user['password'];

            // Verify the entered password
            if (hash_equals($storedPassword, $hashedPassword)) {
                $dashboard_url = $user['dashboard_url'];
                $user_role = $user['type'];

                // Set session variables
                $_SESSION['username'] = $user['username'];
                $_SESSION['first_name'] = $user['first_name'];
                $_SESSION['email'] = $user['email'];
                $_SESSION['dashboard_url'] = $dashboard_url;
                $_SESSION['type'] = $user_role;

                // Redirect to the user's dashboard URL
                header("Location: " . trim($dashboard_url));
                exit();
            } else {
                $error_message = "Invalid password. Make sure you are entering the correct password.";
            }
        } else {
            $error_message = "Invalid email. Make sure you are entering the correct email address.";
        }

        $stmt->close();
    } else {
        die('Error in prepared statement');
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="includes/style.css">
    <style>
        .error-message {
            color: red;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-md-4 offset-md-4 form">
                <form action="index.php" method="post" enctype="multipart/form-data">

                    <center><img src="includes/default.png" width="250" height="250"></center>

                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="email" class="form-control" placeholder="Enter Email" name="email" autocomplete="off" required>
                    </div>

                    <div class="form-group">
                        <label>Password:</label>
                        <input type="password" class="form-control" placeholder="Enter Password" name="password" autocomplete="off" required>
                    </div>

                    <?php
                        if (isset($error_message)) {
                            echo "<center><strong><p class='error-message'>$error_message</p></strong></center>";
                        }
                    ?>

                    <div class="form-group">
                        <center><input type="submit" class="form-control button" name="add_submit" value="Login"></button></center>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>