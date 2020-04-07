<?php
if(isset($_POST['whileproses'])) 
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
                        while($i<=$angka)
							{
								$i++;
								$hasil=$angka * faktorial($angka-1);
							}
							return $hasil;
				}
			}
			echo "Angka yang dimasukkan :".$angka."<br>";
			echo "Faktorial dari "." ".$angka." "."adalah :"." ".faktorial($angka);
}
?>