<!-- databse name is : 'sample' and table name is : 'user' -->

<?php
$con= new mysqli('localhost','root','','sample')or die("Could not connect to mysql".mysqli_error($con));
?>
