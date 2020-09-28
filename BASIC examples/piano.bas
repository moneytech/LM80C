90 PRINT "Wait..."
100 DIM F(32)
110 FOR I=0 TO 31
120 X=440*2^((I-12)/12)
140 F(I)=4096-(115206.1875/X)
150 NEXT
160 CLS
161 PRINT "*** LM80C Piano ***"
162 PRINT
163 PRINT "by Antonino Porcino, 2020"
164 PRINT:PRINT
165 PRINT "  2 3   5 6 7   9 0
166 PRINT " Q W E R T Y U I O P
167 PRINT
168 PRINT "  S D   G H J
169 PRINT " Z X C V B N M
174 VOLUME 1,15
175 A$="zsxdcvgbhnjmq2w3er5t6y7ui9o0p"
180 X=INKEY(10):IF X=0 THEN 180
190 X=INSTR(A$,CHR$(X))
200 IF X=0 THEN 180
210 SOUND 1,F(X),50
220 GOTO 180
