<?
try {
     $dbh = new PDO("sqlite:/home/root/hope/hope.db");
    }
catch (PDOException $e)
    {
     echo $e->getMessage();
    }

$id = isset($_GET['id']) ? $_GET['id'] : 0;

$sql = "select * from messages_t where id > " . $id . " ORDER BY id ASC";

$rows = $dbh->query($sql);

$result = array();

foreach ($rows as $row)
{

$v['id'] = $row['id'];
$v['message'] = $row['message'];
$id = $row['id'];
`echo pushing $id >> /tmp/ids.txt`;

array_push($result, $v);

}

`echo END >> /tmp/ids.txt`;

$json = json_encode($result);
print $json;

$db = null;
