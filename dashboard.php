<?php
session_start();
require_once "database.php";

//Jika user belum login dan membuka ini, maka langsung diarahkan ke halaman login
if(isset($_SESSION['email']) == 0){
    header('Location: login.php');
}

//Jika admin login, maka langsung diarahkan ke halaman dashboard admin
//Ubah e-mailnya jika ingin mengganti akun admin
if($_SESSION['email'] == 'dandygarda@gmail.com'){
    header('Location: admin_dash.php');
}

?>

<!DOCTYPE html>
<head>
    <title>Selamat Datang di Laundry OnLine</title>
</head>
<body>
    <h1>Selamat datang <?php echo $_SESSION['name']; ?></h1>

    <br>
    <a href="logout.php">Logout</a>
</body>