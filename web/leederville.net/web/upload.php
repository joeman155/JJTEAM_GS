<?
header("Access-Control-Allow-Origin: http://192.168.10.11");

if ($_FILES["file"]["error"] > 0)
  {
  echo "Error: " . $_FILES["file"]["error"] . "<br>";
  }
else
  {
  # echo "Upload: " . $_FILES["file"]["name"] . "<br>";
  $v_source_file = $_FILES["file"]["tmp_name"];
  $v_destination_file = "/home/joeman/public_html/bbb/tmp/";

  `cp $v_source_file $v_destination_file`;

  $v_file = basename($_FILES["file"]["tmp_name"]);
  echo "http://leederville.net/~joeman/bbb/tmp/" . $v_file;

  # echo "Type: " . $_FILES["file"]["type"] . "<br>";
  # echo "Size: " . ($_FILES["file"]["size"] / 1024) . " kB<br>";
  # echo "Stored in: " . $_FILES["file"]["tmp_name"];
  }
