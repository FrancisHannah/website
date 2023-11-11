<?php
   include 'connection.php';
   header('Content-type: application/json');


   $fullname = $_POST['fullname'];
   $nationality = $_POST['nationality'];
   $gender = $_POST['gender'];
   $age = $_POST['age'];
   $mobile_no = $_POST['mobile_no'];
   $body_temp = $_POST['body_temp'];
   $diagnosed = $_POST['diagnosed'];
   $encounter = $_POST['encounter'];
   $vaccinated = $_POST['vaccinated'];
 
 
 if (preg_match("/^[a-zA-z]+[a-zA-z]*$/", $fullname)) {
   die("Please enter a real name like this -Firstname Lastname-");
 }

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