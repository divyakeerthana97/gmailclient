<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=<device-width>, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   
</head>

<style>
    /* .bg-image{
        background-image: url("https://previews.123rf.com/images/romastudio/romastudio1603/romastudio160300280/54088843-healthy-food-background-studio-photo-of-different-fruits-on-white-wooden-table-high-resolution-produ.jpg");
       
    }
     */

    /* Full-width inputs */

    input[type=text],
    input[type=password],
    input[type=email] {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        box-sizing: border-box;
    }

    /* Set a style for all buttons */

    button {
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 100%;
    }

    .admin{
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 10%;
        border-radius: 10px;
        

    }
    /* Add a hover effect for buttons */

    button:hover {
        opacity: 0.8;
    }

    /* Extra style for the cancel button (red) */

    .cancelbtn {
        width: auto;
        padding: 10px 18px;
        background-color: #f44336;
    }

    /* Center the avatar image inside this container */

    .imgcontainer {
        text-align: center;
        margin: 24px 0 12px 0;
    }

    /* Avatar image */

    img.avatar {
        width: 40%;
        border-radius: 50%;
    }

    /* Add padding to containers */

    .container {
        padding: 16px;
    }

    /* The "Forgot password" text */

    span.psw {
        float: right;
        padding-top: 16px;
    }

    /* Change styles for span and cancel button on extra small screens */

    @media screen and (max-width: 300px) {
        span.psw {
            display: block;
            float: none;
        }
        .cancelbtn {
            width: 100%;
        }
    }
</style>

<body class="bg-image">

        <div class="container">
            
                <p class="text-danger" style="text-align: center">${message}</p>      
        <title>Document</title>

    <h1 style="text-align: center;color: white">!!Welcome to Boomerang!!</h1>
   
    <br>
    <br>
    <br>
    <br>
    <form method="POST" action='/loginValidation' name="frmAddUser">

        <div class="imgcontainer">
            <!-- <img src="https://d47ro1qos1hnj.cloudfront.net/media/itemdetails/2017/Sep/1_1504264780.jpg"    height="250" width="150" alt="Avatar" class="avatar"> -->
        </div>

        <div class="container">
            


            <label for="Email">
                <b>Name</b>
            </label>
            <input type="text" placeholder="Name" name="name" required>


            <label for="psw">
                <b>Password</b>
            </label>
            <input type="password" placeholder="Enter Password" name="password" required>





            <button type="submit">Login</button>
            <!-- <label>
                <input type="checkbox" checked="checked" name="remember"> Remember me
            </label> -->
        </div>

        <!-- <div class="container"">
            <button type="button" class="cancelbtn">Cancel</button>
            <span class="psw">User
                <a href="registration.jsp">Registration</a>
            </span>
        </div> -->
    </form>
</body>

</html>