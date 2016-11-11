$gui=GUICreate("EzShutdown by Mark42XLII",320,110)
GUICtrlCreateLabel("Choose an option",10,10)
$guiShutdownButton=GUICtrlCreateButton("Shutdown",10,30,100,50)
$guiRestartButton=GUICtrlCreateButton("Restart",110,30,100,50)
$guiSleepButton=GUICtrlCreateButton("Hibernate",210,30,100,50)
$guiAboutButton=GuiCtrlCreateButton("About",10,80,300,20)
GUISetState()
While 1
	$guiResult=GUIGetMsg()
	Select
		Case $guiResult=$guiShutdownButton
			RunWait(@ComSpec&" /c "&"%systemroot%\System32\shutdown.exe -s -t 1","",@SW_HIDE)
		Case $guiResult=$guiRestartButton
			RunWait(@ComSpec&" /c "&"%systemroot%\System32\shutdown.exe -r -t 1","",@SW_HIDE)
		Case $guiResult=$guiSleepButton
			RunWait(@ComSpec&" /c "&"%systemroot%\System32\rundll32.exe PowrProf.dll,SetSuspendState","",@SW_HIDE)
			ExitLoop
			Exit
		Case $guiResult=$guiAboutButton
			MsgBox(0, "About","EzShutdown"&@CRLF&""&@CRLF&"Simple tool to shutdown, restart or hibernate the computer using MS-DOS commands."&@CRLF&"Typing commands is boring, so this tool is a GUI to do it with ease."&@CRLF&""&@CRLF&"This program is licensed under GNU GPL v3. You can get one copy at https://www.gnu.org/licenses/gpl-3.0.txt")
		Case $guiResult = -3
			ExitLoop
			Exit
	EndSelect
WEnd