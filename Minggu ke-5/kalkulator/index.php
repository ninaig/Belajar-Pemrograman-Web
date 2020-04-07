<html> 
<head> 
	<title>Kalkulator</title> 
	<link rel='stylesheet' type='text/css' href='style.css'>
</head>

<body>
<form method= 'POST' action='index.php' class='form'> 
	<h1>Kalkulator</h1>
	<input type='text'name='a' placeholder='Masukkan Bilangan 1' id='input'>
	<input type='text'name='b' placeholder='Masukkan Bilangan 2' id='input'>
	<select name='opsi' class='select'>	
		<option name='opsi' >-- Pilih Operasi --</option>
		<option name='opsi' value='tambah'>tambah (+)</option>
		<option name='opsi' value='kurang'>kurang (-)</option>
		<option name='opsi' value='kali'>kali (x)</option>
		<option name='opsi' value='bagi' >bagi (:)</option>
	</select>
	
	<input type='submit' name='proses' value='Hitung' id='input'>
	
	<div class='hasil'>
		<?php include"proses.php"; ?>   
	</div> 
</form> 
</body>
</html>

