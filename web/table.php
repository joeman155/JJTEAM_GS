<?

# CONFIGUIRATION
include "config.inc";

# PARAMETERS (phone GPS)
$v_table = $_REQUEST['table'];

# Get all the latest measurements
try {
     $dbh = new PDO("sqlite:" . $db_file);
    }
catch (PDOException $e)
    {
     echo $e->getMessage();
    }

# Get latest Ground Radio Stats
$sql = "select * from " . $v_table . " order by id asc";
$tabrows = $dbh->query($sql);

print "<table style=\"width: 800px;\">\n";
foreach ($tabrows as $row) {
print "<tr>\n";
foreach ($row as $cell) {
	print "   <td>";
	print $cell;
	print "   </td>\n";

}
print "</tr>\n";

}

print "</table>\n";
