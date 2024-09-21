'GET DIRECTORY
Dim fso: set fso = CreateObject("Scripting.FileSystemObject")
Dim CurrentDirectory : CurrentDirectory = fso.GetAbsolutePathName(".")
Dim filePath : filePath = fso.BuildPath(CurrentDirectory, "bytebeat.wav")
Set fso = nothing

'CREATE MEDIA PLAYER INSTANCE
Dim soundPlayer
Set soundPlayer = CreateObject("WMPlayer.OCX")
'PLAY AUDIO
soundPlayer.URL = filePath 
soundPlayer.controls.play 
While soundPlayer.playState <> 1
  WScript.Sleep 100
Wend

'CLOSE FILE AND PLAYER
soundPlayer.close
Set soundPlayer = nothing
