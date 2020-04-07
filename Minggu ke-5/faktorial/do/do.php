<html>
<head> 
	<title>Faktorial</title>  
	<link rel='stylesheet' type='text/css' href='do.css'>
</head>
  
<body> 
<form method= 'POST' action='do.php' class='form'>  
	<h1>Faktorial Menggunakan Do While</h1>
	<br>
	<br> 
	<div class='container'>
	<td>Masukkan Angka</td>
	<td><input type='text' name='txtAngka' size='20' id='text'> </td>
	</div>
	<br>
	<br>
	
	<input type='submit' name='doproses' value='Hasil' id='input'>
	
	<div class='hasil'>
		 <?php include"doproses.php"; ?> 
	</div> 
</form> 
</body>
</html>
	