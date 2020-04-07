<html>
<head> 
	<title>Hasil</title>
</head>
<body>
<h3 align="center">Hasil Nilai Akhir</h3>
<link rel='stylesheet' type='text/css' href='formmhs.css'>
</body>
	
<?php
if(isset($_POST['prosesformmhs']))
{
	$programstudi=$_POST['programstudi'];
	$nim=$_POST['nim'];
	$tugas=$_POST['tugas']; 
	$uts=$_POST['uts'];
	$uas=$_POST['uas'];
	
	$na = (0.4 * $tugas) + (0.3 * $uts) + (0.3 * $uas);
		if ($na > 84) 
		{
            $status = 'Lulus';
        } 
		elseif ($na > 70)
		{
            $status = 'Lulus';
        }  
		elseif ($na > 60)
		{
            $status = 'Lulus';
        } 
		elseif ($na > 50) 
		{
            $status = 'Tidak Lulus';
        }  
		else 
		{
            $status = "Tidak Lulus";
        }
		
		$data_catatankhusus = $_POST['catatankhusus'];
        $selected_catatankhusus = "";
        foreach ($data_catatankhusus as $catatankhusus) 
		{
            $selected_catatankhusus .= $catatankhusus . " <br> ";
        }
		
		echo "
	
		 <table border=3> 
            <thead>
                <tr>
                    <th>Program Studi</th>
                    <th>NIM</th> 
                    <th>Nilai Akhir</th>
                    <th>Status</th> 
                    <th>Catatan Khusus</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>$programstudi</td>
                    <td>$nim</td>
                    <td>$na</td>
                    <td>$status</td> 
                    <td>$selected_catatankhusus</td>
                </tr>
            </tbody>
        </table>
		";
 }
 ?>
 
</body>
</html>