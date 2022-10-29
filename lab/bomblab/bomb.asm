
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 3f 00 00 	mov    0x3fd9(%rip),%rax        # 4fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 da 3e 00 00    	pushq  0x3eda(%rip)        # 4f00 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 db 3e 00 00 	bnd jmpq *0x3edb(%rip)        # 4f08 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	pushq  $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmpq 1020 <.plt>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	pushq  $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmpq 1020 <.plt>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	pushq  $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmpq 1020 <.plt>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	pushq  $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmpq 1020 <.plt>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	pushq  $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmpq 1020 <.plt>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	pushq  $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmpq 1020 <.plt>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	pushq  $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmpq 1020 <.plt>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	pushq  $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmpq 1020 <.plt>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	68 08 00 00 00       	pushq  $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmpq 1020 <.plt>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	68 09 00 00 00       	pushq  $0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmpq 1020 <.plt>
    10cf:	90                   	nop
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	68 0a 00 00 00       	pushq  $0xa
    10d9:	f2 e9 41 ff ff ff    	bnd jmpq 1020 <.plt>
    10df:	90                   	nop
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	68 0b 00 00 00       	pushq  $0xb
    10e9:	f2 e9 31 ff ff ff    	bnd jmpq 1020 <.plt>
    10ef:	90                   	nop
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	68 0c 00 00 00       	pushq  $0xc
    10f9:	f2 e9 21 ff ff ff    	bnd jmpq 1020 <.plt>
    10ff:	90                   	nop
    1100:	f3 0f 1e fa          	endbr64 
    1104:	68 0d 00 00 00       	pushq  $0xd
    1109:	f2 e9 11 ff ff ff    	bnd jmpq 1020 <.plt>
    110f:	90                   	nop
    1110:	f3 0f 1e fa          	endbr64 
    1114:	68 0e 00 00 00       	pushq  $0xe
    1119:	f2 e9 01 ff ff ff    	bnd jmpq 1020 <.plt>
    111f:	90                   	nop
    1120:	f3 0f 1e fa          	endbr64 
    1124:	68 0f 00 00 00       	pushq  $0xf
    1129:	f2 e9 f1 fe ff ff    	bnd jmpq 1020 <.plt>
    112f:	90                   	nop
    1130:	f3 0f 1e fa          	endbr64 
    1134:	68 10 00 00 00       	pushq  $0x10
    1139:	f2 e9 e1 fe ff ff    	bnd jmpq 1020 <.plt>
    113f:	90                   	nop
    1140:	f3 0f 1e fa          	endbr64 
    1144:	68 11 00 00 00       	pushq  $0x11
    1149:	f2 e9 d1 fe ff ff    	bnd jmpq 1020 <.plt>
    114f:	90                   	nop
    1150:	f3 0f 1e fa          	endbr64 
    1154:	68 12 00 00 00       	pushq  $0x12
    1159:	f2 e9 c1 fe ff ff    	bnd jmpq 1020 <.plt>
    115f:	90                   	nop
    1160:	f3 0f 1e fa          	endbr64 
    1164:	68 13 00 00 00       	pushq  $0x13
    1169:	f2 e9 b1 fe ff ff    	bnd jmpq 1020 <.plt>
    116f:	90                   	nop
    1170:	f3 0f 1e fa          	endbr64 
    1174:	68 14 00 00 00       	pushq  $0x14
    1179:	f2 e9 a1 fe ff ff    	bnd jmpq 1020 <.plt>
    117f:	90                   	nop
    1180:	f3 0f 1e fa          	endbr64 
    1184:	68 15 00 00 00       	pushq  $0x15
    1189:	f2 e9 91 fe ff ff    	bnd jmpq 1020 <.plt>
    118f:	90                   	nop
    1190:	f3 0f 1e fa          	endbr64 
    1194:	68 16 00 00 00       	pushq  $0x16
    1199:	f2 e9 81 fe ff ff    	bnd jmpq 1020 <.plt>
    119f:	90                   	nop
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	68 17 00 00 00       	pushq  $0x17
    11a9:	f2 e9 71 fe ff ff    	bnd jmpq 1020 <.plt>
    11af:	90                   	nop
    11b0:	f3 0f 1e fa          	endbr64 
    11b4:	68 18 00 00 00       	pushq  $0x18
    11b9:	f2 e9 61 fe ff ff    	bnd jmpq 1020 <.plt>
    11bf:	90                   	nop

Disassembly of section .plt.got:

00000000000011c0 <__cxa_finalize@plt>:
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	f2 ff 25 2d 3e 00 00 	bnd jmpq *0x3e2d(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    11cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000011d0 <getenv@plt>:
    11d0:	f3 0f 1e fa          	endbr64 
    11d4:	f2 ff 25 35 3d 00 00 	bnd jmpq *0x3d35(%rip)        # 4f10 <getenv@GLIBC_2.2.5>
    11db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011e0 <__errno_location@plt>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	f2 ff 25 2d 3d 00 00 	bnd jmpq *0x3d2d(%rip)        # 4f18 <__errno_location@GLIBC_2.2.5>
    11eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011f0 <strcpy@plt>:
    11f0:	f3 0f 1e fa          	endbr64 
    11f4:	f2 ff 25 25 3d 00 00 	bnd jmpq *0x3d25(%rip)        # 4f20 <strcpy@GLIBC_2.2.5>
    11fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001200 <puts@plt>:
    1200:	f3 0f 1e fa          	endbr64 
    1204:	f2 ff 25 1d 3d 00 00 	bnd jmpq *0x3d1d(%rip)        # 4f28 <puts@GLIBC_2.2.5>
    120b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001210 <write@plt>:
    1210:	f3 0f 1e fa          	endbr64 
    1214:	f2 ff 25 15 3d 00 00 	bnd jmpq *0x3d15(%rip)        # 4f30 <write@GLIBC_2.2.5>
    121b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001220 <__stack_chk_fail@plt>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	f2 ff 25 0d 3d 00 00 	bnd jmpq *0x3d0d(%rip)        # 4f38 <__stack_chk_fail@GLIBC_2.4>
    122b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001230 <alarm@plt>:
    1230:	f3 0f 1e fa          	endbr64 
    1234:	f2 ff 25 05 3d 00 00 	bnd jmpq *0x3d05(%rip)        # 4f40 <alarm@GLIBC_2.2.5>
    123b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001240 <close@plt>:
    1240:	f3 0f 1e fa          	endbr64 
    1244:	f2 ff 25 fd 3c 00 00 	bnd jmpq *0x3cfd(%rip)        # 4f48 <close@GLIBC_2.2.5>
    124b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001250 <read@plt>:
    1250:	f3 0f 1e fa          	endbr64 
    1254:	f2 ff 25 f5 3c 00 00 	bnd jmpq *0x3cf5(%rip)        # 4f50 <read@GLIBC_2.2.5>
    125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001260 <fgets@plt>:
    1260:	f3 0f 1e fa          	endbr64 
    1264:	f2 ff 25 ed 3c 00 00 	bnd jmpq *0x3ced(%rip)        # 4f58 <fgets@GLIBC_2.2.5>
    126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001270 <signal@plt>:
    1270:	f3 0f 1e fa          	endbr64 
    1274:	f2 ff 25 e5 3c 00 00 	bnd jmpq *0x3ce5(%rip)        # 4f60 <signal@GLIBC_2.2.5>
    127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001280 <gethostbyname@plt>:
    1280:	f3 0f 1e fa          	endbr64 
    1284:	f2 ff 25 dd 3c 00 00 	bnd jmpq *0x3cdd(%rip)        # 4f68 <gethostbyname@GLIBC_2.2.5>
    128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001290 <__memmove_chk@plt>:
    1290:	f3 0f 1e fa          	endbr64 
    1294:	f2 ff 25 d5 3c 00 00 	bnd jmpq *0x3cd5(%rip)        # 4f70 <__memmove_chk@GLIBC_2.3.4>
    129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012a0 <strtol@plt>:
    12a0:	f3 0f 1e fa          	endbr64 
    12a4:	f2 ff 25 cd 3c 00 00 	bnd jmpq *0x3ccd(%rip)        # 4f78 <strtol@GLIBC_2.2.5>
    12ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012b0 <fflush@plt>:
    12b0:	f3 0f 1e fa          	endbr64 
    12b4:	f2 ff 25 c5 3c 00 00 	bnd jmpq *0x3cc5(%rip)        # 4f80 <fflush@GLIBC_2.2.5>
    12bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012c0 <__isoc99_sscanf@plt>:
    12c0:	f3 0f 1e fa          	endbr64 
    12c4:	f2 ff 25 bd 3c 00 00 	bnd jmpq *0x3cbd(%rip)        # 4f88 <__isoc99_sscanf@GLIBC_2.7>
    12cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012d0 <__printf_chk@plt>:
    12d0:	f3 0f 1e fa          	endbr64 
    12d4:	f2 ff 25 b5 3c 00 00 	bnd jmpq *0x3cb5(%rip)        # 4f90 <__printf_chk@GLIBC_2.3.4>
    12db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012e0 <fopen@plt>:
    12e0:	f3 0f 1e fa          	endbr64 
    12e4:	f2 ff 25 ad 3c 00 00 	bnd jmpq *0x3cad(%rip)        # 4f98 <fopen@GLIBC_2.2.5>
    12eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012f0 <exit@plt>:
    12f0:	f3 0f 1e fa          	endbr64 
    12f4:	f2 ff 25 a5 3c 00 00 	bnd jmpq *0x3ca5(%rip)        # 4fa0 <exit@GLIBC_2.2.5>
    12fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001300 <connect@plt>:
    1300:	f3 0f 1e fa          	endbr64 
    1304:	f2 ff 25 9d 3c 00 00 	bnd jmpq *0x3c9d(%rip)        # 4fa8 <connect@GLIBC_2.2.5>
    130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001310 <__fprintf_chk@plt>:
    1310:	f3 0f 1e fa          	endbr64 
    1314:	f2 ff 25 95 3c 00 00 	bnd jmpq *0x3c95(%rip)        # 4fb0 <__fprintf_chk@GLIBC_2.3.4>
    131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001320 <sleep@plt>:
    1320:	f3 0f 1e fa          	endbr64 
    1324:	f2 ff 25 8d 3c 00 00 	bnd jmpq *0x3c8d(%rip)        # 4fb8 <sleep@GLIBC_2.2.5>
    132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001330 <__ctype_b_loc@plt>:
    1330:	f3 0f 1e fa          	endbr64 
    1334:	f2 ff 25 85 3c 00 00 	bnd jmpq *0x3c85(%rip)        # 4fc0 <__ctype_b_loc@GLIBC_2.3>
    133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001340 <__sprintf_chk@plt>:
    1340:	f3 0f 1e fa          	endbr64 
    1344:	f2 ff 25 7d 3c 00 00 	bnd jmpq *0x3c7d(%rip)        # 4fc8 <__sprintf_chk@GLIBC_2.3.4>
    134b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001350 <socket@plt>:
    1350:	f3 0f 1e fa          	endbr64 
    1354:	f2 ff 25 75 3c 00 00 	bnd jmpq *0x3c75(%rip)        # 4fd0 <socket@GLIBC_2.2.5>
    135b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001360 <_start>:
    1360:	f3 0f 1e fa          	endbr64 
    1364:	31 ed                	xor    %ebp,%ebp
    1366:	49 89 d1             	mov    %rdx,%r9
    1369:	5e                   	pop    %rsi
    136a:	48 89 e2             	mov    %rsp,%rdx
    136d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1371:	50                   	push   %rax
    1372:	54                   	push   %rsp
    1373:	4c 8d 05 f6 16 00 00 	lea    0x16f6(%rip),%r8        # 2a70 <__libc_csu_fini>
    137a:	48 8d 0d 7f 16 00 00 	lea    0x167f(%rip),%rcx        # 2a00 <__libc_csu_init>
    1381:	48 8d 3d c1 00 00 00 	lea    0xc1(%rip),%rdi        # 1449 <main>
    1388:	ff 15 52 3c 00 00    	callq  *0x3c52(%rip)        # 4fe0 <__libc_start_main@GLIBC_2.2.5>
    138e:	f4                   	hlt    
    138f:	90                   	nop

0000000000001390 <deregister_tm_clones>:
    1390:	48 8d 3d c9 42 00 00 	lea    0x42c9(%rip),%rdi        # 5660 <stdout@@GLIBC_2.2.5>
    1397:	48 8d 05 c2 42 00 00 	lea    0x42c2(%rip),%rax        # 5660 <stdout@@GLIBC_2.2.5>
    139e:	48 39 f8             	cmp    %rdi,%rax
    13a1:	74 15                	je     13b8 <deregister_tm_clones+0x28>
    13a3:	48 8b 05 2e 3c 00 00 	mov    0x3c2e(%rip),%rax        # 4fd8 <_ITM_deregisterTMCloneTable>
    13aa:	48 85 c0             	test   %rax,%rax
    13ad:	74 09                	je     13b8 <deregister_tm_clones+0x28>
    13af:	ff e0                	jmpq   *%rax
    13b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    13b8:	c3                   	retq   
    13b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000013c0 <register_tm_clones>:
    13c0:	48 8d 3d 99 42 00 00 	lea    0x4299(%rip),%rdi        # 5660 <stdout@@GLIBC_2.2.5>
    13c7:	48 8d 35 92 42 00 00 	lea    0x4292(%rip),%rsi        # 5660 <stdout@@GLIBC_2.2.5>
    13ce:	48 29 fe             	sub    %rdi,%rsi
    13d1:	48 89 f0             	mov    %rsi,%rax
    13d4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    13d8:	48 c1 f8 03          	sar    $0x3,%rax
    13dc:	48 01 c6             	add    %rax,%rsi
    13df:	48 d1 fe             	sar    %rsi
    13e2:	74 14                	je     13f8 <register_tm_clones+0x38>
    13e4:	48 8b 05 05 3c 00 00 	mov    0x3c05(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable>
    13eb:	48 85 c0             	test   %rax,%rax
    13ee:	74 08                	je     13f8 <register_tm_clones+0x38>
    13f0:	ff e0                	jmpq   *%rax
    13f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    13f8:	c3                   	retq   
    13f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001400 <__do_global_dtors_aux>:
    1400:	f3 0f 1e fa          	endbr64 
    1404:	80 3d 7d 42 00 00 00 	cmpb   $0x0,0x427d(%rip)        # 5688 <completed.8061>
    140b:	75 2b                	jne    1438 <__do_global_dtors_aux+0x38>
    140d:	55                   	push   %rbp
    140e:	48 83 3d e2 3b 00 00 	cmpq   $0x0,0x3be2(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    1415:	00 
    1416:	48 89 e5             	mov    %rsp,%rbp
    1419:	74 0c                	je     1427 <__do_global_dtors_aux+0x27>
    141b:	48 8b 3d e6 3b 00 00 	mov    0x3be6(%rip),%rdi        # 5008 <__dso_handle>
    1422:	e8 99 fd ff ff       	callq  11c0 <__cxa_finalize@plt>
    1427:	e8 64 ff ff ff       	callq  1390 <deregister_tm_clones>
    142c:	c6 05 55 42 00 00 01 	movb   $0x1,0x4255(%rip)        # 5688 <completed.8061>
    1433:	5d                   	pop    %rbp
    1434:	c3                   	retq   
    1435:	0f 1f 00             	nopl   (%rax)
    1438:	c3                   	retq   
    1439:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001440 <frame_dummy>:
    1440:	f3 0f 1e fa          	endbr64 
    1444:	e9 77 ff ff ff       	jmpq   13c0 <register_tm_clones>

0000000000001449 <main>:
    1449:	f3 0f 1e fa          	endbr64 
    144d:	53                   	push   %rbx
    144e:	83 ff 01             	cmp    $0x1,%edi
    1451:	0f 84 f8 00 00 00    	je     154f <main+0x106>
    1457:	48 89 f3             	mov    %rsi,%rbx
    145a:	83 ff 02             	cmp    $0x2,%edi
    145d:	0f 85 21 01 00 00    	jne    1584 <main+0x13b>
    1463:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    1467:	48 8d 35 96 1b 00 00 	lea    0x1b96(%rip),%rsi        # 3004 <_IO_stdin_used+0x4>
    146e:	e8 6d fe ff ff       	callq  12e0 <fopen@plt>
    1473:	48 89 05 16 42 00 00 	mov    %rax,0x4216(%rip)        # 5690 <infile>
    147a:	48 85 c0             	test   %rax,%rax
    147d:	0f 84 df 00 00 00    	je     1562 <main+0x119>
    1483:	e8 8d 06 00 00       	callq  1b15 <initialize_bomb>
    1488:	48 8d 3d f9 1b 00 00 	lea    0x1bf9(%rip),%rdi        # 3088 <_IO_stdin_used+0x88>
    148f:	e8 6c fd ff ff       	callq  1200 <puts@plt>
    1494:	48 8d 3d 2d 1c 00 00 	lea    0x1c2d(%rip),%rdi        # 30c8 <_IO_stdin_used+0xc8>
    149b:	e8 60 fd ff ff       	callq  1200 <puts@plt>
    14a0:	e8 95 07 00 00       	callq  1c3a <read_line>
    14a5:	48 89 c7             	mov    %rax,%rdi
    14a8:	e8 fa 00 00 00       	callq  15a7 <phase_1>
    14ad:	e8 d0 08 00 00       	callq  1d82 <phase_defused>
    14b2:	48 8d 3d 3f 1c 00 00 	lea    0x1c3f(%rip),%rdi        # 30f8 <_IO_stdin_used+0xf8>
    14b9:	e8 42 fd ff ff       	callq  1200 <puts@plt>
    14be:	e8 77 07 00 00       	callq  1c3a <read_line>
    14c3:	48 89 c7             	mov    %rax,%rdi
    14c6:	e8 00 01 00 00       	callq  15cb <phase_2>
    14cb:	e8 b2 08 00 00       	callq  1d82 <phase_defused>
    14d0:	48 8d 3d 66 1b 00 00 	lea    0x1b66(%rip),%rdi        # 303d <_IO_stdin_used+0x3d>
    14d7:	e8 24 fd ff ff       	callq  1200 <puts@plt>
    14dc:	e8 59 07 00 00       	callq  1c3a <read_line>
    14e1:	48 89 c7             	mov    %rax,%rdi
    14e4:	e8 54 01 00 00       	callq  163d <phase_3>
    14e9:	e8 94 08 00 00       	callq  1d82 <phase_defused>
    14ee:	48 8d 3d 66 1b 00 00 	lea    0x1b66(%rip),%rdi        # 305b <_IO_stdin_used+0x5b>
    14f5:	e8 06 fd ff ff       	callq  1200 <puts@plt>
    14fa:	e8 3b 07 00 00       	callq  1c3a <read_line>
    14ff:	48 89 c7             	mov    %rax,%rdi
    1502:	e8 2c 02 00 00       	callq  1733 <phase_4>
    1507:	e8 76 08 00 00       	callq  1d82 <phase_defused>
    150c:	48 8d 3d 15 1c 00 00 	lea    0x1c15(%rip),%rdi        # 3128 <_IO_stdin_used+0x128>
    1513:	e8 e8 fc ff ff       	callq  1200 <puts@plt>
    1518:	e8 1d 07 00 00       	callq  1c3a <read_line>
    151d:	48 89 c7             	mov    %rax,%rdi
    1520:	e8 83 02 00 00       	callq  17a8 <phase_5>
    1525:	e8 58 08 00 00       	callq  1d82 <phase_defused>
    152a:	48 8d 3d 39 1b 00 00 	lea    0x1b39(%rip),%rdi        # 306a <_IO_stdin_used+0x6a>
    1531:	e8 ca fc ff ff       	callq  1200 <puts@plt>
    1536:	e8 ff 06 00 00       	callq  1c3a <read_line>
    153b:	48 89 c7             	mov    %rax,%rdi
    153e:	e8 fc 02 00 00       	callq  183f <phase_6>
    1543:	e8 3a 08 00 00       	callq  1d82 <phase_defused>
    1548:	b8 00 00 00 00       	mov    $0x0,%eax
    154d:	5b                   	pop    %rbx
    154e:	c3                   	retq   
    154f:	48 8b 05 1a 41 00 00 	mov    0x411a(%rip),%rax        # 5670 <stdin@@GLIBC_2.2.5>
    1556:	48 89 05 33 41 00 00 	mov    %rax,0x4133(%rip)        # 5690 <infile>
    155d:	e9 21 ff ff ff       	jmpq   1483 <main+0x3a>
    1562:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    1566:	48 8b 13             	mov    (%rbx),%rdx
    1569:	48 8d 35 96 1a 00 00 	lea    0x1a96(%rip),%rsi        # 3006 <_IO_stdin_used+0x6>
    1570:	bf 01 00 00 00       	mov    $0x1,%edi
    1575:	e8 56 fd ff ff       	callq  12d0 <__printf_chk@plt>
    157a:	bf 08 00 00 00       	mov    $0x8,%edi
    157f:	e8 6c fd ff ff       	callq  12f0 <exit@plt>
    1584:	48 8b 16             	mov    (%rsi),%rdx
    1587:	48 8d 35 95 1a 00 00 	lea    0x1a95(%rip),%rsi        # 3023 <_IO_stdin_used+0x23>
    158e:	bf 01 00 00 00       	mov    $0x1,%edi
    1593:	b8 00 00 00 00       	mov    $0x0,%eax
    1598:	e8 33 fd ff ff       	callq  12d0 <__printf_chk@plt>
    159d:	bf 08 00 00 00       	mov    $0x8,%edi
    15a2:	e8 49 fd ff ff       	callq  12f0 <exit@plt>

00000000000015a7 <phase_1>:
    15a7:	f3 0f 1e fa          	endbr64 
    15ab:	48 83 ec 08          	sub    $0x8,%rsp
    15af:	48 8d 35 9a 1b 00 00 	lea    0x1b9a(%rip),%rsi        # 3150 <_IO_stdin_used+0x150>
    15b6:	e8 fa 04 00 00       	callq  1ab5 <strings_not_equal>
    15bb:	85 c0                	test   %eax,%eax
    15bd:	75 05                	jne    15c4 <phase_1+0x1d>
    15bf:	48 83 c4 08          	add    $0x8,%rsp
    15c3:	c3                   	retq   
    15c4:	e8 00 06 00 00       	callq  1bc9 <explode_bomb>
    15c9:	eb f4                	jmp    15bf <phase_1+0x18>

00000000000015cb <phase_2>:
    15cb:	f3 0f 1e fa          	endbr64 
    15cf:	55                   	push   %rbp
    15d0:	53                   	push   %rbx
    15d1:	48 83 ec 28          	sub    $0x28,%rsp
    15d5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    15dc:	00 00 
    15de:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    15e3:	31 c0                	xor    %eax,%eax
    15e5:	48 89 e6             	mov    %rsp,%rsi
    15e8:	e8 08 06 00 00       	callq  1bf5 <read_six_numbers>
    15ed:	83 3c 24 00          	cmpl   $0x0,(%rsp)
    15f1:	78 0a                	js     15fd <phase_2+0x32>
    15f3:	48 89 e5             	mov    %rsp,%rbp
    15f6:	bb 01 00 00 00       	mov    $0x1,%ebx
    15fb:	eb 18                	jmp    1615 <phase_2+0x4a>
    15fd:	e8 c7 05 00 00       	callq  1bc9 <explode_bomb>
    1602:	eb ef                	jmp    15f3 <phase_2+0x28>
    1604:	e8 c0 05 00 00       	callq  1bc9 <explode_bomb>
    1609:	83 c3 01             	add    $0x1,%ebx
    160c:	48 83 c5 04          	add    $0x4,%rbp
    1610:	83 fb 06             	cmp    $0x6,%ebx
    1613:	74 0c                	je     1621 <phase_2+0x56>
    1615:	89 d8                	mov    %ebx,%eax
    1617:	03 45 00             	add    0x0(%rbp),%eax
    161a:	39 45 04             	cmp    %eax,0x4(%rbp)
    161d:	74 ea                	je     1609 <phase_2+0x3e>
    161f:	eb e3                	jmp    1604 <phase_2+0x39>
    1621:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1626:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    162d:	00 00 
    162f:	75 07                	jne    1638 <phase_2+0x6d>
    1631:	48 83 c4 28          	add    $0x28,%rsp
    1635:	5b                   	pop    %rbx
    1636:	5d                   	pop    %rbp
    1637:	c3                   	retq   
    1638:	e8 e3 fb ff ff       	callq  1220 <__stack_chk_fail@plt>

000000000000163d <phase_3>:
    163d:	f3 0f 1e fa          	endbr64 
    1641:	48 83 ec 18          	sub    $0x18,%rsp
    1645:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    164c:	00 00 
    164e:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1653:	31 c0                	xor    %eax,%eax
    1655:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    165a:	48 89 e2             	mov    %rsp,%rdx
    165d:	48 8d 35 ab 1c 00 00 	lea    0x1cab(%rip),%rsi        # 330f <array.3469+0x14f>
    1664:	e8 57 fc ff ff       	callq  12c0 <__isoc99_sscanf@plt>
    1669:	83 f8 01             	cmp    $0x1,%eax
    166c:	7e 1a                	jle    1688 <phase_3+0x4b>
    166e:	83 3c 24 07          	cmpl   $0x7,(%rsp)
    1672:	77 65                	ja     16d9 <phase_3+0x9c>
    1674:	8b 04 24             	mov    (%rsp),%eax
    1677:	48 8d 15 22 1b 00 00 	lea    0x1b22(%rip),%rdx        # 31a0 <_IO_stdin_used+0x1a0>
    167e:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    1682:	48 01 d0             	add    %rdx,%rax
    1685:	3e ff e0             	notrack jmpq *%rax
    1688:	e8 3c 05 00 00       	callq  1bc9 <explode_bomb>
    168d:	eb df                	jmp    166e <phase_3+0x31>
    168f:	b8 e5 01 00 00       	mov    $0x1e5,%eax
    1694:	39 44 24 04          	cmp    %eax,0x4(%rsp)
    1698:	75 52                	jne    16ec <phase_3+0xaf>
    169a:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    169f:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    16a6:	00 00 
    16a8:	75 49                	jne    16f3 <phase_3+0xb6>
    16aa:	48 83 c4 18          	add    $0x18,%rsp
    16ae:	c3                   	retq   
    16af:	b8 48 00 00 00       	mov    $0x48,%eax
    16b4:	eb de                	jmp    1694 <phase_3+0x57>
    16b6:	b8 39 02 00 00       	mov    $0x239,%eax
    16bb:	eb d7                	jmp    1694 <phase_3+0x57>
    16bd:	b8 38 01 00 00       	mov    $0x138,%eax
    16c2:	eb d0                	jmp    1694 <phase_3+0x57>
    16c4:	b8 43 00 00 00       	mov    $0x43,%eax
    16c9:	eb c9                	jmp    1694 <phase_3+0x57>
    16cb:	b8 2c 02 00 00       	mov    $0x22c,%eax
    16d0:	eb c2                	jmp    1694 <phase_3+0x57>
    16d2:	b8 ed 02 00 00       	mov    $0x2ed,%eax
    16d7:	eb bb                	jmp    1694 <phase_3+0x57>
    16d9:	e8 eb 04 00 00       	callq  1bc9 <explode_bomb>
    16de:	b8 00 00 00 00       	mov    $0x0,%eax
    16e3:	eb af                	jmp    1694 <phase_3+0x57>
    16e5:	b8 e2 00 00 00       	mov    $0xe2,%eax
    16ea:	eb a8                	jmp    1694 <phase_3+0x57>
    16ec:	e8 d8 04 00 00       	callq  1bc9 <explode_bomb>
    16f1:	eb a7                	jmp    169a <phase_3+0x5d>
    16f3:	e8 28 fb ff ff       	callq  1220 <__stack_chk_fail@plt>

00000000000016f8 <func4>:
    16f8:	f3 0f 1e fa          	endbr64 
    16fc:	b8 00 00 00 00       	mov    $0x0,%eax
    1701:	85 ff                	test   %edi,%edi
    1703:	7e 2d                	jle    1732 <func4+0x3a>
    1705:	41 54                	push   %r12
    1707:	55                   	push   %rbp
    1708:	53                   	push   %rbx
    1709:	89 fb                	mov    %edi,%ebx
    170b:	89 f5                	mov    %esi,%ebp
    170d:	89 f0                	mov    %esi,%eax
    170f:	83 ff 01             	cmp    $0x1,%edi
    1712:	74 19                	je     172d <func4+0x35>
    1714:	8d 7f ff             	lea    -0x1(%rdi),%edi
    1717:	e8 dc ff ff ff       	callq  16f8 <func4>
    171c:	44 8d 24 28          	lea    (%rax,%rbp,1),%r12d
    1720:	8d 7b fe             	lea    -0x2(%rbx),%edi
    1723:	89 ee                	mov    %ebp,%esi
    1725:	e8 ce ff ff ff       	callq  16f8 <func4>
    172a:	44 01 e0             	add    %r12d,%eax
    172d:	5b                   	pop    %rbx
    172e:	5d                   	pop    %rbp
    172f:	41 5c                	pop    %r12
    1731:	c3                   	retq   
    1732:	c3                   	retq   

0000000000001733 <phase_4>:
    1733:	f3 0f 1e fa          	endbr64 
    1737:	48 83 ec 18          	sub    $0x18,%rsp
    173b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1742:	00 00 
    1744:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1749:	31 c0                	xor    %eax,%eax
    174b:	48 89 e1             	mov    %rsp,%rcx
    174e:	48 8d 54 24 04       	lea    0x4(%rsp),%rdx
    1753:	48 8d 35 b5 1b 00 00 	lea    0x1bb5(%rip),%rsi        # 330f <array.3469+0x14f>
    175a:	e8 61 fb ff ff       	callq  12c0 <__isoc99_sscanf@plt>
    175f:	83 f8 02             	cmp    $0x2,%eax
    1762:	75 0b                	jne    176f <phase_4+0x3c>
    1764:	8b 04 24             	mov    (%rsp),%eax
    1767:	83 e8 02             	sub    $0x2,%eax
    176a:	83 f8 02             	cmp    $0x2,%eax
    176d:	76 05                	jbe    1774 <phase_4+0x41>
    176f:	e8 55 04 00 00       	callq  1bc9 <explode_bomb>
    1774:	8b 34 24             	mov    (%rsp),%esi
    1777:	bf 06 00 00 00       	mov    $0x6,%edi
    177c:	e8 77 ff ff ff       	callq  16f8 <func4>
    1781:	39 44 24 04          	cmp    %eax,0x4(%rsp)
    1785:	75 15                	jne    179c <phase_4+0x69>
    1787:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    178c:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1793:	00 00 
    1795:	75 0c                	jne    17a3 <phase_4+0x70>
    1797:	48 83 c4 18          	add    $0x18,%rsp
    179b:	c3                   	retq   
    179c:	e8 28 04 00 00       	callq  1bc9 <explode_bomb>
    17a1:	eb e4                	jmp    1787 <phase_4+0x54>
    17a3:	e8 78 fa ff ff       	callq  1220 <__stack_chk_fail@plt>

00000000000017a8 <phase_5>:
    17a8:	f3 0f 1e fa          	endbr64 
    17ac:	48 83 ec 18          	sub    $0x18,%rsp
    17b0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    17b7:	00 00 
    17b9:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    17be:	31 c0                	xor    %eax,%eax
    17c0:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    17c5:	48 89 e2             	mov    %rsp,%rdx
    17c8:	48 8d 35 40 1b 00 00 	lea    0x1b40(%rip),%rsi        # 330f <array.3469+0x14f>
    17cf:	e8 ec fa ff ff       	callq  12c0 <__isoc99_sscanf@plt>
    17d4:	83 f8 01             	cmp    $0x1,%eax
    17d7:	7e 5a                	jle    1833 <phase_5+0x8b>
    17d9:	8b 04 24             	mov    (%rsp),%eax
    17dc:	83 e0 0f             	and    $0xf,%eax
    17df:	89 04 24             	mov    %eax,(%rsp)
    17e2:	83 f8 0f             	cmp    $0xf,%eax
    17e5:	74 32                	je     1819 <phase_5+0x71>
    17e7:	b9 00 00 00 00       	mov    $0x0,%ecx
    17ec:	ba 00 00 00 00       	mov    $0x0,%edx
    17f1:	48 8d 35 c8 19 00 00 	lea    0x19c8(%rip),%rsi        # 31c0 <array.3469>
    17f8:	83 c2 01             	add    $0x1,%edx
    17fb:	48 98                	cltq   
    17fd:	8b 04 86             	mov    (%rsi,%rax,4),%eax
    1800:	01 c1                	add    %eax,%ecx
    1802:	83 f8 0f             	cmp    $0xf,%eax
    1805:	75 f1                	jne    17f8 <phase_5+0x50>
    1807:	c7 04 24 0f 00 00 00 	movl   $0xf,(%rsp)
    180e:	83 fa 0f             	cmp    $0xf,%edx
    1811:	75 06                	jne    1819 <phase_5+0x71>
    1813:	39 4c 24 04          	cmp    %ecx,0x4(%rsp)
    1817:	74 05                	je     181e <phase_5+0x76>
    1819:	e8 ab 03 00 00       	callq  1bc9 <explode_bomb>
    181e:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1823:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    182a:	00 00 
    182c:	75 0c                	jne    183a <phase_5+0x92>
    182e:	48 83 c4 18          	add    $0x18,%rsp
    1832:	c3                   	retq   
    1833:	e8 91 03 00 00       	callq  1bc9 <explode_bomb>
    1838:	eb 9f                	jmp    17d9 <phase_5+0x31>
    183a:	e8 e1 f9 ff ff       	callq  1220 <__stack_chk_fail@plt>

000000000000183f <phase_6>:
    183f:	f3 0f 1e fa          	endbr64 
    1843:	41 56                	push   %r14
    1845:	41 55                	push   %r13
    1847:	41 54                	push   %r12
    1849:	55                   	push   %rbp
    184a:	53                   	push   %rbx
    184b:	48 83 ec 60          	sub    $0x60,%rsp
    184f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1856:	00 00 
    1858:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    185d:	31 c0                	xor    %eax,%eax
    185f:	49 89 e5             	mov    %rsp,%r13
    1862:	4c 89 ee             	mov    %r13,%rsi
    1865:	e8 8b 03 00 00       	callq  1bf5 <read_six_numbers>
    186a:	41 be 01 00 00 00    	mov    $0x1,%r14d
    1870:	49 89 e4             	mov    %rsp,%r12
    1873:	eb 28                	jmp    189d <phase_6+0x5e>
    1875:	e8 4f 03 00 00       	callq  1bc9 <explode_bomb>
    187a:	eb 30                	jmp    18ac <phase_6+0x6d>
    187c:	48 83 c3 01          	add    $0x1,%rbx
    1880:	83 fb 05             	cmp    $0x5,%ebx
    1883:	7f 10                	jg     1895 <phase_6+0x56>
    1885:	41 8b 04 9c          	mov    (%r12,%rbx,4),%eax
    1889:	39 45 00             	cmp    %eax,0x0(%rbp)
    188c:	75 ee                	jne    187c <phase_6+0x3d>
    188e:	e8 36 03 00 00       	callq  1bc9 <explode_bomb>
    1893:	eb e7                	jmp    187c <phase_6+0x3d>
    1895:	49 83 c6 01          	add    $0x1,%r14
    1899:	49 83 c5 04          	add    $0x4,%r13
    189d:	4c 89 ed             	mov    %r13,%rbp
    18a0:	41 8b 45 00          	mov    0x0(%r13),%eax
    18a4:	83 e8 01             	sub    $0x1,%eax
    18a7:	83 f8 05             	cmp    $0x5,%eax
    18aa:	77 c9                	ja     1875 <phase_6+0x36>
    18ac:	41 83 fe 05          	cmp    $0x5,%r14d
    18b0:	7f 05                	jg     18b7 <phase_6+0x78>
    18b2:	4c 89 f3             	mov    %r14,%rbx
    18b5:	eb ce                	jmp    1885 <phase_6+0x46>
    18b7:	be 00 00 00 00       	mov    $0x0,%esi
    18bc:	8b 0c b4             	mov    (%rsp,%rsi,4),%ecx
    18bf:	b8 01 00 00 00       	mov    $0x1,%eax
    18c4:	48 8d 15 45 39 00 00 	lea    0x3945(%rip),%rdx        # 5210 <node1>
    18cb:	83 f9 01             	cmp    $0x1,%ecx
    18ce:	7e 0b                	jle    18db <phase_6+0x9c>
    18d0:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    18d4:	83 c0 01             	add    $0x1,%eax
    18d7:	39 c8                	cmp    %ecx,%eax
    18d9:	75 f5                	jne    18d0 <phase_6+0x91>
    18db:	48 89 54 f4 20       	mov    %rdx,0x20(%rsp,%rsi,8)
    18e0:	48 83 c6 01          	add    $0x1,%rsi
    18e4:	48 83 fe 06          	cmp    $0x6,%rsi
    18e8:	75 d2                	jne    18bc <phase_6+0x7d>
    18ea:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    18ef:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    18f4:	48 89 43 08          	mov    %rax,0x8(%rbx)
    18f8:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    18fd:	48 89 50 08          	mov    %rdx,0x8(%rax)
    1901:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    1906:	48 89 42 08          	mov    %rax,0x8(%rdx)
    190a:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
    190f:	48 89 50 08          	mov    %rdx,0x8(%rax)
    1913:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    1918:	48 89 42 08          	mov    %rax,0x8(%rdx)
    191c:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    1923:	00 
    1924:	bd 05 00 00 00       	mov    $0x5,%ebp
    1929:	eb 09                	jmp    1934 <phase_6+0xf5>
    192b:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    192f:	83 ed 01             	sub    $0x1,%ebp
    1932:	74 11                	je     1945 <phase_6+0x106>
    1934:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1938:	8b 00                	mov    (%rax),%eax
    193a:	39 03                	cmp    %eax,(%rbx)
    193c:	7e ed                	jle    192b <phase_6+0xec>
    193e:	e8 86 02 00 00       	callq  1bc9 <explode_bomb>
    1943:	eb e6                	jmp    192b <phase_6+0xec>
    1945:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    194a:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1951:	00 00 
    1953:	75 0d                	jne    1962 <phase_6+0x123>
    1955:	48 83 c4 60          	add    $0x60,%rsp
    1959:	5b                   	pop    %rbx
    195a:	5d                   	pop    %rbp
    195b:	41 5c                	pop    %r12
    195d:	41 5d                	pop    %r13
    195f:	41 5e                	pop    %r14
    1961:	c3                   	retq   
    1962:	e8 b9 f8 ff ff       	callq  1220 <__stack_chk_fail@plt>

0000000000001967 <fun7>:
    1967:	f3 0f 1e fa          	endbr64 
    196b:	48 85 ff             	test   %rdi,%rdi
    196e:	74 32                	je     19a2 <fun7+0x3b>
    1970:	48 83 ec 08          	sub    $0x8,%rsp
    1974:	8b 17                	mov    (%rdi),%edx
    1976:	39 f2                	cmp    %esi,%edx
    1978:	7f 0c                	jg     1986 <fun7+0x1f>
    197a:	b8 00 00 00 00       	mov    $0x0,%eax
    197f:	75 12                	jne    1993 <fun7+0x2c>
    1981:	48 83 c4 08          	add    $0x8,%rsp
    1985:	c3                   	retq   
    1986:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    198a:	e8 d8 ff ff ff       	callq  1967 <fun7>
    198f:	01 c0                	add    %eax,%eax
    1991:	eb ee                	jmp    1981 <fun7+0x1a>
    1993:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    1997:	e8 cb ff ff ff       	callq  1967 <fun7>
    199c:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    19a0:	eb df                	jmp    1981 <fun7+0x1a>
    19a2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    19a7:	c3                   	retq   

00000000000019a8 <secret_phase>:
    19a8:	f3 0f 1e fa          	endbr64 
    19ac:	53                   	push   %rbx
    19ad:	e8 88 02 00 00       	callq  1c3a <read_line>
    19b2:	48 89 c7             	mov    %rax,%rdi
    19b5:	ba 0a 00 00 00       	mov    $0xa,%edx
    19ba:	be 00 00 00 00       	mov    $0x0,%esi
    19bf:	e8 dc f8 ff ff       	callq  12a0 <strtol@plt>
    19c4:	48 89 c3             	mov    %rax,%rbx
    19c7:	8d 40 ff             	lea    -0x1(%rax),%eax
    19ca:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    19cf:	77 26                	ja     19f7 <secret_phase+0x4f>
    19d1:	89 de                	mov    %ebx,%esi
    19d3:	48 8d 3d 56 37 00 00 	lea    0x3756(%rip),%rdi        # 5130 <n1>
    19da:	e8 88 ff ff ff       	callq  1967 <fun7>
    19df:	83 f8 04             	cmp    $0x4,%eax
    19e2:	75 1a                	jne    19fe <secret_phase+0x56>
    19e4:	48 8d 3d 8d 17 00 00 	lea    0x178d(%rip),%rdi        # 3178 <_IO_stdin_used+0x178>
    19eb:	e8 10 f8 ff ff       	callq  1200 <puts@plt>
    19f0:	e8 8d 03 00 00       	callq  1d82 <phase_defused>
    19f5:	5b                   	pop    %rbx
    19f6:	c3                   	retq   
    19f7:	e8 cd 01 00 00       	callq  1bc9 <explode_bomb>
    19fc:	eb d3                	jmp    19d1 <secret_phase+0x29>
    19fe:	e8 c6 01 00 00       	callq  1bc9 <explode_bomb>
    1a03:	eb df                	jmp    19e4 <secret_phase+0x3c>

0000000000001a05 <sig_handler>:
    1a05:	f3 0f 1e fa          	endbr64 
    1a09:	50                   	push   %rax
    1a0a:	58                   	pop    %rax
    1a0b:	48 83 ec 08          	sub    $0x8,%rsp
    1a0f:	48 8d 3d ea 17 00 00 	lea    0x17ea(%rip),%rdi        # 3200 <array.3469+0x40>
    1a16:	e8 e5 f7 ff ff       	callq  1200 <puts@plt>
    1a1b:	bf 03 00 00 00       	mov    $0x3,%edi
    1a20:	e8 fb f8 ff ff       	callq  1320 <sleep@plt>
    1a25:	48 8d 35 96 18 00 00 	lea    0x1896(%rip),%rsi        # 32c2 <array.3469+0x102>
    1a2c:	bf 01 00 00 00       	mov    $0x1,%edi
    1a31:	b8 00 00 00 00       	mov    $0x0,%eax
    1a36:	e8 95 f8 ff ff       	callq  12d0 <__printf_chk@plt>
    1a3b:	48 8b 3d 1e 3c 00 00 	mov    0x3c1e(%rip),%rdi        # 5660 <stdout@@GLIBC_2.2.5>
    1a42:	e8 69 f8 ff ff       	callq  12b0 <fflush@plt>
    1a47:	bf 01 00 00 00       	mov    $0x1,%edi
    1a4c:	e8 cf f8 ff ff       	callq  1320 <sleep@plt>
    1a51:	48 8d 3d 72 18 00 00 	lea    0x1872(%rip),%rdi        # 32ca <array.3469+0x10a>
    1a58:	e8 a3 f7 ff ff       	callq  1200 <puts@plt>
    1a5d:	bf 10 00 00 00       	mov    $0x10,%edi
    1a62:	e8 89 f8 ff ff       	callq  12f0 <exit@plt>

0000000000001a67 <invalid_phase>:
    1a67:	f3 0f 1e fa          	endbr64 
    1a6b:	50                   	push   %rax
    1a6c:	58                   	pop    %rax
    1a6d:	48 83 ec 08          	sub    $0x8,%rsp
    1a71:	48 89 fa             	mov    %rdi,%rdx
    1a74:	48 8d 35 57 18 00 00 	lea    0x1857(%rip),%rsi        # 32d2 <array.3469+0x112>
    1a7b:	bf 01 00 00 00       	mov    $0x1,%edi
    1a80:	b8 00 00 00 00       	mov    $0x0,%eax
    1a85:	e8 46 f8 ff ff       	callq  12d0 <__printf_chk@plt>
    1a8a:	bf 08 00 00 00       	mov    $0x8,%edi
    1a8f:	e8 5c f8 ff ff       	callq  12f0 <exit@plt>

0000000000001a94 <string_length>:
    1a94:	f3 0f 1e fa          	endbr64 
    1a98:	80 3f 00             	cmpb   $0x0,(%rdi)
    1a9b:	74 12                	je     1aaf <string_length+0x1b>
    1a9d:	b8 00 00 00 00       	mov    $0x0,%eax
    1aa2:	48 83 c7 01          	add    $0x1,%rdi
    1aa6:	83 c0 01             	add    $0x1,%eax
    1aa9:	80 3f 00             	cmpb   $0x0,(%rdi)
    1aac:	75 f4                	jne    1aa2 <string_length+0xe>
    1aae:	c3                   	retq   
    1aaf:	b8 00 00 00 00       	mov    $0x0,%eax
    1ab4:	c3                   	retq   

0000000000001ab5 <strings_not_equal>:
    1ab5:	f3 0f 1e fa          	endbr64 
    1ab9:	41 54                	push   %r12
    1abb:	55                   	push   %rbp
    1abc:	53                   	push   %rbx
    1abd:	48 89 fb             	mov    %rdi,%rbx
    1ac0:	48 89 f5             	mov    %rsi,%rbp
    1ac3:	e8 cc ff ff ff       	callq  1a94 <string_length>
    1ac8:	41 89 c4             	mov    %eax,%r12d
    1acb:	48 89 ef             	mov    %rbp,%rdi
    1ace:	e8 c1 ff ff ff       	callq  1a94 <string_length>
    1ad3:	89 c2                	mov    %eax,%edx
    1ad5:	b8 01 00 00 00       	mov    $0x1,%eax
    1ada:	41 39 d4             	cmp    %edx,%r12d
    1add:	75 31                	jne    1b10 <strings_not_equal+0x5b>
    1adf:	0f b6 13             	movzbl (%rbx),%edx
    1ae2:	84 d2                	test   %dl,%dl
    1ae4:	74 1e                	je     1b04 <strings_not_equal+0x4f>
    1ae6:	b8 00 00 00 00       	mov    $0x0,%eax
    1aeb:	38 54 05 00          	cmp    %dl,0x0(%rbp,%rax,1)
    1aef:	75 1a                	jne    1b0b <strings_not_equal+0x56>
    1af1:	48 83 c0 01          	add    $0x1,%rax
    1af5:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
    1af9:	84 d2                	test   %dl,%dl
    1afb:	75 ee                	jne    1aeb <strings_not_equal+0x36>
    1afd:	b8 00 00 00 00       	mov    $0x0,%eax
    1b02:	eb 0c                	jmp    1b10 <strings_not_equal+0x5b>
    1b04:	b8 00 00 00 00       	mov    $0x0,%eax
    1b09:	eb 05                	jmp    1b10 <strings_not_equal+0x5b>
    1b0b:	b8 01 00 00 00       	mov    $0x1,%eax
    1b10:	5b                   	pop    %rbx
    1b11:	5d                   	pop    %rbp
    1b12:	41 5c                	pop    %r12
    1b14:	c3                   	retq   

0000000000001b15 <initialize_bomb>:
    1b15:	f3 0f 1e fa          	endbr64 
    1b19:	48 83 ec 08          	sub    $0x8,%rsp
    1b1d:	48 8d 35 e1 fe ff ff 	lea    -0x11f(%rip),%rsi        # 1a05 <sig_handler>
    1b24:	bf 02 00 00 00       	mov    $0x2,%edi
    1b29:	e8 42 f7 ff ff       	callq  1270 <signal@plt>
    1b2e:	48 83 c4 08          	add    $0x8,%rsp
    1b32:	c3                   	retq   

0000000000001b33 <initialize_bomb_solve>:
    1b33:	f3 0f 1e fa          	endbr64 
    1b37:	c3                   	retq   

0000000000001b38 <blank_line>:
    1b38:	f3 0f 1e fa          	endbr64 
    1b3c:	55                   	push   %rbp
    1b3d:	53                   	push   %rbx
    1b3e:	48 83 ec 08          	sub    $0x8,%rsp
    1b42:	48 89 fd             	mov    %rdi,%rbp
    1b45:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1b49:	84 db                	test   %bl,%bl
    1b4b:	74 1e                	je     1b6b <blank_line+0x33>
    1b4d:	e8 de f7 ff ff       	callq  1330 <__ctype_b_loc@plt>
    1b52:	48 83 c5 01          	add    $0x1,%rbp
    1b56:	48 0f be db          	movsbq %bl,%rbx
    1b5a:	48 8b 00             	mov    (%rax),%rax
    1b5d:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    1b62:	75 e1                	jne    1b45 <blank_line+0xd>
    1b64:	b8 00 00 00 00       	mov    $0x0,%eax
    1b69:	eb 05                	jmp    1b70 <blank_line+0x38>
    1b6b:	b8 01 00 00 00       	mov    $0x1,%eax
    1b70:	48 83 c4 08          	add    $0x8,%rsp
    1b74:	5b                   	pop    %rbx
    1b75:	5d                   	pop    %rbp
    1b76:	c3                   	retq   

0000000000001b77 <skip>:
    1b77:	f3 0f 1e fa          	endbr64 
    1b7b:	55                   	push   %rbp
    1b7c:	53                   	push   %rbx
    1b7d:	48 83 ec 08          	sub    $0x8,%rsp
    1b81:	48 8d 2d 18 3b 00 00 	lea    0x3b18(%rip),%rbp        # 56a0 <input_strings>
    1b88:	48 63 05 fd 3a 00 00 	movslq 0x3afd(%rip),%rax        # 568c <num_input_strings>
    1b8f:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
    1b93:	48 c1 e7 04          	shl    $0x4,%rdi
    1b97:	48 01 ef             	add    %rbp,%rdi
    1b9a:	48 8b 15 ef 3a 00 00 	mov    0x3aef(%rip),%rdx        # 5690 <infile>
    1ba1:	be 50 00 00 00       	mov    $0x50,%esi
    1ba6:	e8 b5 f6 ff ff       	callq  1260 <fgets@plt>
    1bab:	48 89 c3             	mov    %rax,%rbx
    1bae:	48 85 c0             	test   %rax,%rax
    1bb1:	74 0c                	je     1bbf <skip+0x48>
    1bb3:	48 89 c7             	mov    %rax,%rdi
    1bb6:	e8 7d ff ff ff       	callq  1b38 <blank_line>
    1bbb:	85 c0                	test   %eax,%eax
    1bbd:	75 c9                	jne    1b88 <skip+0x11>
    1bbf:	48 89 d8             	mov    %rbx,%rax
    1bc2:	48 83 c4 08          	add    $0x8,%rsp
    1bc6:	5b                   	pop    %rbx
    1bc7:	5d                   	pop    %rbp
    1bc8:	c3                   	retq   

0000000000001bc9 <explode_bomb>:
    1bc9:	f3 0f 1e fa          	endbr64 
    1bcd:	50                   	push   %rax
    1bce:	58                   	pop    %rax
    1bcf:	48 83 ec 08          	sub    $0x8,%rsp
    1bd3:	48 8d 3d 09 17 00 00 	lea    0x1709(%rip),%rdi        # 32e3 <array.3469+0x123>
    1bda:	e8 21 f6 ff ff       	callq  1200 <puts@plt>
    1bdf:	48 8d 3d 06 17 00 00 	lea    0x1706(%rip),%rdi        # 32ec <array.3469+0x12c>
    1be6:	e8 15 f6 ff ff       	callq  1200 <puts@plt>
    1beb:	bf 08 00 00 00       	mov    $0x8,%edi
    1bf0:	e8 fb f6 ff ff       	callq  12f0 <exit@plt>

0000000000001bf5 <read_six_numbers>:
    1bf5:	f3 0f 1e fa          	endbr64 
    1bf9:	48 83 ec 08          	sub    $0x8,%rsp
    1bfd:	48 89 f2             	mov    %rsi,%rdx
    1c00:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    1c04:	48 8d 46 14          	lea    0x14(%rsi),%rax
    1c08:	50                   	push   %rax
    1c09:	48 8d 46 10          	lea    0x10(%rsi),%rax
    1c0d:	50                   	push   %rax
    1c0e:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    1c12:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    1c16:	48 8d 35 e6 16 00 00 	lea    0x16e6(%rip),%rsi        # 3303 <array.3469+0x143>
    1c1d:	b8 00 00 00 00       	mov    $0x0,%eax
    1c22:	e8 99 f6 ff ff       	callq  12c0 <__isoc99_sscanf@plt>
    1c27:	48 83 c4 10          	add    $0x10,%rsp
    1c2b:	83 f8 05             	cmp    $0x5,%eax
    1c2e:	7e 05                	jle    1c35 <read_six_numbers+0x40>
    1c30:	48 83 c4 08          	add    $0x8,%rsp
    1c34:	c3                   	retq   
    1c35:	e8 8f ff ff ff       	callq  1bc9 <explode_bomb>

0000000000001c3a <read_line>:
    1c3a:	f3 0f 1e fa          	endbr64 
    1c3e:	48 83 ec 08          	sub    $0x8,%rsp
    1c42:	b8 00 00 00 00       	mov    $0x0,%eax
    1c47:	e8 2b ff ff ff       	callq  1b77 <skip>
    1c4c:	48 85 c0             	test   %rax,%rax
    1c4f:	74 6f                	je     1cc0 <read_line+0x86>
    1c51:	8b 35 35 3a 00 00    	mov    0x3a35(%rip),%esi        # 568c <num_input_strings>
    1c57:	48 63 c6             	movslq %esi,%rax
    1c5a:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
    1c5e:	48 c1 e2 04          	shl    $0x4,%rdx
    1c62:	48 8d 05 37 3a 00 00 	lea    0x3a37(%rip),%rax        # 56a0 <input_strings>
    1c69:	48 01 c2             	add    %rax,%rdx
    1c6c:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    1c73:	b8 00 00 00 00       	mov    $0x0,%eax
    1c78:	48 89 d7             	mov    %rdx,%rdi
    1c7b:	f2 ae                	repnz scas %es:(%rdi),%al
    1c7d:	48 f7 d1             	not    %rcx
    1c80:	48 83 e9 01          	sub    $0x1,%rcx
    1c84:	83 f9 4e             	cmp    $0x4e,%ecx
    1c87:	0f 8f ab 00 00 00    	jg     1d38 <read_line+0xfe>
    1c8d:	83 e9 01             	sub    $0x1,%ecx
    1c90:	48 63 c9             	movslq %ecx,%rcx
    1c93:	48 63 c6             	movslq %esi,%rax
    1c96:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1c9a:	48 c1 e0 04          	shl    $0x4,%rax
    1c9e:	48 89 c7             	mov    %rax,%rdi
    1ca1:	48 8d 05 f8 39 00 00 	lea    0x39f8(%rip),%rax        # 56a0 <input_strings>
    1ca8:	48 01 f8             	add    %rdi,%rax
    1cab:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
    1caf:	83 c6 01             	add    $0x1,%esi
    1cb2:	89 35 d4 39 00 00    	mov    %esi,0x39d4(%rip)        # 568c <num_input_strings>
    1cb8:	48 89 d0             	mov    %rdx,%rax
    1cbb:	48 83 c4 08          	add    $0x8,%rsp
    1cbf:	c3                   	retq   
    1cc0:	48 8b 05 a9 39 00 00 	mov    0x39a9(%rip),%rax        # 5670 <stdin@@GLIBC_2.2.5>
    1cc7:	48 39 05 c2 39 00 00 	cmp    %rax,0x39c2(%rip)        # 5690 <infile>
    1cce:	74 1b                	je     1ceb <read_line+0xb1>
    1cd0:	48 8d 3d 5c 16 00 00 	lea    0x165c(%rip),%rdi        # 3333 <array.3469+0x173>
    1cd7:	e8 f4 f4 ff ff       	callq  11d0 <getenv@plt>
    1cdc:	48 85 c0             	test   %rax,%rax
    1cdf:	74 20                	je     1d01 <read_line+0xc7>
    1ce1:	bf 00 00 00 00       	mov    $0x0,%edi
    1ce6:	e8 05 f6 ff ff       	callq  12f0 <exit@plt>
    1ceb:	48 8d 3d 23 16 00 00 	lea    0x1623(%rip),%rdi        # 3315 <array.3469+0x155>
    1cf2:	e8 09 f5 ff ff       	callq  1200 <puts@plt>
    1cf7:	bf 08 00 00 00       	mov    $0x8,%edi
    1cfc:	e8 ef f5 ff ff       	callq  12f0 <exit@plt>
    1d01:	48 8b 05 68 39 00 00 	mov    0x3968(%rip),%rax        # 5670 <stdin@@GLIBC_2.2.5>
    1d08:	48 89 05 81 39 00 00 	mov    %rax,0x3981(%rip)        # 5690 <infile>
    1d0f:	b8 00 00 00 00       	mov    $0x0,%eax
    1d14:	e8 5e fe ff ff       	callq  1b77 <skip>
    1d19:	48 85 c0             	test   %rax,%rax
    1d1c:	0f 85 2f ff ff ff    	jne    1c51 <read_line+0x17>
    1d22:	48 8d 3d ec 15 00 00 	lea    0x15ec(%rip),%rdi        # 3315 <array.3469+0x155>
    1d29:	e8 d2 f4 ff ff       	callq  1200 <puts@plt>
    1d2e:	bf 00 00 00 00       	mov    $0x0,%edi
    1d33:	e8 b8 f5 ff ff       	callq  12f0 <exit@plt>
    1d38:	48 8d 3d ff 15 00 00 	lea    0x15ff(%rip),%rdi        # 333e <array.3469+0x17e>
    1d3f:	e8 bc f4 ff ff       	callq  1200 <puts@plt>
    1d44:	8b 05 42 39 00 00    	mov    0x3942(%rip),%eax        # 568c <num_input_strings>
    1d4a:	8d 50 01             	lea    0x1(%rax),%edx
    1d4d:	89 15 39 39 00 00    	mov    %edx,0x3939(%rip)        # 568c <num_input_strings>
    1d53:	48 98                	cltq   
    1d55:	48 6b c0 50          	imul   $0x50,%rax,%rax
    1d59:	48 8d 15 40 39 00 00 	lea    0x3940(%rip),%rdx        # 56a0 <input_strings>
    1d60:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    1d67:	75 6e 63 
    1d6a:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    1d71:	2a 2a 00 
    1d74:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    1d78:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    1d7d:	e8 47 fe ff ff       	callq  1bc9 <explode_bomb>

0000000000001d82 <phase_defused>:
    1d82:	f3 0f 1e fa          	endbr64 
    1d86:	48 83 ec 78          	sub    $0x78,%rsp
    1d8a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1d91:	00 00 
    1d93:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    1d98:	31 c0                	xor    %eax,%eax
    1d9a:	83 3d eb 38 00 00 06 	cmpl   $0x6,0x38eb(%rip)        # 568c <num_input_strings>
    1da1:	74 15                	je     1db8 <phase_defused+0x36>
    1da3:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    1da8:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1daf:	00 00 
    1db1:	75 73                	jne    1e26 <phase_defused+0xa4>
    1db3:	48 83 c4 78          	add    $0x78,%rsp
    1db7:	c3                   	retq   
    1db8:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    1dbd:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    1dc2:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    1dc7:	48 8d 35 8b 15 00 00 	lea    0x158b(%rip),%rsi        # 3359 <array.3469+0x199>
    1dce:	48 8d 3d bb 39 00 00 	lea    0x39bb(%rip),%rdi        # 5790 <input_strings+0xf0>
    1dd5:	e8 e6 f4 ff ff       	callq  12c0 <__isoc99_sscanf@plt>
    1dda:	83 f8 03             	cmp    $0x3,%eax
    1ddd:	74 0e                	je     1ded <phase_defused+0x6b>
    1ddf:	48 8d 3d b2 14 00 00 	lea    0x14b2(%rip),%rdi        # 3298 <array.3469+0xd8>
    1de6:	e8 15 f4 ff ff       	callq  1200 <puts@plt>
    1deb:	eb b6                	jmp    1da3 <phase_defused+0x21>
    1ded:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1df2:	48 8d 35 69 15 00 00 	lea    0x1569(%rip),%rsi        # 3362 <array.3469+0x1a2>
    1df9:	e8 b7 fc ff ff       	callq  1ab5 <strings_not_equal>
    1dfe:	85 c0                	test   %eax,%eax
    1e00:	75 dd                	jne    1ddf <phase_defused+0x5d>
    1e02:	48 8d 3d 2f 14 00 00 	lea    0x142f(%rip),%rdi        # 3238 <array.3469+0x78>
    1e09:	e8 f2 f3 ff ff       	callq  1200 <puts@plt>
    1e0e:	48 8d 3d 4b 14 00 00 	lea    0x144b(%rip),%rdi        # 3260 <array.3469+0xa0>
    1e15:	e8 e6 f3 ff ff       	callq  1200 <puts@plt>
    1e1a:	b8 00 00 00 00       	mov    $0x0,%eax
    1e1f:	e8 84 fb ff ff       	callq  19a8 <secret_phase>
    1e24:	eb b9                	jmp    1ddf <phase_defused+0x5d>
    1e26:	e8 f5 f3 ff ff       	callq  1220 <__stack_chk_fail@plt>

0000000000001e2b <sigalrm_handler>:
    1e2b:	f3 0f 1e fa          	endbr64 
    1e2f:	50                   	push   %rax
    1e30:	58                   	pop    %rax
    1e31:	48 83 ec 08          	sub    $0x8,%rsp
    1e35:	b9 00 00 00 00       	mov    $0x0,%ecx
    1e3a:	48 8d 15 8f 15 00 00 	lea    0x158f(%rip),%rdx        # 33d0 <array.3469+0x210>
    1e41:	be 01 00 00 00       	mov    $0x1,%esi
    1e46:	48 8b 3d 33 38 00 00 	mov    0x3833(%rip),%rdi        # 5680 <stderr@@GLIBC_2.2.5>
    1e4d:	b8 00 00 00 00       	mov    $0x0,%eax
    1e52:	e8 b9 f4 ff ff       	callq  1310 <__fprintf_chk@plt>
    1e57:	bf 01 00 00 00       	mov    $0x1,%edi
    1e5c:	e8 8f f4 ff ff       	callq  12f0 <exit@plt>

0000000000001e61 <rio_readlineb>:
    1e61:	41 56                	push   %r14
    1e63:	41 55                	push   %r13
    1e65:	41 54                	push   %r12
    1e67:	55                   	push   %rbp
    1e68:	53                   	push   %rbx
    1e69:	48 89 f5             	mov    %rsi,%rbp
    1e6c:	48 83 fa 01          	cmp    $0x1,%rdx
    1e70:	0f 86 90 00 00 00    	jbe    1f06 <rio_readlineb+0xa5>
    1e76:	48 89 fb             	mov    %rdi,%rbx
    1e79:	4c 8d 74 16 ff       	lea    -0x1(%rsi,%rdx,1),%r14
    1e7e:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1e84:	4c 8d 67 10          	lea    0x10(%rdi),%r12
    1e88:	eb 54                	jmp    1ede <rio_readlineb+0x7d>
    1e8a:	e8 51 f3 ff ff       	callq  11e0 <__errno_location@plt>
    1e8f:	83 38 04             	cmpl   $0x4,(%rax)
    1e92:	75 53                	jne    1ee7 <rio_readlineb+0x86>
    1e94:	ba 00 20 00 00       	mov    $0x2000,%edx
    1e99:	4c 89 e6             	mov    %r12,%rsi
    1e9c:	8b 3b                	mov    (%rbx),%edi
    1e9e:	e8 ad f3 ff ff       	callq  1250 <read@plt>
    1ea3:	89 c2                	mov    %eax,%edx
    1ea5:	89 43 04             	mov    %eax,0x4(%rbx)
    1ea8:	85 c0                	test   %eax,%eax
    1eaa:	78 de                	js     1e8a <rio_readlineb+0x29>
    1eac:	85 c0                	test   %eax,%eax
    1eae:	74 40                	je     1ef0 <rio_readlineb+0x8f>
    1eb0:	4c 89 63 08          	mov    %r12,0x8(%rbx)
    1eb4:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1eb8:	0f b6 08             	movzbl (%rax),%ecx
    1ebb:	48 83 c0 01          	add    $0x1,%rax
    1ebf:	48 89 43 08          	mov    %rax,0x8(%rbx)
    1ec3:	83 ea 01             	sub    $0x1,%edx
    1ec6:	89 53 04             	mov    %edx,0x4(%rbx)
    1ec9:	48 83 c5 01          	add    $0x1,%rbp
    1ecd:	88 4d ff             	mov    %cl,-0x1(%rbp)
    1ed0:	80 f9 0a             	cmp    $0xa,%cl
    1ed3:	74 3c                	je     1f11 <rio_readlineb+0xb0>
    1ed5:	41 83 c5 01          	add    $0x1,%r13d
    1ed9:	4c 39 f5             	cmp    %r14,%rbp
    1edc:	74 30                	je     1f0e <rio_readlineb+0xad>
    1ede:	8b 53 04             	mov    0x4(%rbx),%edx
    1ee1:	85 d2                	test   %edx,%edx
    1ee3:	7e af                	jle    1e94 <rio_readlineb+0x33>
    1ee5:	eb cd                	jmp    1eb4 <rio_readlineb+0x53>
    1ee7:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1eee:	eb 05                	jmp    1ef5 <rio_readlineb+0x94>
    1ef0:	b8 00 00 00 00       	mov    $0x0,%eax
    1ef5:	85 c0                	test   %eax,%eax
    1ef7:	75 28                	jne    1f21 <rio_readlineb+0xc0>
    1ef9:	b8 00 00 00 00       	mov    $0x0,%eax
    1efe:	41 83 fd 01          	cmp    $0x1,%r13d
    1f02:	75 0d                	jne    1f11 <rio_readlineb+0xb0>
    1f04:	eb 12                	jmp    1f18 <rio_readlineb+0xb7>
    1f06:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1f0c:	eb 03                	jmp    1f11 <rio_readlineb+0xb0>
    1f0e:	4c 89 f5             	mov    %r14,%rbp
    1f11:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
    1f15:	49 63 c5             	movslq %r13d,%rax
    1f18:	5b                   	pop    %rbx
    1f19:	5d                   	pop    %rbp
    1f1a:	41 5c                	pop    %r12
    1f1c:	41 5d                	pop    %r13
    1f1e:	41 5e                	pop    %r14
    1f20:	c3                   	retq   
    1f21:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1f28:	eb ee                	jmp    1f18 <rio_readlineb+0xb7>

0000000000001f2a <submitr>:
    1f2a:	f3 0f 1e fa          	endbr64 
    1f2e:	41 57                	push   %r15
    1f30:	41 56                	push   %r14
    1f32:	41 55                	push   %r13
    1f34:	41 54                	push   %r12
    1f36:	55                   	push   %rbp
    1f37:	53                   	push   %rbx
    1f38:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
    1f3f:	ff 
    1f40:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1f47:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1f4c:	4c 39 dc             	cmp    %r11,%rsp
    1f4f:	75 ef                	jne    1f40 <submitr+0x16>
    1f51:	48 83 ec 68          	sub    $0x68,%rsp
    1f55:	49 89 fd             	mov    %rdi,%r13
    1f58:	89 f5                	mov    %esi,%ebp
    1f5a:	48 89 14 24          	mov    %rdx,(%rsp)
    1f5e:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    1f63:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
    1f68:	4c 89 4c 24 10       	mov    %r9,0x10(%rsp)
    1f6d:	48 8b 9c 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbx
    1f74:	00 
    1f75:	4c 8b bc 24 a8 a0 00 	mov    0xa0a8(%rsp),%r15
    1f7c:	00 
    1f7d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1f84:	00 00 
    1f86:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
    1f8d:	00 
    1f8e:	31 c0                	xor    %eax,%eax
    1f90:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
    1f97:	00 
    1f98:	ba 00 00 00 00       	mov    $0x0,%edx
    1f9d:	be 01 00 00 00       	mov    $0x1,%esi
    1fa2:	bf 02 00 00 00       	mov    $0x2,%edi
    1fa7:	e8 a4 f3 ff ff       	callq  1350 <socket@plt>
    1fac:	85 c0                	test   %eax,%eax
    1fae:	0f 88 17 01 00 00    	js     20cb <submitr+0x1a1>
    1fb4:	41 89 c4             	mov    %eax,%r12d
    1fb7:	4c 89 ef             	mov    %r13,%rdi
    1fba:	e8 c1 f2 ff ff       	callq  1280 <gethostbyname@plt>
    1fbf:	48 85 c0             	test   %rax,%rax
    1fc2:	0f 84 53 01 00 00    	je     211b <submitr+0x1f1>
    1fc8:	4c 8d 6c 24 30       	lea    0x30(%rsp),%r13
    1fcd:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
    1fd4:	00 00 
    1fd6:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
    1fdd:	00 00 
    1fdf:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
    1fe6:	48 63 50 14          	movslq 0x14(%rax),%rdx
    1fea:	48 8b 40 18          	mov    0x18(%rax),%rax
    1fee:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
    1ff3:	b9 0c 00 00 00       	mov    $0xc,%ecx
    1ff8:	48 8b 30             	mov    (%rax),%rsi
    1ffb:	e8 90 f2 ff ff       	callq  1290 <__memmove_chk@plt>
    2000:	66 c1 c5 08          	rol    $0x8,%bp
    2004:	66 89 6c 24 32       	mov    %bp,0x32(%rsp)
    2009:	ba 10 00 00 00       	mov    $0x10,%edx
    200e:	4c 89 ee             	mov    %r13,%rsi
    2011:	44 89 e7             	mov    %r12d,%edi
    2014:	e8 e7 f2 ff ff       	callq  1300 <connect@plt>
    2019:	85 c0                	test   %eax,%eax
    201b:	0f 88 65 01 00 00    	js     2186 <submitr+0x25c>
    2021:	49 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%r9
    2028:	b8 00 00 00 00       	mov    $0x0,%eax
    202d:	4c 89 c9             	mov    %r9,%rcx
    2030:	48 89 df             	mov    %rbx,%rdi
    2033:	f2 ae                	repnz scas %es:(%rdi),%al
    2035:	48 f7 d1             	not    %rcx
    2038:	48 89 ce             	mov    %rcx,%rsi
    203b:	4c 89 c9             	mov    %r9,%rcx
    203e:	48 8b 3c 24          	mov    (%rsp),%rdi
    2042:	f2 ae                	repnz scas %es:(%rdi),%al
    2044:	49 89 c8             	mov    %rcx,%r8
    2047:	4c 89 c9             	mov    %r9,%rcx
    204a:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    204f:	f2 ae                	repnz scas %es:(%rdi),%al
    2051:	48 89 ca             	mov    %rcx,%rdx
    2054:	48 f7 d2             	not    %rdx
    2057:	4c 89 c9             	mov    %r9,%rcx
    205a:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    205f:	f2 ae                	repnz scas %es:(%rdi),%al
    2061:	4c 29 c2             	sub    %r8,%rdx
    2064:	48 29 ca             	sub    %rcx,%rdx
    2067:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
    206c:	48 8d 44 02 7b       	lea    0x7b(%rdx,%rax,1),%rax
    2071:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    2077:	0f 87 66 01 00 00    	ja     21e3 <submitr+0x2b9>
    207d:	48 8d 94 24 50 40 00 	lea    0x4050(%rsp),%rdx
    2084:	00 
    2085:	b9 00 04 00 00       	mov    $0x400,%ecx
    208a:	b8 00 00 00 00       	mov    $0x0,%eax
    208f:	48 89 d7             	mov    %rdx,%rdi
    2092:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    2095:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    209c:	48 89 df             	mov    %rbx,%rdi
    209f:	f2 ae                	repnz scas %es:(%rdi),%al
    20a1:	48 f7 d1             	not    %rcx
    20a4:	48 8d 41 ff          	lea    -0x1(%rcx),%rax
    20a8:	83 f9 01             	cmp    $0x1,%ecx
    20ab:	0f 84 08 05 00 00    	je     25b9 <submitr+0x68f>
    20b1:	8d 40 ff             	lea    -0x1(%rax),%eax
    20b4:	4c 8d 74 03 01       	lea    0x1(%rbx,%rax,1),%r14
    20b9:	48 89 d5             	mov    %rdx,%rbp
    20bc:	49 bd d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r13
    20c3:	00 20 00 
    20c6:	e9 a6 01 00 00       	jmpq   2271 <submitr+0x347>
    20cb:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    20d2:	3a 20 43 
    20d5:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    20dc:	20 75 6e 
    20df:	49 89 07             	mov    %rax,(%r15)
    20e2:	49 89 57 08          	mov    %rdx,0x8(%r15)
    20e6:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    20ed:	74 6f 20 
    20f0:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    20f7:	65 20 73 
    20fa:	49 89 47 10          	mov    %rax,0x10(%r15)
    20fe:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2102:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    2109:	65 
    210a:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    2111:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2116:	e9 16 03 00 00       	jmpq   2431 <submitr+0x507>
    211b:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2122:	3a 20 44 
    2125:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    212c:	20 75 6e 
    212f:	49 89 07             	mov    %rax,(%r15)
    2132:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2136:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    213d:	74 6f 20 
    2140:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2147:	76 65 20 
    214a:	49 89 47 10          	mov    %rax,0x10(%r15)
    214e:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2152:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2159:	72 20 61 
    215c:	49 89 47 20          	mov    %rax,0x20(%r15)
    2160:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    2167:	65 
    2168:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    216f:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    2174:	44 89 e7             	mov    %r12d,%edi
    2177:	e8 c4 f0 ff ff       	callq  1240 <close@plt>
    217c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2181:	e9 ab 02 00 00       	jmpq   2431 <submitr+0x507>
    2186:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    218d:	3a 20 55 
    2190:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    2197:	20 74 6f 
    219a:	49 89 07             	mov    %rax,(%r15)
    219d:	49 89 57 08          	mov    %rdx,0x8(%r15)
    21a1:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    21a8:	65 63 74 
    21ab:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    21b2:	68 65 20 
    21b5:	49 89 47 10          	mov    %rax,0x10(%r15)
    21b9:	49 89 57 18          	mov    %rdx,0x18(%r15)
    21bd:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    21c4:	76 
    21c5:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    21cc:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    21d1:	44 89 e7             	mov    %r12d,%edi
    21d4:	e8 67 f0 ff ff       	callq  1240 <close@plt>
    21d9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    21de:	e9 4e 02 00 00       	jmpq   2431 <submitr+0x507>
    21e3:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    21ea:	3a 20 52 
    21ed:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    21f4:	20 73 74 
    21f7:	49 89 07             	mov    %rax,(%r15)
    21fa:	49 89 57 08          	mov    %rdx,0x8(%r15)
    21fe:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    2205:	74 6f 6f 
    2208:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    220f:	65 2e 20 
    2212:	49 89 47 10          	mov    %rax,0x10(%r15)
    2216:	49 89 57 18          	mov    %rdx,0x18(%r15)
    221a:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    2221:	61 73 65 
    2224:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    222b:	49 54 52 
    222e:	49 89 47 20          	mov    %rax,0x20(%r15)
    2232:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2236:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    223d:	55 46 00 
    2240:	49 89 47 30          	mov    %rax,0x30(%r15)
    2244:	44 89 e7             	mov    %r12d,%edi
    2247:	e8 f4 ef ff ff       	callq  1240 <close@plt>
    224c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2251:	e9 db 01 00 00       	jmpq   2431 <submitr+0x507>
    2256:	49 0f a3 c5          	bt     %rax,%r13
    225a:	73 21                	jae    227d <submitr+0x353>
    225c:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    2260:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2264:	48 83 c3 01          	add    $0x1,%rbx
    2268:	4c 39 f3             	cmp    %r14,%rbx
    226b:	0f 84 48 03 00 00    	je     25b9 <submitr+0x68f>
    2271:	44 0f b6 03          	movzbl (%rbx),%r8d
    2275:	41 8d 40 d6          	lea    -0x2a(%r8),%eax
    2279:	3c 35                	cmp    $0x35,%al
    227b:	76 d9                	jbe    2256 <submitr+0x32c>
    227d:	44 89 c0             	mov    %r8d,%eax
    2280:	83 e0 df             	and    $0xffffffdf,%eax
    2283:	83 e8 41             	sub    $0x41,%eax
    2286:	3c 19                	cmp    $0x19,%al
    2288:	76 d2                	jbe    225c <submitr+0x332>
    228a:	41 80 f8 20          	cmp    $0x20,%r8b
    228e:	74 63                	je     22f3 <submitr+0x3c9>
    2290:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    2294:	3c 5f                	cmp    $0x5f,%al
    2296:	76 0a                	jbe    22a2 <submitr+0x378>
    2298:	41 80 f8 09          	cmp    $0x9,%r8b
    229c:	0f 85 8a 02 00 00    	jne    252c <submitr+0x602>
    22a2:	48 8d bc 24 50 80 00 	lea    0x8050(%rsp),%rdi
    22a9:	00 
    22aa:	45 0f b6 c0          	movzbl %r8b,%r8d
    22ae:	48 8d 0d f1 11 00 00 	lea    0x11f1(%rip),%rcx        # 34a6 <array.3469+0x2e6>
    22b5:	ba 08 00 00 00       	mov    $0x8,%edx
    22ba:	be 01 00 00 00       	mov    $0x1,%esi
    22bf:	b8 00 00 00 00       	mov    $0x0,%eax
    22c4:	e8 77 f0 ff ff       	callq  1340 <__sprintf_chk@plt>
    22c9:	0f b6 84 24 50 80 00 	movzbl 0x8050(%rsp),%eax
    22d0:	00 
    22d1:	88 45 00             	mov    %al,0x0(%rbp)
    22d4:	0f b6 84 24 51 80 00 	movzbl 0x8051(%rsp),%eax
    22db:	00 
    22dc:	88 45 01             	mov    %al,0x1(%rbp)
    22df:	0f b6 84 24 52 80 00 	movzbl 0x8052(%rsp),%eax
    22e6:	00 
    22e7:	88 45 02             	mov    %al,0x2(%rbp)
    22ea:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    22ee:	e9 71 ff ff ff       	jmpq   2264 <submitr+0x33a>
    22f3:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    22f7:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    22fb:	e9 64 ff ff ff       	jmpq   2264 <submitr+0x33a>
    2300:	48 01 c5             	add    %rax,%rbp
    2303:	48 29 c3             	sub    %rax,%rbx
    2306:	0f 84 25 03 00 00    	je     2631 <submitr+0x707>
    230c:	48 89 da             	mov    %rbx,%rdx
    230f:	48 89 ee             	mov    %rbp,%rsi
    2312:	44 89 e7             	mov    %r12d,%edi
    2315:	e8 f6 ee ff ff       	callq  1210 <write@plt>
    231a:	48 85 c0             	test   %rax,%rax
    231d:	7f e1                	jg     2300 <submitr+0x3d6>
    231f:	e8 bc ee ff ff       	callq  11e0 <__errno_location@plt>
    2324:	83 38 04             	cmpl   $0x4,(%rax)
    2327:	0f 85 a0 01 00 00    	jne    24cd <submitr+0x5a3>
    232d:	4c 89 e8             	mov    %r13,%rax
    2330:	eb ce                	jmp    2300 <submitr+0x3d6>
    2332:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2339:	3a 20 43 
    233c:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2343:	20 75 6e 
    2346:	49 89 07             	mov    %rax,(%r15)
    2349:	49 89 57 08          	mov    %rdx,0x8(%r15)
    234d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2354:	74 6f 20 
    2357:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    235e:	66 69 72 
    2361:	49 89 47 10          	mov    %rax,0x10(%r15)
    2365:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2369:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    2370:	61 64 65 
    2373:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    237a:	6d 20 73 
    237d:	49 89 47 20          	mov    %rax,0x20(%r15)
    2381:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2385:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    238c:	65 
    238d:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    2394:	44 89 e7             	mov    %r12d,%edi
    2397:	e8 a4 ee ff ff       	callq  1240 <close@plt>
    239c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    23a1:	e9 8b 00 00 00       	jmpq   2431 <submitr+0x507>
    23a6:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
    23ad:	00 
    23ae:	48 8d 0d 43 10 00 00 	lea    0x1043(%rip),%rcx        # 33f8 <array.3469+0x238>
    23b5:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    23bc:	be 01 00 00 00       	mov    $0x1,%esi
    23c1:	4c 89 ff             	mov    %r15,%rdi
    23c4:	b8 00 00 00 00       	mov    $0x0,%eax
    23c9:	e8 72 ef ff ff       	callq  1340 <__sprintf_chk@plt>
    23ce:	44 89 e7             	mov    %r12d,%edi
    23d1:	e8 6a ee ff ff       	callq  1240 <close@plt>
    23d6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    23db:	eb 54                	jmp    2431 <submitr+0x507>
    23dd:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    23e4:	00 
    23e5:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    23ea:	ba 00 20 00 00       	mov    $0x2000,%edx
    23ef:	e8 6d fa ff ff       	callq  1e61 <rio_readlineb>
    23f4:	48 85 c0             	test   %rax,%rax
    23f7:	7e 61                	jle    245a <submitr+0x530>
    23f9:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2400:	00 
    2401:	4c 89 ff             	mov    %r15,%rdi
    2404:	e8 e7 ed ff ff       	callq  11f0 <strcpy@plt>
    2409:	44 89 e7             	mov    %r12d,%edi
    240c:	e8 2f ee ff ff       	callq  1240 <close@plt>
    2411:	b9 03 00 00 00       	mov    $0x3,%ecx
    2416:	48 8d 3d a4 10 00 00 	lea    0x10a4(%rip),%rdi        # 34c1 <array.3469+0x301>
    241d:	4c 89 fe             	mov    %r15,%rsi
    2420:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2422:	0f 97 c0             	seta   %al
    2425:	1c 00                	sbb    $0x0,%al
    2427:	84 c0                	test   %al,%al
    2429:	0f 95 c0             	setne  %al
    242c:	0f b6 c0             	movzbl %al,%eax
    242f:	f7 d8                	neg    %eax
    2431:	48 8b 94 24 58 a0 00 	mov    0xa058(%rsp),%rdx
    2438:	00 
    2439:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
    2440:	00 00 
    2442:	0f 85 0c 03 00 00    	jne    2754 <submitr+0x82a>
    2448:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
    244f:	5b                   	pop    %rbx
    2450:	5d                   	pop    %rbp
    2451:	41 5c                	pop    %r12
    2453:	41 5d                	pop    %r13
    2455:	41 5e                	pop    %r14
    2457:	41 5f                	pop    %r15
    2459:	c3                   	retq   
    245a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2461:	3a 20 43 
    2464:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    246b:	20 75 6e 
    246e:	49 89 07             	mov    %rax,(%r15)
    2471:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2475:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    247c:	74 6f 20 
    247f:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2486:	73 74 61 
    2489:	49 89 47 10          	mov    %rax,0x10(%r15)
    248d:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2491:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    2498:	65 73 73 
    249b:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    24a2:	72 6f 6d 
    24a5:	49 89 47 20          	mov    %rax,0x20(%r15)
    24a9:	49 89 57 28          	mov    %rdx,0x28(%r15)
    24ad:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    24b4:	65 72 00 
    24b7:	49 89 47 30          	mov    %rax,0x30(%r15)
    24bb:	44 89 e7             	mov    %r12d,%edi
    24be:	e8 7d ed ff ff       	callq  1240 <close@plt>
    24c3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    24c8:	e9 64 ff ff ff       	jmpq   2431 <submitr+0x507>
    24cd:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    24d4:	3a 20 43 
    24d7:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    24de:	20 75 6e 
    24e1:	49 89 07             	mov    %rax,(%r15)
    24e4:	49 89 57 08          	mov    %rdx,0x8(%r15)
    24e8:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    24ef:	74 6f 20 
    24f2:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    24f9:	20 74 6f 
    24fc:	49 89 47 10          	mov    %rax,0x10(%r15)
    2500:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2504:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    250b:	73 65 72 
    250e:	49 89 47 20          	mov    %rax,0x20(%r15)
    2512:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    2519:	00 
    251a:	44 89 e7             	mov    %r12d,%edi
    251d:	e8 1e ed ff ff       	callq  1240 <close@plt>
    2522:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2527:	e9 05 ff ff ff       	jmpq   2431 <submitr+0x507>
    252c:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2533:	3a 20 52 
    2536:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    253d:	20 73 74 
    2540:	49 89 07             	mov    %rax,(%r15)
    2543:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2547:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    254e:	63 6f 6e 
    2551:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    2558:	20 61 6e 
    255b:	49 89 47 10          	mov    %rax,0x10(%r15)
    255f:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2563:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    256a:	67 61 6c 
    256d:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    2574:	6e 70 72 
    2577:	49 89 47 20          	mov    %rax,0x20(%r15)
    257b:	49 89 57 28          	mov    %rdx,0x28(%r15)
    257f:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2586:	6c 65 20 
    2589:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    2590:	63 74 65 
    2593:	49 89 47 30          	mov    %rax,0x30(%r15)
    2597:	49 89 57 38          	mov    %rdx,0x38(%r15)
    259b:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    25a2:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    25a7:	44 89 e7             	mov    %r12d,%edi
    25aa:	e8 91 ec ff ff       	callq  1240 <close@plt>
    25af:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    25b4:	e9 78 fe ff ff       	jmpq   2431 <submitr+0x507>
    25b9:	48 8d 9c 24 50 20 00 	lea    0x2050(%rsp),%rbx
    25c0:	00 
    25c1:	48 83 ec 08          	sub    $0x8,%rsp
    25c5:	48 8d 84 24 58 40 00 	lea    0x4058(%rsp),%rax
    25cc:	00 
    25cd:	50                   	push   %rax
    25ce:	ff 74 24 20          	pushq  0x20(%rsp)
    25d2:	ff 74 24 30          	pushq  0x30(%rsp)
    25d6:	4c 8b 4c 24 28       	mov    0x28(%rsp),%r9
    25db:	4c 8b 44 24 20       	mov    0x20(%rsp),%r8
    25e0:	48 8d 0d 41 0e 00 00 	lea    0xe41(%rip),%rcx        # 3428 <array.3469+0x268>
    25e7:	ba 00 20 00 00       	mov    $0x2000,%edx
    25ec:	be 01 00 00 00       	mov    $0x1,%esi
    25f1:	48 89 df             	mov    %rbx,%rdi
    25f4:	b8 00 00 00 00       	mov    $0x0,%eax
    25f9:	e8 42 ed ff ff       	callq  1340 <__sprintf_chk@plt>
    25fe:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    2605:	b8 00 00 00 00       	mov    $0x0,%eax
    260a:	48 89 df             	mov    %rbx,%rdi
    260d:	f2 ae                	repnz scas %es:(%rdi),%al
    260f:	48 f7 d1             	not    %rcx
    2612:	48 83 c4 20          	add    $0x20,%rsp
    2616:	48 8d ac 24 50 20 00 	lea    0x2050(%rsp),%rbp
    261d:	00 
    261e:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    2624:	48 89 cb             	mov    %rcx,%rbx
    2627:	48 83 eb 01          	sub    $0x1,%rbx
    262b:	0f 85 db fc ff ff    	jne    230c <submitr+0x3e2>
    2631:	44 89 64 24 40       	mov    %r12d,0x40(%rsp)
    2636:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%rsp)
    263d:	00 
    263e:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2643:	48 8d 44 24 50       	lea    0x50(%rsp),%rax
    2648:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
    264d:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2654:	00 
    2655:	ba 00 20 00 00       	mov    $0x2000,%edx
    265a:	e8 02 f8 ff ff       	callq  1e61 <rio_readlineb>
    265f:	48 85 c0             	test   %rax,%rax
    2662:	0f 8e ca fc ff ff    	jle    2332 <submitr+0x408>
    2668:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
    266d:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
    2674:	00 
    2675:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    267c:	00 
    267d:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
    2684:	00 
    2685:	48 8d 35 21 0e 00 00 	lea    0xe21(%rip),%rsi        # 34ad <array.3469+0x2ed>
    268c:	b8 00 00 00 00       	mov    $0x0,%eax
    2691:	e8 2a ec ff ff       	callq  12c0 <__isoc99_sscanf@plt>
    2696:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
    269b:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    26a2:	0f 85 fe fc ff ff    	jne    23a6 <submitr+0x47c>
    26a8:	48 8d 1d 0f 0e 00 00 	lea    0xe0f(%rip),%rbx        # 34be <array.3469+0x2fe>
    26af:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    26b6:	00 
    26b7:	b9 03 00 00 00       	mov    $0x3,%ecx
    26bc:	48 89 df             	mov    %rbx,%rdi
    26bf:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    26c1:	0f 97 c0             	seta   %al
    26c4:	1c 00                	sbb    $0x0,%al
    26c6:	84 c0                	test   %al,%al
    26c8:	0f 84 0f fd ff ff    	je     23dd <submitr+0x4b3>
    26ce:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    26d5:	00 
    26d6:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    26db:	ba 00 20 00 00       	mov    $0x2000,%edx
    26e0:	e8 7c f7 ff ff       	callq  1e61 <rio_readlineb>
    26e5:	48 85 c0             	test   %rax,%rax
    26e8:	7f c5                	jg     26af <submitr+0x785>
    26ea:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    26f1:	3a 20 43 
    26f4:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    26fb:	20 75 6e 
    26fe:	49 89 07             	mov    %rax,(%r15)
    2701:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2705:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    270c:	74 6f 20 
    270f:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    2716:	68 65 61 
    2719:	49 89 47 10          	mov    %rax,0x10(%r15)
    271d:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2721:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    2728:	66 72 6f 
    272b:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    2732:	76 65 72 
    2735:	49 89 47 20          	mov    %rax,0x20(%r15)
    2739:	49 89 57 28          	mov    %rdx,0x28(%r15)
    273d:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    2742:	44 89 e7             	mov    %r12d,%edi
    2745:	e8 f6 ea ff ff       	callq  1240 <close@plt>
    274a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    274f:	e9 dd fc ff ff       	jmpq   2431 <submitr+0x507>
    2754:	e8 c7 ea ff ff       	callq  1220 <__stack_chk_fail@plt>

0000000000002759 <init_timeout>:
    2759:	f3 0f 1e fa          	endbr64 
    275d:	85 ff                	test   %edi,%edi
    275f:	75 01                	jne    2762 <init_timeout+0x9>
    2761:	c3                   	retq   
    2762:	53                   	push   %rbx
    2763:	89 fb                	mov    %edi,%ebx
    2765:	48 8d 35 bf f6 ff ff 	lea    -0x941(%rip),%rsi        # 1e2b <sigalrm_handler>
    276c:	bf 0e 00 00 00       	mov    $0xe,%edi
    2771:	e8 fa ea ff ff       	callq  1270 <signal@plt>
    2776:	85 db                	test   %ebx,%ebx
    2778:	bf 00 00 00 00       	mov    $0x0,%edi
    277d:	0f 49 fb             	cmovns %ebx,%edi
    2780:	e8 ab ea ff ff       	callq  1230 <alarm@plt>
    2785:	5b                   	pop    %rbx
    2786:	c3                   	retq   

0000000000002787 <init_driver>:
    2787:	f3 0f 1e fa          	endbr64 
    278b:	41 54                	push   %r12
    278d:	55                   	push   %rbp
    278e:	53                   	push   %rbx
    278f:	48 83 ec 20          	sub    $0x20,%rsp
    2793:	48 89 fd             	mov    %rdi,%rbp
    2796:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    279d:	00 00 
    279f:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    27a4:	31 c0                	xor    %eax,%eax
    27a6:	be 01 00 00 00       	mov    $0x1,%esi
    27ab:	bf 0d 00 00 00       	mov    $0xd,%edi
    27b0:	e8 bb ea ff ff       	callq  1270 <signal@plt>
    27b5:	be 01 00 00 00       	mov    $0x1,%esi
    27ba:	bf 1d 00 00 00       	mov    $0x1d,%edi
    27bf:	e8 ac ea ff ff       	callq  1270 <signal@plt>
    27c4:	be 01 00 00 00       	mov    $0x1,%esi
    27c9:	bf 1d 00 00 00       	mov    $0x1d,%edi
    27ce:	e8 9d ea ff ff       	callq  1270 <signal@plt>
    27d3:	ba 00 00 00 00       	mov    $0x0,%edx
    27d8:	be 01 00 00 00       	mov    $0x1,%esi
    27dd:	bf 02 00 00 00       	mov    $0x2,%edi
    27e2:	e8 69 eb ff ff       	callq  1350 <socket@plt>
    27e7:	85 c0                	test   %eax,%eax
    27e9:	0f 88 9c 00 00 00    	js     288b <init_driver+0x104>
    27ef:	89 c3                	mov    %eax,%ebx
    27f1:	48 8d 3d cc 0c 00 00 	lea    0xccc(%rip),%rdi        # 34c4 <array.3469+0x304>
    27f8:	e8 83 ea ff ff       	callq  1280 <gethostbyname@plt>
    27fd:	48 85 c0             	test   %rax,%rax
    2800:	0f 84 d1 00 00 00    	je     28d7 <init_driver+0x150>
    2806:	49 89 e4             	mov    %rsp,%r12
    2809:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    2810:	00 
    2811:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    2818:	00 00 
    281a:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    2820:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2824:	48 8b 40 18          	mov    0x18(%rax),%rax
    2828:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    282d:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2832:	48 8b 30             	mov    (%rax),%rsi
    2835:	e8 56 ea ff ff       	callq  1290 <__memmove_chk@plt>
    283a:	66 c7 44 24 02 3b 6e 	movw   $0x6e3b,0x2(%rsp)
    2841:	ba 10 00 00 00       	mov    $0x10,%edx
    2846:	4c 89 e6             	mov    %r12,%rsi
    2849:	89 df                	mov    %ebx,%edi
    284b:	e8 b0 ea ff ff       	callq  1300 <connect@plt>
    2850:	85 c0                	test   %eax,%eax
    2852:	0f 88 e7 00 00 00    	js     293f <init_driver+0x1b8>
    2858:	89 df                	mov    %ebx,%edi
    285a:	e8 e1 e9 ff ff       	callq  1240 <close@plt>
    285f:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    2865:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    2869:	b8 00 00 00 00       	mov    $0x0,%eax
    286e:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    2873:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    287a:	00 00 
    287c:	0f 85 f5 00 00 00    	jne    2977 <init_driver+0x1f0>
    2882:	48 83 c4 20          	add    $0x20,%rsp
    2886:	5b                   	pop    %rbx
    2887:	5d                   	pop    %rbp
    2888:	41 5c                	pop    %r12
    288a:	c3                   	retq   
    288b:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2892:	3a 20 43 
    2895:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    289c:	20 75 6e 
    289f:	48 89 45 00          	mov    %rax,0x0(%rbp)
    28a3:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    28a7:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    28ae:	74 6f 20 
    28b1:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    28b8:	65 20 73 
    28bb:	48 89 45 10          	mov    %rax,0x10(%rbp)
    28bf:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    28c3:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    28ca:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    28d0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    28d5:	eb 97                	jmp    286e <init_driver+0xe7>
    28d7:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    28de:	3a 20 44 
    28e1:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    28e8:	20 75 6e 
    28eb:	48 89 45 00          	mov    %rax,0x0(%rbp)
    28ef:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    28f3:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    28fa:	74 6f 20 
    28fd:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2904:	76 65 20 
    2907:	48 89 45 10          	mov    %rax,0x10(%rbp)
    290b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    290f:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2916:	72 20 61 
    2919:	48 89 45 20          	mov    %rax,0x20(%rbp)
    291d:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    2924:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    292a:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    292e:	89 df                	mov    %ebx,%edi
    2930:	e8 0b e9 ff ff       	callq  1240 <close@plt>
    2935:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    293a:	e9 2f ff ff ff       	jmpq   286e <init_driver+0xe7>
    293f:	4c 8d 05 7e 0b 00 00 	lea    0xb7e(%rip),%r8        # 34c4 <array.3469+0x304>
    2946:	48 8d 0d 33 0b 00 00 	lea    0xb33(%rip),%rcx        # 3480 <array.3469+0x2c0>
    294d:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2954:	be 01 00 00 00       	mov    $0x1,%esi
    2959:	48 89 ef             	mov    %rbp,%rdi
    295c:	b8 00 00 00 00       	mov    $0x0,%eax
    2961:	e8 da e9 ff ff       	callq  1340 <__sprintf_chk@plt>
    2966:	89 df                	mov    %ebx,%edi
    2968:	e8 d3 e8 ff ff       	callq  1240 <close@plt>
    296d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2972:	e9 f7 fe ff ff       	jmpq   286e <init_driver+0xe7>
    2977:	e8 a4 e8 ff ff       	callq  1220 <__stack_chk_fail@plt>

000000000000297c <driver_post>:
    297c:	f3 0f 1e fa          	endbr64 
    2980:	53                   	push   %rbx
    2981:	4c 89 c3             	mov    %r8,%rbx
    2984:	85 c9                	test   %ecx,%ecx
    2986:	75 17                	jne    299f <driver_post+0x23>
    2988:	48 85 ff             	test   %rdi,%rdi
    298b:	74 05                	je     2992 <driver_post+0x16>
    298d:	80 3f 00             	cmpb   $0x0,(%rdi)
    2990:	75 33                	jne    29c5 <driver_post+0x49>
    2992:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2997:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    299b:	89 c8                	mov    %ecx,%eax
    299d:	5b                   	pop    %rbx
    299e:	c3                   	retq   
    299f:	48 8d 35 36 0b 00 00 	lea    0xb36(%rip),%rsi        # 34dc <array.3469+0x31c>
    29a6:	bf 01 00 00 00       	mov    $0x1,%edi
    29ab:	b8 00 00 00 00       	mov    $0x0,%eax
    29b0:	e8 1b e9 ff ff       	callq  12d0 <__printf_chk@plt>
    29b5:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    29ba:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    29be:	b8 00 00 00 00       	mov    $0x0,%eax
    29c3:	eb d8                	jmp    299d <driver_post+0x21>
    29c5:	41 50                	push   %r8
    29c7:	52                   	push   %rdx
    29c8:	4c 8d 0d 24 0b 00 00 	lea    0xb24(%rip),%r9        # 34f3 <array.3469+0x333>
    29cf:	49 89 f0             	mov    %rsi,%r8
    29d2:	48 89 f9             	mov    %rdi,%rcx
    29d5:	48 8d 15 1f 0b 00 00 	lea    0xb1f(%rip),%rdx        # 34fb <array.3469+0x33b>
    29dc:	be 6e 3b 00 00       	mov    $0x3b6e,%esi
    29e1:	48 8d 3d dc 0a 00 00 	lea    0xadc(%rip),%rdi        # 34c4 <array.3469+0x304>
    29e8:	e8 3d f5 ff ff       	callq  1f2a <submitr>
    29ed:	48 83 c4 10          	add    $0x10,%rsp
    29f1:	eb aa                	jmp    299d <driver_post+0x21>
    29f3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    29fa:	00 00 00 
    29fd:	0f 1f 00             	nopl   (%rax)

0000000000002a00 <__libc_csu_init>:
    2a00:	f3 0f 1e fa          	endbr64 
    2a04:	41 57                	push   %r15
    2a06:	4c 8d 3d eb 22 00 00 	lea    0x22eb(%rip),%r15        # 4cf8 <__frame_dummy_init_array_entry>
    2a0d:	41 56                	push   %r14
    2a0f:	49 89 d6             	mov    %rdx,%r14
    2a12:	41 55                	push   %r13
    2a14:	49 89 f5             	mov    %rsi,%r13
    2a17:	41 54                	push   %r12
    2a19:	41 89 fc             	mov    %edi,%r12d
    2a1c:	55                   	push   %rbp
    2a1d:	48 8d 2d dc 22 00 00 	lea    0x22dc(%rip),%rbp        # 4d00 <__do_global_dtors_aux_fini_array_entry>
    2a24:	53                   	push   %rbx
    2a25:	4c 29 fd             	sub    %r15,%rbp
    2a28:	48 83 ec 08          	sub    $0x8,%rsp
    2a2c:	e8 cf e5 ff ff       	callq  1000 <_init>
    2a31:	48 c1 fd 03          	sar    $0x3,%rbp
    2a35:	74 1f                	je     2a56 <__libc_csu_init+0x56>
    2a37:	31 db                	xor    %ebx,%ebx
    2a39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2a40:	4c 89 f2             	mov    %r14,%rdx
    2a43:	4c 89 ee             	mov    %r13,%rsi
    2a46:	44 89 e7             	mov    %r12d,%edi
    2a49:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    2a4d:	48 83 c3 01          	add    $0x1,%rbx
    2a51:	48 39 dd             	cmp    %rbx,%rbp
    2a54:	75 ea                	jne    2a40 <__libc_csu_init+0x40>
    2a56:	48 83 c4 08          	add    $0x8,%rsp
    2a5a:	5b                   	pop    %rbx
    2a5b:	5d                   	pop    %rbp
    2a5c:	41 5c                	pop    %r12
    2a5e:	41 5d                	pop    %r13
    2a60:	41 5e                	pop    %r14
    2a62:	41 5f                	pop    %r15
    2a64:	c3                   	retq   
    2a65:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    2a6c:	00 00 00 00 

0000000000002a70 <__libc_csu_fini>:
    2a70:	f3 0f 1e fa          	endbr64 
    2a74:	c3                   	retq   

Disassembly of section .fini:

0000000000002a78 <_fini>:
    2a78:	f3 0f 1e fa          	endbr64 
    2a7c:	48 83 ec 08          	sub    $0x8,%rsp
    2a80:	48 83 c4 08          	add    $0x8,%rsp
    2a84:	c3                   	retq   
