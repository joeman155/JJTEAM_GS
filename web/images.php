<html>
  <head>
    <title>Images</title>
    <link rel="stylesheet" href="images.css">

  <script src="jq/jquery-1.9.1.js"></script>
  <script src="jq/ui/jquery.ui.core.js"></script>
  <script src="jq/ui/jquery.ui.widget.js"></script>
  <script src="jq/ui/jquery.ui.mouse.js"></script>
  <script src="jq/ui/jquery.ui.button.js"></script>
  <script src="jq/ui/jquery.ui.position.js"></script>
  <script src="jq/ui/jquery.ui.effect.js"></script>
  <script src="jq/ui/jquery.ui.effect-slide.js"></script>
  <script src="jq/ui/jquery.ui.tabs.js"></script>

  </head>
<body>

<?
$directory = 'out/images';    //where the gallery images are located
 
$allowed_types=array('jpg','jpeg','gif','png');    //allowed image types
 
$file_parts=array();
$ext='';
$title='';
$i=0;
 
//try to open the directory
$dir_handle = @opendir($directory) or die("There is an error with your image directory!");
 
while ($file = readdir($dir_handle))    //traverse through the files
{
if($file=='.' || $file == '..') continue;    //skip links to the current and parent directories
 
$file_parts = explode('.',$file);    //split the file name and put each part in an array
$ext = strtolower(array_pop($file_parts));    //the last element is the extension
 
$title = implode('.',$file_parts);    //once the extension has been popped out, all that is left is the file name
$title = htmlspecialchars($title);    //make the filename html-safe to prevent potential security issues
 
$nomargin='';

echo "<ul>\n";
if(in_array($ext,$allowed_types))    //if the extension is an allowable type
{
if(($i+1)%4==0) $nomargin='nomargin';    //the last image on the row is assigned the CSS class "nomargin"
$cmd = 'convert ' . $directory . '/' . $file . ' -thumbnail 80x60 ' . $directory . '/thumbnails/' . $file; 

$thumbnail = $directory . '/thumbnails/' . $file;

if ( ! file_exists($thumbnail))
{
`$cmd`;
}

echo "  <li>\n";
echo '<a title="'.$title.'" href="'.$directory.'/'.$file.'" target="_blank">'.$title.'<img src="'.$directory.'/thumbnails/'.$file.'"/></a></div>';
echo "  </li>\n";
 
$i++;    //increment the image counter
}
}
echo "</ul>\n";
 
closedir($dir_handle);    //close the directory

?>
</body>
</html>
