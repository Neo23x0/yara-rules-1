rule IPStorm
{
	meta:
		author = "Intezer"
		date = "2020-10-01"
	strings:
		$package1 = "storm/backshell"
		$package2 = "storm/filetransfer"
		$package3 = "storm/scan_tools"
		$package4 = "storm/malware-guard"
		$package5 = "storm/avbypass"
		$package6 = "storm/powershell"
		$lib2b = "libp2p/go-libp2p"
		
	condition:
		4 of ($package*) and $lib2b
}