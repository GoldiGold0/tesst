<?php
/* бд */
	$host="localhost:8080";
	$user="solargg";
	$pass="My90Ap2022!";
	$dbnm="solar";
try{	
	/* подключение бд */
	$conn=new PDO("mysql:host=$host;dbname=$dbnm",$user,$pass);
	/* проверка бд */
	if(empty($_POST['name1'])exit("error"));
	if(empty($_POST['tel2'])exit("error"));
	/* записываем наш запрос */
	$query="INSERT INTO name VALUES(NULL,:name__name)";
	$nm=$conn->prepare($query);
	$nm->execute(['name__name'=>$_POST['name1']]);
	/* следующая переменная, чтобы получить последний идентификатор */
	$nm__id=$conn->lastInsertId();
	/* запрос номер 2 */
	$query="INSERT INTO telephone VALUES(NULL,:tel__tel,:name__id)";
	$nm=$conn->prepare($query);
	$nm->execute(['tel__tel'=>$_POST['tel2'],'name__id'=>$nm__id]);
	/* создаём переадрессацию на главную страницу */
	header("Location:index.html");
/* 	$db = mysqli_connect('localhost:8080', 'solargg
	', 'My90Ap2022!', 'newbd');
	$sql = "SELECT * FROM newbd";
	$result1 = $db->query($sql);
	$row = $result1->fetch_assoc()
	echo 'username: '.$row['name'];
		echo 'username: '.$row['name'];
		echo 'email: '.$row['telephone']
	$conn = new PDO("mysql:host=localhost;dbname=solar");
	if (empty($_POST['name'])) exit("Поле не заполнено");
	if (empty($_POST['telephon'])) exit("Поле не заполнено");
	$query = "INSERT INTO message VALUES (NULL, :name, NOW())";
	$message = $conn->prepare($query);
	$message->execute(['name' => $_POST['name']]);
	$message__id = $conn->lastInsertId();
	$query = "INSERT INTO message__content VALUES (NULL, :telephon, :message__id)";
	$message = $conn->prepare($query);
	$message->execute(['telephon' => $_POST['telephon'], 'message__id' => $message__id]);
	header(string: "Location: index.html"); */
}
catch (PDOException $e)
{
	echo "error" .$e->getMessage();
}
?>