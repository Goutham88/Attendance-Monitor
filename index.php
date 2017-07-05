
<?php
//    include "includes/config.php";
//
//    if(isset($_POST['login'])){
//        $username= $_POST['username'];
//        $password= $_POST['password'];
//
//        $sql= "SELECT * FROM teacher WHERE username='$username' AND password='$password'";
//        $user = $db->query($sql);
//
//        $num_rows = $db->affected_rows;
//        if($num_rows>0){
//            session_start();
//            $_SESSION['username']=$username;
//            $_SESSION['msg']='Successfully Logged In';
//            header("location:interface.php?user=$username&msg='Successfully Logged In'");
//        }
//        else{
//            echo "<script>alert('Password or Username is not correct')</script>";
//        }
//
//    }
//?>


<!DOCTYPE html>
<html id="index" lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Attendance Monitoring System</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet" type="text/css">
  </head>
  <body>
  <?php
      if(isset($_GET['msg'])) {
          echo "<div class='alert alert-danger pull-left col-lg-6 col-lg-offset-3'><h4>".$_GET['msg']."</h4></div>";
      }
  ?>
    <div class="wrapper col-lg-4 pull-left" >
      <form class="form-signin" method="post" action="interface.php?msg='Successfully Logged In'">
        <h2 class="form-signin-heading">Teacher Login</h2>
        <input type="text" class="form-control" name="username" placeholder="User Name" required="" autofocus="" />
        <input type="password" class="form-control" name="password" placeholder="Password" required=""/>      
        <label class="checkbox">
          <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe">Remember me
        </label>
        <button name="login" class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
      </form>
    </div>

<!--    <div class="wrapper col-lg-4" id="attmon">-->
<!--      <img src="images/attmon1.png" width="400" height="450" />-->
<!--    </div>-->

    <div class="wrapper col-lg-4  pull-right " id="effect7">
      <form class="form-signin" method="post" action="user/check_in.php">
        <h2 class="form-signin-heading">Student Login</h2>
        <button name="check_in" class="btn btn-block btn-success" type="submit"><h4>Check In</h4></button>
      </form>

      <form class="form-signin" method="post" action="user/check_out.php">
          <button name="check_out" class="btn btn-block btn-success" name='submit' type="submit"><h4>Check Out</h4></button>
      </form>
    </div>


    <script src="js/jquery.min.js"></script> 
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>

