#source: merge2.s
#ld: -T merge.ld
#objdump: -s
#xfail: "arc-*-*" "dlx-*-*"

.*:     file format .*elf.*

Contents of section .text:
 1000 (3010)?0000(1030)? (3210)?0000(1032)? (3110)?0000(1031)? (3410)?0000(1034)?  .*
 1010 (4010)?0000(1040)? (3810)?0000(1038)? (4810)?0000(1048)? (3c10)?0000(103c)?  .*
 1020 (5010)?0000(1050)? (5410)?0000(1054)? (5810)?0000(1058)? (5010)?0000(1050)?  .*
Contents of section .rodata:
 1030 61626300 62000000 (78563412|12345678) 99999999  .*
 1040 (78563412|12345678) 00000000 99999999 00000000  .*
 1050 (78563412|12345678) 99999999 00000000           .*
#pass
