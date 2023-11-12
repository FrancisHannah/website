<?php
   $dbhost = 'localhost';
	$dbname = 'diagnosticsdb';
	$dbusername = 'root';
	$dbpassword = '';
	
	$connection = mysqli_connect($dbhost,$dbusername,$dbpassword,$dbname);
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

   if (!preg_match ('"^([a-zA-Z]+\s)*[a-zA-Z]+$"', $fullname) ) {  
      die ('Please enter only alphabets!');
   } 

   if (!preg_match ('"^([a-zA-Z]+\s)*[a-zA-Z]+$"', $nationality) ) {  
      die ('Please enter only alphabets!');
   } 

   if (!preg_match ('"^([a-zA-Z]+\s)*[a-zA-Z]+$"', $gender) ) {  
      die ('Please enter only alphabets!');
   } 

   if (!is_numeric ($age) ) {  
      die ('Please enter only numbers!');
   } 

   if (!is_numeric ($body_temp) ) {  
      die ('Please enter only numbers!');
   } 

   if (!is_numeric ($mobile_no) ) {  
      die ('Please enter only numbers!');
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