rule RedDelta_loader
{
	meta:
		copyright = "Intezer Labs"
		author = "Intezer Labs"
		reference = "https://www.intezer.com"
	strings:
        $str1 = "DotNetLoader"
        $str2 = "clipboardinject"
        $str3 = "InjectShellCode"
        $str4 = "WMIBackdoor"
	condition:
		3 of them
}

rule RedDelta_vaccine
{
	meta:
		copyright = "Intezer Labs"
		author = "Intezer Labs"
		reference = "https://www.intezer.com"
	strings:
		$a1 = { 4C [7] 48 [7] 48 [6] E8 [4] 0F B6 [1] 85 [1] 0F 84 [4] 48 [6] 48 [4] E8 [4] 9? 48 [4] 48 [7] E8 [4] 9? 48 [4] E8 [4] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] 48 [7] 48 [7] E8 [4] E8 [4] 48 [6] 48 [7] E8 [4] C6 [7] C6 [7] C6 [7] C6 [7] E8 [4] 48 [7] 48 [7] E8 [4] E8 [4] 48 [7] E8 [4] 48 [4] E8 [4] 48 [7] 48 [2] 33 [1] B9 [4] F3 [1] E8 [4] 4C [4] BA [4] 48 [7] E8 [4] B8 [4] 48 [3] 0F BE [6] 85 [1] 74 [1] 48 [7] 48 [7] E8 [4] 89 }
		$a2 = { 0F 10 [2] 0F 29 [3] F2 [4] F2 [5] 48 [3] 48 [2] 45 [2] 48 [4] FF 5? [1] 48 [3] 48 [2] FF 5? [1] 48 [3] 48 [2] FF 5? [1] BF [4] 48 [6] FF 1? [4] 9? 48 [6] FF 1? [4] 9? 48 [6] FF 1? [4] 9? 48 [6] FF 1? [4] 9? 48 [3] FF 1? [4] 9? 48 [6] FF 1? [4] 8B [1] 48 [6] 48 [2] E8 [4] 48 [7] 48 [6] 5? 5? 5? C3 }
		$a3 = { 48 [7] 48 [2] 33 [1] B9 [4] F3 [1] 48 [7] 48 [2] 33 [1] B9 [4] F3 [1] B8 [4] 66 [7] B8 [4] 66 [7] 48 [6] 48 [7] E8 [4] 48 [7] 48 [7] E8 [4] 48 [7] E8 [4] 48 [6] 48 [7] E8 [4] 48 [6] 48 [7] E8 [4] 48 [6] 48 [7] E8 [4] 48 [7] 48 [7] E8 [4] 48 [2] 48 [7] E8 [4] 48 [7] E8 [4] 48 [7] E8 [4] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] 48 [7] 48 [7] E8 [4] 48 [7] E8 [4] C7 [7] 48 [8] 41 [5] 4C [2] 33 [1] 33 [1] FF 1? [4] 89 [3] 48 [4] 48 [7] B8 [4] 48 [7] 48 [2] 48 [6] 48 [3] 48 [2] E8 [4] 48 [7] 48 [7] 48 [4] 48 [7] E8 [4] 8B [3] 89 [3] 48 [4] 48 [4] 41 [5] 4C [2] 33 [1] 33 [1] FF 1? [4] 0F B6 [3] 85 [1] 0F 85 [4] 48 [4] 48 [7] 48 [8] 48 [4] 48 [7] 48 [4] 66 [4] 75 }
		$a4 = { 48 [3] 48 [2] 83 [2] FF 5? [1] 48 [3] 48 [2] 33 [1] FF 5? [1] B8 [4] 66 [3] 48 [6] E8 [4] 48 [3] 0F 10 [2] 0F 29 [2] F2 [4] F2 [4] 48 [3] FF 1? [4] 9? 0F 10 [2] 0F 29 [2] F2 [4] F2 [4] 48 [3] FF 1? [4] 9? 0F 10 [2] 0F 29 [3] F2 [4] F2 [5] 48 [3] 48 [2] 48 [3] 48 [4] 48 [3] 48 [4] C7 [7] 48 [3] 48 [4] 48 [4] 48 [4] 41 [5] 4C [3] 48 [6] FF 9? [4] 89 [2] 48 [3] FF 1? [4] 9? 48 [3] FF 1? [4] 9? 48 [3] FF 1? [4] 83 [3] 7D [1] 48 [6] 48 [4] E8 [4] 8B [2] 48 [2] E8 [4] 48 [3] 48 [2] 74 }
		$a5 = { 4C [7] 48 [7] 48 [6] E8 [4] 0F B6 [1] 85 [1] 0F 84 [4] 48 [6] 48 [4] E8 [4] 9? 48 [4] 48 [7] E8 [4] 9? 48 [4] E8 [4] E8 [4] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] 48 [7] 48 [7] E8 [4] E8 [4] 48 [6] 48 [7] E8 [4] E8 [4] C6 [7] C6 [7] C6 [7] C6 [7] E8 [4] 48 [7] 48 [7] E8 [4] E8 [4] 48 [7] E8 [4] 48 [4] E8 [4] 48 [7] 48 [2] 33 [1] B9 [4] F3 [1] E8 [4] 4C [4] BA [4] 48 [7] E8 [4] E8 [4] B8 [4] 48 [3] 0F BE [6] 85 [1] 74 [1] 48 [7] 48 [7] E8 [4] 89 }
		$a6 = { 48 [4] 48 [4] 48 [4] 5? 48 [7] 48 [6] 48 [6] 48 [2] 48 [6] B8 [4] 48 [2] 66 [3] 48 [3] 48 [3] 80 7? [3] 48 [3] 75 [1] 48 [3] C7 [7] 48 [4] 44 [3] 33 [1] 4C [3] 33 [1] FF 1? [4] 48 [3] FF 1? [4] 33 [1] 48 [6] 48 [2] 66 [4] 33 [1] 48 [4] 48 [4] 89 [3] 66 [4] FF 1? [4] 48 [6] FF 1? [4] 8B [5] 48 [6] F2 [7] 89 [2] 0F B7 [5] 66 [3] 0F B6 [5] 88 [2] 8B [5] 89 [2] 0F B7 [5] 66 [3] 0F B6 [5] F2 [4] F2 [7] 88 [2] F2 [4] FF 1? [4] 48 [2] 48 [3] 48 [3] FF 1? [4] 8D [2] 33 [1] FF D? 89 [2] 85 [1] 79 }
		$a7 = { 4C [7] 48 [7] 48 [6] E8 [4] 0F B6 [1] 85 [1] 0F 84 }
		$b8 = { 4C [7] 48 [7] 48 [6] E8 [4] 0F B6 [1] 85 [1] 0F 84 [4] 48 [6] 48 [4] E8 [4] 9? 48 [4] 48 [7] E8 [4] 9? 48 [4] E8 [4] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] C6 [7] 48 [7] 48 [7] E8 [4] E8 [4] 48 [6] 48 [7] E8 [4] C6 [7] C6 [7] C6 [7] C6 [7] E8 [4] 48 [7] 48 [7] E8 [4] E8 [4] 48 [7] E8 [4] 48 [4] E8 [4] 48 [7] 48 [2] 33 [1] B9 [4] F3 [1] E8 [4] 4C [4] BA [4] 48 [7] E8 [4] B8 [4] 48 [3] 0F BE [6] 85 [1] 74 }
		$a9 = { 80 7? [3] 48 [3] 75 [1] 48 [3] C7 [7] 48 [4] 44 [3] 33 [1] 4C [3] 33 [1] FF 1? [4] 48 [3] FF 1? [4] 33 [1] 48 [6] 48 [2] 66 [4] 33 [1] 48 [4] 48 [4] 89 [3] 66 [4] FF 1? [4] 48 [6] FF 1? [4] 8B [5] 48 [6] F2 [7] 89 [2] 0F B7 [5] 66 [3] 0F B6 [5] 88 [2] 8B [5] 89 [2] 0F B7 [5] 66 [3] 0F B6 [5] F2 [4] F2 [7] 88 [2] F2 [4] FF 1? [4] 48 [2] 48 [3] 48 [3] FF 1? [4] 8D [2] 33 [1] FF D? 89 [2] 85 [1] 79 [1] 45 [2] 48 [4] 33 [1] 48 [4] 48 [4] E8 [4] 44 [3] 48 [6] 48 [4] E8 [4] 8B [2] 48 [4] E8 [4] 33 [1] E9 }
		$a10 = { 48 [7] E8 [4] 48 [7] 48 [7] 48 [2] 48 [7] FF 5? [1] 48 [11] 48 [7] E8 [4] 48 [7] 48 [6] FF 1? [4] 48 [7] 48 [2] 48 [7] 4C [7] 48 [2] 48 [7] 48 [7] FF 9? [4] 89 [3] 83 [4] 0F 8D }
		$b11 = { 48 [7] E8 [4] 48 [7] 48 [7] 48 [2] 48 [7] FF 5? [1] 0F B6 [3] 85 [1] 74 [1] 48 [7] E8 [4] 48 [7] 48 [6] FF 1? [4] 48 [7] 48 [2] 48 [7] 48 [7] 4C [2] 41 [5] 48 [2] 48 [7] 48 [7] FF 9? [4] 89 [3] EB }
		$a12 = { 80 7? [3] 48 [3] 75 [1] 48 [3] C7 [7] 48 [4] 44 [3] 33 [1] 4C [3] 33 [1] FF 1? [4] 48 [3] FF 1? [4] 33 [1] 48 [6] 48 [2] 66 [4] 33 [1] 48 [4] 48 [4] 89 [3] 66 [4] FF 1? [4] 48 [6] FF 1? [4] 8B [5] 48 [6] F2 [7] 89 [2] 0F B7 [5] 66 [3] 0F B6 [5] 88 [2] 8B [5] 89 [2] 0F B7 [5] 66 [3] 0F B6 [5] F2 [4] F2 [7] 88 [2] F2 [4] FF 1? [4] 48 [2] 48 [3] 48 [3] FF 1? [4] 8D [2] 33 [1] FF D? 89 [2] 85 [1] 79 }
		$b13 = { 0F 10 [5] 0F B6 [5] 48 [3] 48 [3] 0F 11 [2] 88 [2] FF 1? [4] 33 [1] 48 [4] 4C [6] 48 [6] 44 [3] FF D? 89 [2] 85 [1] 79 }

	condition:
		6 of them
}

rule RedDelta_c2
{
	meta:
		copyright = "Intezer Labs"
		author = "Intezer Labs"
		reference = "https://www.intezer.com"
	strings:
		$str1 = "update.flach.cn"
        $str2 = "update.flach.com.cn"
        $str3 = "aHR0cDovL3VwZGF0ZS5mbGFjaC5jbg=="
        $str4 = "www.flach.cn"
        $str5 = "159.138.84.217"
        $str6 = "update.careerhuawei.net"
        $str7 = "aHR0cDovL3VwZGF0ZS5jYXJlZXJodWF3ZWkubmV0Ojgx"

	condition:
		any of them
}