//CBL0001J JOB 1,NOTIFY=&SYSUID
//***************************************************/
//* Copyright Contributors to the COBOL Programming Course
//* SPDX-License-Identifier: CC-BY-4.0
//***************************************************/
//COBRUN  EXEC IGYWCL
//COBOL.SYSIN  DD DSN=&SYSUID..CBL(CBL0001),DISP=SHR
//LKED.SYSLMOD DD DSN=&SYSUID..LOAD(CBL0001),DISP=SHR
//***************************************************/
// IF RC = 0 THEN
//***************************************************/
//RUN     EXEC PGM=CBL0001
//STEPLIB   DD DSN=&SYSUID..LOAD,DISP=SHR
//ACCTREC   DD DSN=&SYSUID..DATA,DISP=SHR
//PRTLINE   DD DSN=&SYSUID..DATA.PRT,DISP=(NEW,CATLG,DELETE),
//             SPACE=(CYL,10)
//SYSOUT    DD SYSOUT=*,OUTLIM=15000
//CEEDUMP   DD DUMMY
//SYSUDUMP  DD DUMMY
//***************************************************/
// ELSE
// ENDIF