# Step 1: Create a secret folder in the Pictures folder

$hiddenFolderPath = [System.IO.Path]::Combine([Environment]::GetFolderPath('MyPictures'), 'SecretFolder')
New-Item -Path $hiddenFolderPath -ItemType Directory -Force -ErrorAction SilentlyContinue

# Hide the folder
$hiddenFolderPathAttributes = [System.IO.FileAttributes]::Hidden
Set-ItemProperty -Path $hiddenFolderPath -Name Attributes -Value $hiddenFolderPathAttributes


# Step 2: Download the image and save it to the secret folder

$imageUrl = "https://i.ytimg.com/vi/0vxCFIGCqnI/maxresdefault.jpg"
$imagePath = [System.IO.Path]::Combine($hiddenFolderPath, 'maxresdefault.jpg')
Invoke-WebRequest -Uri $imageUrl -OutFile $imagePath


# Step 3: Open the browser and go to google.com

Start-Process "https://www.youtube.com/watch?v=xm3YgoEiEDc"


# Step 4: Save this script as a .txt file in the same hidden folder

$scriptPath = $MyInvocation.MyCommand.Definition
$scriptName = [System.IO.Path]::GetFileName($scriptPath)
$scriptDestination = [System.IO.Path]::Combine($hiddenFolderPath, $scriptName + ".txt")
Copy-Item -Path $scriptPath -Destination $scriptDestination

# HH	HH  EEEEEEEE  LL	LL          OOOO    
# HH	HH  EE	      LL	LL	  OO	OO  
# HH	HH  EE        LL	LL	 OO	 OO 
# HHHHHHHH  EEEEEE    LL	LL	OO	  OO
# HH	HH  EE        LL	LL	 OO	 OO 
# HH	HH  EE        LL	LL	  OO	OO  
# HH	HH  EEEEEEEE  LLLLLLLL  LLLLLLLL    OOOO    