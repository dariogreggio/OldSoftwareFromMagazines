
0 REM NOME PROGRAMMA: 3D MAZE
1 REM (C) NORBERT LOMMER-FERRUCCIO PRIA
2 GOSUB 100: GOTO 82
3 PRINT " ";: FOR J=0 TO 22: PRINT"                                    ":NEXT: S=X: T=Y: FOR I=1 TO 4
4 PN= PEEK(B+ (S+XV)*M+T+YV)
5 IF PEEK(B+(8-YV)*M+T+XV)<2 THEN 11

6 PRINT LEFT$(S9$, P(I)) SPC(P(I-1)) LEFT$(S1$,P(I)-P(I-1))
7 PRINT LEFT$(S9$, 23-P(I)) SPC(P(I)-1) LEFT$(S2$, P(I)-P(I-1))
8 IF I<>1 THEN PRINT LEFT$(S9$. P(I-1)+1) SPC(P(I-1)-1) LEFT$(S4$, (11-P(I-1))*6);
9 IF PN>1 THEN 14
10 GOTO 15
11 PRINT LEFT$(S9$ P(I-1)+1) SPC(P(I-1)> LEFT$(S5$, (P(I)-P(I-1)*2)
12 PRINT LEFT$(S9$ 22-P(I-1()) SPC(P(I-1) LEFT$(S6$, (P(I)-P(I-1))*2)
13 IF PN>1 AND PN<>255 THEN 15
14 PRINT LEFT$(S9$, P(I)+1) SPC(P(I)-1) LEFT$(S4$, (11-P(I)*6);
15 IF PEEK(B+(S+YV)*M+T-XV) <2 THEN 21
16 PRINT LEFTS(S9$, P(I)) SPC(22-P(I)) LEFT$(S1$, P(I)-P(I-1))
17 PRINT LEFTS(S9$, 23-P(I) SPC(22-P(I)) LEFT$(S2$, P(I)-P(I-1);
18 IF I<>1 THEN PRINT LEFT$(S9$, P(I-1)+1) SPC(22-P(I-1)) LEFT$(S3$, (11-P(I-1))*6-2);
19 IF PN>1 THEN 24
20 GOTO 25
21 PRINT LEFT$(S9$,P(I)) SPC(22-P(I)) LEFT$(S6$, (P(1)-P(I-1))*2)
22 PRINT LEFT$(S9$,23-P(I) SPC(22-P(1)) LEFT$(S5$, (P(I)-P(I-1)*2-1);
23 IF PN>1 AND PN<>255 THEN 25
24 PRINT LEFT$(S9$, P(I)+1) SPC(22-P(I)) LEFT$(S3$, (11-P(I))*6-2);
25 IF PN=255 THEN30
26 IF PN>1 THEN 32
27 PRINT LEFT$(S9$. P(I)) SPC(P(1)) LEFT$(S1$, (11-P(I))*2)
28 PRINT LEFT$(S9$, 23-P(I)) SPC(P(I)) LEFTS(S2$, (11-P(I))*2);
29 RETURN
38 PRINT LEFT$(S9$, 11) SPC(8) "G O A L"
31 RETURN
32 S= S+XV: T= T+YV
33 NEXT
34 PRINT LEFT$(S9$,11) SPC(10) " LA"
35 RETURN
36 FOR I=1 TO M-1: FOR J=1 TO M-1: POKE B+I*M+J, 1: NEXTJ,I
37 FOR I=0 TO M: POKE B+1,0: POKE B+M*M+I,0: POKE B+M*I,0: NEXT: POKE B+1,255: POKE B+M+1, 2
38 N=1: FOR I=1 TO M-1 STEP 2: FOR J=1 TO M-1 STEP 2: N=N+1: X=I: Y=J
39 IF RND(1)<.5 THEN XV=1: YV=0: GOT041
40 XV=0: YV=1
41 IF PEEK(B+M*I+J)=1 THEN 45
42 XX=X+XV*2: YY=Y+YV*2: IF XX<0 OR XX>M OR YY<0 OR VY>M THEN NEXTJ,I: G0TO 58
43 IF PEEK(B+XX*M+YY) <> 1 THEN NEXT J,I: GOTO 58
44 POKE B+(X+XV)*M+Y+YV,N: X=XX: Y=YY: POKE B+X*M+Y,N: GOSUB 53: GOT0 42
45 POKE B+X*M+Y,N: XX=X+XV*2: YY=Y+YY*2: IF X<0 OR XX>M OR YY<0 OR YY>M THEN 48
46 IF PEEK(B+XX*M+YY)=1 THEN 52
47 IF PEEK(B+XX*M*YY)<>N THEN POKE B+(X+XV)*M+Y+YV,N: NEXT J,I: GOTO 58
48 IF RND(1)<.5 THEN XV=-1: YV=0: GOTO 58
49 XV=0: YV=-1
50 IF PEEK(B+(I+XV)*M+J+YV)=0 THEN T=XV: XV=YV: YV=T
51 POKE B+(I+XV)*M+J+YV,N: NEXT J,I: GOTO 58
52 POKE B+(X+XV)*M+Y+YV,N: X=XX: Y=YY: POKE B+X*M+Y,N: GOSUB 53: GOTO 45
53 P=RND(1)
54 IF P<.25 THEN XV=1: YV=0: RETURN
55 IF P<.5 THEN XV=0: YV=1: RETURN
56 IF P<.75 THEN XV=-1: YV=0: RETURN
57 XV=0: YV=-1: RETURN
58 POKE B+FNX(0)*M+FNX(0)+1,2: POKE B+(FNX(0)+1*M+FNX(0), 2
59 X=FNX(0)+1: Y=FNX(0)+1: POKE 36878,8: GOSUB 53: TI$="000000": G0SUB 78
60 POKE 36875, 215: FOR I=1 TO 50: NEXT: POKE 36875, 0
61 G0SUB 3
62 T$=MIDS(TI$,3,2)+"; "+RIGHTS(T1$,2): PRINT S9$T$;: K=PEEK(56328): KK=PEEK(197)
63 IF K=126 OR KK=60 THEN TY=22: GOSUB 200: GOTO 69
64 IF K=123 OR KK=12 THEN TY=35: GOSUB 200: T=XV: XV=-YV: YV=T: GOTO 60
65 IF K=119 OR KK=55 THEN TY=35: GOSUB 200: T=XV: XV=YV: YV=-T: GOTO 60
67 IF KK=19 THEN GOSUB 78: PRINT LEFT$(S9$, X+1)SPC(Y) "*": GOTO 74
68 GOT0 62
69 XX=X+XV: YY=Y+YV: PN=PEEK(B+XX*M+YY)
70 POKE 36874,0
71 IF PN<2 GOTO 62
72 IF PN<>255 THEN X=XX: Y=YY: GOTO 61
73 FOR TY=40 TO 80: GOSUB 200: FOR JH=TO40: NEXT JH,TY: GOSUB 78


74 POKE 198,0:PRINT S9$"TIME:"T$;
75 GET TS: IF T$="" THEN75
76 GOTO 88
77 END
78 PRINT "UTDOU"; D2$; FOR I=0 TO M: FOR J=0 TO M
79 IF PEEK(B+ I*M+J) <2 THEN PRINT " "; GOT0 81
80 PRINT" ";
81 NEXT J: PRINT: PRINT D2$;: NEXT I:RETURN
82 POKE 51,168: POKE 52,28: POKE 55,168: POKE 56,28: CLR: B=7337
83 DEF FN (X)=INT(RND(1)*M/4+M/5)*2: DIM P(5): FOR I=1 TO 20
84 S1$=S1$+CHR$(164): S2$=S2$+CHR$(163): S3$=S3$+CHR$(165)+"D": S4$=S4$+CHR$(167) + " US "
85 NEXT: FOR I=1 TO 4: S5$= S5$+"J0": S6$= S6$+"/ ": NEXT
86 S9$="UDRUDDRUMUDAUDDUDNOKO"
87 FOR I=0 TO 5: READ P(I): NEXT: DATA 0,1.5,8,10,11
88 INPUT "S SIZE(4-8)"; M: IF M<4 OR M>8 THEN 88
89 M=INT(2*M)
90 UU=38-(M/2): D1$="DBDDDDBDEPDDUDDDDDDDDODDND" : D2$=LEFT$(D1$, UU)
91 GOTO36
100 POKE 53281,8: POKE 53280,0: PRINT"S"
110 RETURN
200 POKE 54276,0: POKE 54296,15: POKE 54277,10: POKE 54276,17: POKE 54273,TY
210 RETURN


