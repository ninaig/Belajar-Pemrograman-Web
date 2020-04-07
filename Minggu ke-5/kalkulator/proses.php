<?php
if(isset($_POST['proses']))
{ 
	
	$a = $_POST['a'];   
	$b = $_POST['b'];
	$opsi = $_POST['opsi'];
	
		if($opsi=='tambah')
		{
			$c = $a + $b; //rumus pertambahan 
			echo"
			Hasil : <br>
			$a + $b = $c 
			";
		}
		elseif($opsi=='kurang') 
		{
			$c = $a - $b; //rumus pengurangan 
			echo"
			Hasil : <br> 
			$a - $b = $c
			"; 
		}
		elseif($opsi=='kali')
		{
			$c = $a * $b; //rumus perkalian
			echo"
			Hasil : <br>
			$a x $b = $c
			";
		}
		elseif($opsi=='bagi')
		{
			$c = $a / $b; //rumus pembagian
			echo"
			Hasil : <br>
			$a : $b = $c
			";
		}
		else
		{
			echo"Anda belum memilih operasi";
		}
		
}



?>