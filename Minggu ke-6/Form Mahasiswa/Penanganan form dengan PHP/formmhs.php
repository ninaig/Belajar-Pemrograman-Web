<html> 
<head> 
	<title>Form Mahasiswa</title>   
	<link rel='stylesheet' type='text/css' href='formmhs.css'>
</head> 

<body>
<form method= 'POST' action='formmhs.php' class='form'> 
	<h1>Form Mahasiswa </h1>
	<br> 
	<br> 
		<div class='container'>
		<td>NIM</td>
		<input type='text' name='nim' placeholder='Masukkan NIM' id='nim'>
		</div>
	<br>
		<div class='container'> 
		<td>Program Studi</td> 
		<select name='programstudi' class='select'>	 
			<option name='programstudi' >-- Pilih Program Studi --</option>
			<option name='programstudi' value='Teknik Informatika S1'>Teknik Informatika S1</option>
			<option name='programstudi' value='Sistem Informasi S1'>Sistem Informasi S1</option>
			<option name='programstudi' value='Teknik Informatika D3'>Teknik Informatika D3</option>
		</select>
		</div>
	<br>
		<div class='container'>
		<td>Nilai Tugas</td>
		<input type='text' name='tugas'  placeholder='Masukkan Nilai Tugas' id='tugas'>
		</div>
	<br>
		<div class='container'>
		<td>Nilai UTS	</td>
		<input type='text' name='uts' placeholder='Masukkan Nilai UTS' id='uts'>
		</div>  
	<br> 
		<div class='container'>  
		<td>Nilai UAS</td>  
		<input type='text' name='uas' placeholder='Masukkan Nilai UAS' id='uas'>
		</div > 
	<br> 
		<div class='container'>
		<td>Catatan Khusus</td> 
		<input type='checkbox' name='catatankhusus[]' id='catatankhusus1' value='Kehadiran >= 70%' />Kehadiran >= 70%<p>
		<p><input type='checkbox' name='catatankhusus[]' id='catatankhusus' value='Interaktif di Kelas' />Interaktif di Kelas</p>
		<p><input type='checkbox' name='catatankhusus[]' id='catatankhusus' value='Tidak Terlambat Mengumpulkan Tugas' />Tidak Terlambat Mengumpulkan Tugas</p>
		</div> 
	<br> 
		
		<input type='submit' name='prosesformmhs' value='Submit' id='input'>
	
		<div class='hasil'>
			 <?php include"prosesformmhs.php"; ?>   
		</div> 
</from>		
</head>
</html>
	
	