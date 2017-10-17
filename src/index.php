<?php

$myfilename = ".txt";
$myfilename = uniqid() . $myfilename;

$myfile = fopen("./files/" . $myfilename, "w") or die("Unable to open file!");
$txt = "Hello ".  $myfilename;
fwrite($myfile, $txt);
fclose($myfile);

echo $txt;
?> 
