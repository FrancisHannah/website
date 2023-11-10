<?php
$name = $_POST['name'];
$nationality = $_POST['nationality'];
$gender = $_POST['gender'];
$age = $_POST['age'];
$mobile_no = $_POST['mobile_no'];
$body_temp = $_POST['body_temp'];
$diagnosed = $_POST['diagnosed'];
$encounter = $_POST['encounter'];
$vaccinated = $_POST['vaccinated'];



if (preg_match("/^[a-zA-z]+[a-zA-z]*$/", $name)) {
  die("Please enter a real name like this -Firstname Lastname-");
}


echo "$name <br> $nationality <br> $gender <br> $age <br> $mobile_no <br> $body_temp<br> $diagnosed <br> $encounter <br> $vaccinated <br>";
?>
