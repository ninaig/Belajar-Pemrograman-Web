<?php
if(isset($_POST['forproses'])) 
{
            $angka=$_POST['txtAngka'];
            function faktorial($angka)
			{ 
            if($angka<=1)
						{
							$hasil=1;
							return $hasil;
						}
							elseif($angka>1)
							{
							for($i=1; $i<=$angka; $i++)
								{
								$hasil=$angka * faktorial($angka-1);
								}
								return $hasil;
							}
			}
	
         echo "Angka yang dimasukkan :".$angka."<br>";
		echo "Faktorial dari "." ".$angka." "."adalah :"." ".faktorial($angka);

}
?>