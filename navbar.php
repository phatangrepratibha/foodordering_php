<?php
session_start();
if(isset($_SESSION['loggedin']) && $_SESSION['loggedin']==true)
{
  $loggedin = true;
}
else{
  $loggedin = false;
}

if(isset($_SESSION['adminloggedin']) && $_SESSION['adminloggedin']==true)
{
   $adminloggedin= true;
}
else{

  $adminloggedin =false;
}

echo'
<html>
  <head>
  <link rel="stylesheet" href="mp.css">

        <ul>';
        if(!$adminloggedin){
            echo'<li><a href="home.php">Home</a></li>
            <li><a href="team.php">Team</a></li>
            <li><a href="menu.php">Menu</a></li>';
            if(!$loggedin)
            {
              echo'
              <li><a href="adminLogin.php">Admin Login</a></li>
              <li><a href="register.php">Register</a></li>
              <li><a href="login.php">Login</a></li>';
            }
            if($loggedin)
            {
              echo'
              <li><a href="logout.php">Log Out</a></li>';
            }
          }
            echo'
          
          </ul>
    </head>
</html>';


?>