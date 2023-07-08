<?
   $gmtDate = gmdate("D, d M Y H:i:s");
   header("Expires: {$gmtDate} GMT");
   header("Last-Modified: {$gmtDate} GMT");
   header("Cache-Control: no-cache, must-revalidate");
   header("Pragma: no-cache"); 
   

    $host = "localhost:D:\SEJUDH\SIAPEN.FDB";
    $username = "SYSDBA";
    $password = "masterkey";


    $validador = 'a4830afd897f435ca57c94d2cd552d9f';
    $confirmador = 'b5b98a83cae3aedc0a5048142460d998';
    $pasta_recebe = '../teste/';

   
?>
