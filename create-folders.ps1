#Get Folder names from the mainfolder.txt file
Get-Content "$PSScriptRoot\mainfolder.txt" | ForEach-Object {
   

   #folder name
    $name = $_  
 

     # Create the name folder and copy excel file
    $nameFolder = New-Item -ItemType Directory -Path "$PSScriptRoot\$name" -Force


#Get subfolder names from the subfolders.txt file
   Get-Content "$PSScriptRoot\subfolders.txt" | ForEach-Object {
       $sub = $_

  
       # Create subfolders
       New-Item -ItemType Directory -Path "$nameFolder\$sub" -Force
   }
          
}


