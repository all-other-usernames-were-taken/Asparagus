REM INCLUDE:'../assembly.bas'

TYPE labelType
    name AS STRING
    location AS _UNSIGNED _INTEGER64
END TYPE

TYPE errorCatch
    no AS INTEGER
    line AS _UNSIGNED LONG
    file AS STRING
END TYPE
DIM SHARED eCatch AS errorCatch
errCatch:
eCatch.no = ERR
IF _INCLERRORLINE THEN
    eCatch.line = _INCLERRORLINE
    eCatch.file = _INCLERRORFILE$
ELSE
    eCatch.line = _ERRORLINE
    eCatch.file = ""
END IF
RESUME NEXT

assembleCmds:
DATA 0,"LABEL"
DATA &H00,"VAR SET"
DATA &H01,"REACH"
DATA &H02,"VAR SLOT"
DATA &H03,"SYS GET"
DATA &H04,"SYS SET"
DATA &H10,"COND"
DATA &H11,"MATH"
DATA &H12,"CONVERT"
DATA &H13,"STRING"
DATA &H20,"PRINT"
DATA &H21,"KEY INP"
DATA &H22,"INPUT"
DATA &H30,"GOTO"
DATA &H31,"IF GOTO"
DATA &H32,"SUB SET"
DATA &H33,"SUB CALL"
DATA &H34,"EXIT"
DATA &H0,"VAR SLOT"
DATA &H1,"POINTER"
DATA &H2,"TIMER"
DATA &H3,"DATE"
DATA &H4,"TIME"
DATA &H5,"WIDTH"
DATA &H6,"HEIGHT"
DATA &H7,"FONT"
DATA &H8,"WINDOW T"
DATA &H9,"INTP VER"
DATA &HA,"OS"
DATA &HB,"EXITCODE"
DATA &HC,"QUINE"
DATA &H0,"EQUALS"
DATA &H1,"AND"
DATA &H2,"OR"
DATA &H3,"XOR"
DATA &H4,"GTR THAN"
DATA &H0,"ADD"
DATA &H1,"SUBTRACT"
DATA &H2,"MULTIPLY"
DATA &H3,"DIVIDE"
DATA &H4,"EXPONENT"
DATA &H5,"REMAIN"
DATA &H6,"VALUE OF"
DATA &H7,"ROUND"
DATA &H8,"RANDOM"
DATA &H9,"BIT NOT"
DATA &HA,"BIT AND"
DATA &HB,"BIT OR"
DATA &HC,"BIT XOR"
DATA &H0,"HEX"
DATA &H1,"OCTAL"
DATA &H2,"BINARY"
DATA &H0,"SET"
DATA &H1,"LEFT"
DATA &H2,"RIGHT"
DATA &H3,"OPP LEFT"
DATA &H4,"FRAGMENT"
DATA &H5,"INSTRING"
DATA &H6,"LENGTH"
DATA &H7,"JOIN"
DATA &H8,"CHAR"
DATA &H0,"end of list"

'commands:
'DATA &H00,"VAR SET "
'DATA &H01,"REACH   "
'DATA &H02,"VAR SLOT"
'DATA &H03,"SYS GET "
'DATA &H04,"SYS SET "
'DATA &H10,"COND    "
'DATA &H11,"MATH    "
'DATA &H12,"CONVERT "
'DATA &H13,"STRING  "
'DATA &H20,"PRINT   "
'DATA &H21,"KEY INP "
'DATA &H22,"INPUT   "
'DATA &H30,"GOTO    "
'DATA &H31,"IF GOTO "
'DATA &H32,"SUB SET "
'DATA &H33,"SUB CALL"
'DATA &H34,"EXIT    "
'DATA 0,"",0

'subcommands:
'DATA &H03,&H0,"VAR SLOT",2
'DATA &H03,&H1,"POINTER ",2
'DATA &H03,&H2,"TIMER   ",2
'DATA &H03,&H3,"DATE    ",2
'DATA &H03,&H4,"TIME    ",2
'DATA &H03,&H5,"WIDTH   ",2
'DATA &H03,&H6,"HEIGHT  ",2
'DATA &H03,&H7,"FONT    ",2
'DATA &H03,&H8,"WINDOW T",2
'DATA &H03,&H9,"INTP VER",2
'DATA &H03,&HA,"OS      ",2
'DATA &H03,&HB,"EXITCODE",2
'DATA &H03,&HC,"QUINE   ",2

'DATA &H04,&H1,"POINTER ",2
'DATA &H04,&H3,"DATE    ",2
'DATA &H04,&H4,"TIME    ",2
'DATA &H04,&H5,"WIDTH   ",2
'DATA &H04,&H6,"HEIGHT  ",2
'DATA &H04,&H7,"FONT    ",2
'DATA &H04,&H8,"WINDOW T",2
'DATA &H04,&HB,"EXITCODE",2
'DATA &H04,&HC,"QUINE   ",2

'DATA &H05,&H0,"EQUALS  ",4
'DATA &H05,&H1,"AND     ",4
'DATA &H05,&H2,"OR      ",4
'DATA &H05,&H3,"XOR     ",4
'DATA &H05,&H4,"GTR THAN",4

'DATA &H11,&H0,"ADD     ",4
'DATA &H11,&H1,"SUBTRACT",4
'DATA &H11,&H2,"MULTIPLY",4
'DATA &H11,&H3,"DIVIDE  ",4
'DATA &H11,&H4,"EXPONENT",4
'DATA &H11,&H5,"REMAIN  ",4
'DATA &H11,&H6,"VALUE OF",3
'DATA &H11,&H7,"ROUND   ",3
'DATA &H11,&H8,"RANDOM  ",2
'DATA &H11,&H9,"BIT NOT ",3
'DATA &H11,&HA,"BIT AND ",4
'DATA &H11,&HB,"BIT OR  ",4
'DATA &H11,&HC,"BIT XOR ",4

'DATA &H12,&H0,"HEX     ",3
'DATA &H12,&H1,"OCTAL   ",3
'DATA &H12,&H2,"BINARY  ",3

'DATA &H13,&H0,"SET     ",3
'DATA &H13,&H1,"LEFT    ",4
'DATA &H13,&H2,"RIGHT   ",4
'DATA &H13,&H3,"OPP LEFT",4
'DATA &H13,&H4,"FRAGMENT",5
'DATA &H13,&H5,"INSTRING",4
'DATA &H13,&H6,"LENGTH  ",3
'DATA &H13,&H7,"JOIN    ",3
'DATA &H13,&H8,"CHAR    ",4

'DATA 1,1,"",0

