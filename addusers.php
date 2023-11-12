<?php
   include 'connection.php';
   header('Content-type: application/json');

/*    if (empty($_POST['firstname']))
   {
      die("First name is Emtpy!");
   }

   if (empty($_POST['lastname']))
   {
      die("Last name is Emtpy!");
   }

   if (empty($_POST['email']))
   {
      die("email name is Emtpy!");
   } */
   
   if (preg_match("/^[a-zA-z]+[a-zA-z]*$/", $fullname)) {
      die("Please enter a real name like this -Firstname Lastname-");
    }


   $fullname = $_POST['fullname'];
   $nationality = $_POST['nationality'];
   $gender = $_POST['gender'];
   $age = $_POST['age'];
   $mobile_no = $_POST['mobile_no'];
   $body_temp = $_POST['body_temp'];
   $diagnosed = $_POST['diagnosed'];
   $encounter = $_POST['encounter'];
   $vaccinated = $_POST['vaccinated'];

   $result = array(
      "status"=>"error",
   );
   

   if (mysqli_query(
      $connection,
      "call addusers('" . $fullname .
       "','" . $nationality . "','". $gender ."','". $age ."','". $mobile_no ."','". $body_temp ."','". $diagnosed ."','" . $encounter ."','" . $vaccinated ."')"))
   {
   $result = array(
      "status"=>"ok"
   );
   }

   //close the database
   mysqli_close($connection);

   echo json_encode($result);

?>