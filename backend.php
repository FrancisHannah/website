<?php
$name = $_POST['name'];
if (empty($name)) {
  echo "Name is empty";
} else {
  echo "Your name is $name<br>";
}
$nationality = $_POST['nationality'];
if (empty($name)) {
  echo "Name is empty";
} else {
  echo "Your nationality is $nationality <br>";
}
?>