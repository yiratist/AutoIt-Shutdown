$Minuten = InputBox("Wie lange bis zum Shutdown?", "Wie viele Minuten?")
$Sekunden = InputBox("Wie lange bis zum Shutdown?", "Wie viele Sekunden?")
$Entscheidung = MsgBox(1, "Shutdown", "Shutdown in " & $Minuten & " Minuten und " & $Sekunden & " Sekunden?")
If $Entscheidung = 2 Then
	Exit
EndIf
$Minuten *= 60000
$Sekunden *= 1000
Sleep($Minuten + $Sekunden)
Shutdown(1)
