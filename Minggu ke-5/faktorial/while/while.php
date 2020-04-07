<html>
<head>  
	<title>Faktorial</title>  
	<link rel='stylesheet' type='text/css' href='while.css'>
</head>
 
<body> 
<form method= 'POST' action='while.php' class='form'>  
	<h1>Faktorial Menggunakan While</h1>
	<br>
	<br>
	<div class='container'>
	<td>Masukkan Angka<td>
	<td><input type='text' name='txtAngka' size='20' id='text'></td>
	</div>
	<br> 
	<br>
	
	<input type='submit' name='whileproses' value='Hasil' id='input'>
	
	<div class='hasil'>
		 <?php include"whileproses.php"; ?> 
	</div> 
</form> 
</body>
</html>
	