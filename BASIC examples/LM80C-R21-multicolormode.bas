10 SCREEN 3:L=0
20 FOR I=0 TO 767
30 VPOKE 2048+I,L
40 L=L+1:IF L>255 THEN L=0
50 NEXT:L=0
60 FOR I=0 TO 2047
70 VPOKE I,L
80 L=L+1:IF L>255 THEN L=0
90 NEXT
