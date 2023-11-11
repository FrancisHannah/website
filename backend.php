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

if (validate_number($mobile_no) == false) {
    die ('Please enter valid phone number!');
}

function validate_number ($mobile_no) {
    $filtered_number = filter_var($mobile_no, FILTER_SANITIZE_NUMBER_INT);
    $number_tocheck = str_replace("-", "", $filtered_number);

    if (strlen($number_tocheck) < 10 || strlen($number_tocheck) > 14) {
        return false;
    } else {
        return true;
    }
}


?>
