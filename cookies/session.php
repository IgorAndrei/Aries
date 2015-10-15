<?php
// Establishing Connection with Server by passing server_name, user_id and password as a parameter
$connection = mysql_connect("localhost", "root", "");
// Selecting Database
$db = mysql_select_db("sga", $connection);
mysql_query("SET NAMES 'utf8'");

session_start();// Starting Session
if (!isset($_SESSION['CREATED'])) {
    $_SESSION['CREATED'] = time();
} else if (time() - $_SESSION['CREATED'] > 1800) {
    // session started more than 30 minutes ago
    session_regenerate_id(true);    // change session ID for the current session and invalidate old session ID
    $_SESSION['CREATED'] = time();  // update creation time
}
// Storing Session
$user_check=$_SESSION['login_user'];
// SQL Query To Fetch Complete Information Of User
$ses_sql=mysql_query("select a.nombres,a.apellidos,a.ul_inicio,c.nombre_competencia,c.nivel,d.nombre_carrera,e.nombre_plan,f.nombre_tipo_usuario from user as A
 inner join carrera_competencia as B on a.id_carrera = B.id_carrera inner join competencias as C on c.id=b.id_competencia 
inner join carrera as D on a.id_carrera = D.id and D.id=B.id_carrera inner join plan as e on a.id_plan=e.id  inner join tipo_usuario as f on a.tipo_usuario = f.id  WHERE a.usuario='$user_check'",$connection); 

$row = mysql_fetch_assoc($ses_sql);
$login_session =$row['nombres'];
$login_session1=$row['apellidos'];
$login_session2 =$row['ul_inicio'];
$login_session3 =$row['nombre_competencia'];
$login_session4 =$row['nivel'];
$login_session5 =$row['nombre_carrera'];
$login_session6 =$row['nombre_plan'];
$login_session7 =$row['nombre_tipo_usuario'];

if(!isset($login_session)){
mysql_close($connection); // Closing Connection
header('Location: index.php'); // Redirecting To Home Page
}
?>