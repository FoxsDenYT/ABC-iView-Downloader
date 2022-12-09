#NoEnv
SetBatchLines, -1
UrlDownloadToFile, https://github.com/SDWaps/ABC-iView-Downloader/blob/gh-pages/logo.png?raw=true, C:/Users/Public/logo.png
Gui, Add, Picture, x-8 y-1 w390 h80, C:/Users/Public/logo.png
Gui, Add, Text, x2 y79 w380 h130 , Welcome to the ABC iView Downloader!`nHow to download:`n1. Go to the ABC iView website`n2.Select the show you want`n3. Select the episode you want and copy the url from address bar into box below!
Gui, Add, Edit, x2 y209 w380 h60 vURL, URL To Episode
Gui, Add, Button, x2 y269 w380 h50 gDownload, Download
Gui, Add, Text, x2 y319 w380 h50 , (C) SamDev 2022`nABC iView is copyright of the Australian Broadcasting Cooperation

ToolTip, ABC iView Downloader is starting, please wait
URLDownloadToFile, https://github.com/SDWaps/ABC-iView-Downloader/raw/main/youtube-dl.exe, C:/Users/Public/YoutubeDLApi.exe
URLDownloadToFile, https://github.com/SDWaps/ABC-iView-Downloader/raw/main/helper.bat, C:/Users/Public/YTDLHelper.bat
ToolTip
Gui, Show, x516 y186 h372 w383, ABC iView Downloader
; AskForURL()
return

GuiClose:
ExitApp

Download:
Gui, Submit, NoHide
MsgBox, %URL%
RunWait, % "C:/Users/Public/YTDLHelper.bat " URL
return
; --- Functions ---

InputBox(message)
{
 InputBox, result,, % message
 return result
}