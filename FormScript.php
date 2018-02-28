<?php
$to = $_REQUEST['sendto'] ;
$from = $_REQUEST['email'] ;
$Name = $_REQUEST['name'] ;
$headers = "From: $from";
$subject = "Physician's Choice Website Application";

$fields = array();
$fields{"jobtitle"} = "jobtitle";
$fields{"jobresume"} = "jobresume";


$body = "Someone has submitted an online application:\n\n"; foreach($fields as $a => $b){ $body .= sprintf("%20s: %s\n",$b,$_REQUEST[$a]); }

$headers2 = "From: noreply@phychoice.com";
$subject2 = "Physician's Choice Website Application";
$autoreply = "Thank you for your application submission.  Please allow a few days for 
		your resume to be reviewed. A member of our staff will be in touch with
		you shortly.";


$send = mail($to, $subject, $body, $headers);
$send2 = mail($from, $subject2, $autoreply, $headers2);
if($send)
{header( "Location: http://www.phychoice.com/application_thankyou.asp" );}

?>

