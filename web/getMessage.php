<?
try {
     $dbh = new PDO("sqlite:/home/root/hope/hope.db");
    }
catch (PDOException $e)
    {
     echo $e->getMessage();
    }

$id = isset($_GET['id']) ? $_GET['id'] : 0;

$sql = "select * from messages_t where id > " . $id;

$rows = $dbh->query($sql);

$result = array();

foreach ($rows as $row)
{

# $id['id'] = $row['id'];
# $message['message'] = $row['message'];
#

$v['id'] = $row['id'];
$v['message'] = $row['message'];

array_push($result, $v);

}

$json = json_encode($result);
print $json;

$db = null;
