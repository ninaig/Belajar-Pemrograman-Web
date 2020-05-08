<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel='stylesheet' type='text/css' href='style.css'>
    <title>Login in PHP With Session</title>
</head>
<body style="background:#CCC;">
 
    <div class="container">
        <div class="row">
            <div class="col-lg-6 m-auto">
                <div class="card bg-dark mt-5">
                    <div class="card-title bg-primary text-white mt-5">
                        <h1>Login</h1>
                    </div>
 
                    <?php
                        if(@$_GET['Empty']==true)
                        {
                    ?>
                        <div class="alert-light text-danger text-center py-3"><?php echo $_GET['Empty'] ?></div>                                
                    <?php
                        }
                    ?>
 
 
                    <?php 
                        if(@$_GET['Invalid']==true)
                        {
                    ?>
                        <div class="alert-light text-danger text-center py-3"><?php echo $_GET['Invalid'] ?></div>                                
                    <?php
                        }
                    ?>
 
                    <div class="card-body">
                        <form action="process.php" method="post">
                        <input type='text'name='username' placeholder='Username' id='input'>
                    	<input type='password'name='password' placeholder='Password' id='input'>
                            <button class="submit" name="Login" id="inputlogin">Login</button>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
 
</body>
</html>