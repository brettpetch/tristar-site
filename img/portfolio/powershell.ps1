# on Windows Explorer, shift + right-click a directory and copy its path
# paste the path in $dir
$dir = "C:\Users\brett\OneDrive\Documents\bootstrap\img\portfolio"

# get all files in the directory
$images = Get-ChildItem $dir

# loop through every images
foreach ($img in $images) {
  # output file will be written in the same directory 
  # but with .webp extension instead of old extension
  $outputName = $img.DirectoryName + "\" + $img.BaseName + ".webp"

  # copy-paste the path to cwebp program 
  # and set its input and output parameters
  # more options https://developers.google.com/speed/webp/docs/cwebp
  C:\ProgramData\chocolatey\bin\cwebp.exe $img.FullName -o $outputName
}