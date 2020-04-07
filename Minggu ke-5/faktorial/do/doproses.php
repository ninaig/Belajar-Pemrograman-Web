<?php
if(isset($_POST['doproses'])) 
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
					$i=1;
					do
                        {
                            $hasil=$angka * faktorial($angka-1);
							$i++;
                        }
					while($i<=$angka);
                    return $hasil;
				}
			}
			
			echo "Angka yang dimasukkan :".$angka."<br>";
			echo "Faktorial dari "." ".$angka." "."adalah :"." ".faktorial($angka);
}
?>