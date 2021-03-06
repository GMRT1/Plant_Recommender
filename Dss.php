<!doctype html>
<HTML>
<head>
<style>
body  { background-image:url(flower.jpg) ;  
	background-size:1400px 700px; 
        background-repeat: no-repeat;}
.res{text-align:center; margin-top:100px; font-weight: bold;font-size:30px; color:#009900; font-size:22pt}
.res2{text-align:center;  font-weight: bold;font-size:20px; color:#009900;}
.res3{text-align:center;  font-weight: bold;font-size:22px; color:#009900;padding:0px}
.res4{text-align:center;  font-weight: bold;font-size:22px; color:#009900;padding:0px; margin-top:50px; }
</style>
</head>
<body>
<?php
   $user='root';
    $pass='';
    $db='dss';
 $con= new mysqli('localhost',$user,$pass,$db) or die( "Could not connect to database " );

  $water=$_POST["water"];
   $light=$_POST["light"];
   $typee=$_POST["typee"];
   $fert =$_POST["fer"];
   $priority1=$_POST["pri1"];
   $priority2=$_POST["pri2"];
   $priority3=$_POST["pri3"];
  $pW = 1 ;
  $pL=1 ;
  $pT=1 ;
  $pF=1 ;
  $count=3;

   switch($priority1){
	case 'Light exposure': $pL+=3 ; break;
	case'Watering rate': $pW+=3 ; break ;
	case'Fertilizing rate':$pF+=3 ; break ;
	case 'Plant type':$pT+=3 ; break ; }


    switch($priority2){
    case 'Light exposure': $pL+=2 ; break;
    case'Watering rate': $pW+=2 ; break ;
    case'Fertilizing rate':$pF+=2 ; break ;
    case 'Plant type':$pT+=2 ; break ; }

 switch($priority3){
    case 'Light exposure': $pL++ ; break;
    case'Watering rate': $pW++ ; break ;
    case'Fertilizing rate':$pF++ ; break ;
    case 'Plant type':$pT++ ; break ; }

$p1 = "SELECT * FROM plant " ;
$result = mysqli_query($con, $p1);

        while ($row = mysqli_fetch_assoc($result)) {
            $plantN= $row['plant'];

            $pp=0 ;
            if ($row['io'] == $typee)
                $pp = $pp + $pT;
            if ($row['light exposure'] == $light)
                $pp = $pp + $pL;
            if ($row["water"] == $water)
                $pp = $pp + $pW;
            if ($row["fertilizer"] == $fert)
                $pp = $pp + $pF;

            $p21 = "UPDATE `plant` SET `w`= '$pp' where plant= '$plantN' " ;
            if (!mysqli_query($con, $p21))echo "??";
        }//end of while


        $p11 = "SELECT * FROM `plant` ORDER BY w DESC";
        $result2 = mysqli_query($con, $p11);
        $x=0  ;
        if (mysqli_num_rows($result2) > 0) {

            while ($row = mysqli_fetch_assoc($result2)) {
                if ($count == 3) {
                    print("<p class='res'> The Optimum value is: " . $row['plant'] ."</p>");
                    $x=$row['w'];
                }
                  else{
                      if($row['w']==$x)
			{
			  print("<p class='res3'> ,And " . $row['plant'] ."</p>");
                          continue; 
			 }
                        if($count==2)
				print("<p  class='res'> The Alternatives value are: </p>");
                    print("<p class='res2'>  " . $row['plant']. "</p>");
                      }

                $count = $count - 1;
                if($count <0 )break;

            }//end of while 
        }

        $q1= "UPDATE `plant` SET `w`=0 ";
        $result7 = mysqli_query($con, $q1);
       

  mysqli_close( $con );
  ?>
  </body>
  </HTML>
 