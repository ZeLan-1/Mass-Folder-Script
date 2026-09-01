
Get-Content "$PSScriptRoot\names.txt" | ForEach-Object {
    $name = $_
    $excelfile = "$PSScriptRoot\names.xlsx"


     # Create the name folder
    $nameFolder = New-Item -ItemType Directory -Path "$PSScriptRoot\$name" -Force


   Get-Content "$PSScriptRoot\sub.txt" | ForEach-Object {
       $sub = $_

  
       # Create subfolders
       New-Item -ItemType Directory -Path "$nameFolder\$sub" -Force
   }
          
}
  

