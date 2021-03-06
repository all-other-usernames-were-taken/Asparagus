$CONSOLE

DIM SHARED Intp.Vars(255) AS STRING, Intp.Verbose AS _UNSIGNED _BYTE, errState$
CONST Intp.VerTx = "PB-11/13", Intp.VerNo = .11013

Intp_Helpv3:
DATA "############################################################"
DATA "Asparagus PB-11/13                 Licensed under GNU AGPLv3"
DATA ""
DATA "https://github.com/all-other-usernames-were-taken/Asparagus"
DATA "https://esolangs.org/wiki/Asparagus"
DATA "------------------------------------------------------------"
DATA "asparagus [-h] [{-f | -p}] [-wx=(width)] [-wy=(height)]"
DATA "   [-F(font ID) [--fw]] [-v(verbose level)]"
DATA "   {(code) | (path)}"
DATA ""
DATA ""
DATA "-h   Displays this message then exits"
DATA ""
DATA "-f   Specifies to open a file"
DATA ""
DATA "-p   Specifies to use the quoted text as the program itself"
DATA ""
DATA "-wx, Specifies the program window size on startup"
DATA "-wy"
DATA ""
DATA "-F   Sets the font to use for the program window"
DATA ""
DATA "--fw Sets the font to double width"
DATA ""
DATA "-v,  Sets the verbosity level with the number directly"
DATA "       after it. -v0=completely silent and -v7=completely"
DATA "       not silent"
DATA ""
DATA "-----------------------------------------------------------"
DATA "          For more information, consult README.md"
DATA "###########################################################"
DATA "."
