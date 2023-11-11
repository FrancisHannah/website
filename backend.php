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

//checks if form is not empty
if (empty($body_temp) || empty($diagnosed) || empty($vaccinated) || empty($encounter)) {
    die ("Please don't leave any forms blank!");
} 

//checks if name field only contains alphabet
if (preg_match ('"^\d*$"', $name) ) {  
    die ('Please enter only alphabets!');
} 
?>
