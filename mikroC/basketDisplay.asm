
_main:

;basketDisplay.c,6 :: 		void main() {
;basketDisplay.c,7 :: 		ANSEL=0;
	CLRF       ANSEL+0
;basketDisplay.c,8 :: 		ANSELH=0;
	CLRF       ANSELH+0
;basketDisplay.c,9 :: 		TRISC=0;
	CLRF       TRISC+0
;basketDisplay.c,11 :: 		TRISD=0;
	CLRF       TRISD+0
;basketDisplay.c,12 :: 		TRISA=0;
	CLRF       TRISA+0
;basketDisplay.c,14 :: 		TRISB=1;
	MOVLW      1
	MOVWF      TRISB+0
;basketDisplay.c,15 :: 		while(1){
L_main0:
;basketDisplay.c,22 :: 		nameDisplay=num[cont];
	MOVF       _cont+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _cont+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTC+0
;basketDisplay.c,23 :: 		PORTB=0b00000000;
	CLRF       PORTB+0
;basketDisplay.c,25 :: 		nameDisplayD=num[contd];
	MOVF       _contd+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _contd+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTD+0
;basketDisplay.c,26 :: 		nameDisplayA=num[contc];
	MOVF       _contc+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _contc+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTA+0
;basketDisplay.c,27 :: 		switch(PORTB){
	GOTO       L_main2
;basketDisplay.c,28 :: 		case(0b00000010):
L_main4:
;basketDisplay.c,29 :: 		cont=cont+2;
	MOVLW      2
	ADDWF      _cont+0, 0
	MOVWF      R1+0
	MOVF       _cont+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R1+1
	MOVF       R1+0, 0
	MOVWF      _cont+0
	MOVF       R1+1, 0
	MOVWF      _cont+1
;basketDisplay.c,30 :: 		if(cont==10){
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main35
	MOVLW      10
	XORWF      R1+0, 0
L__main35:
	BTFSS      STATUS+0, 2
	GOTO       L_main5
;basketDisplay.c,31 :: 		cont=0;
	CLRF       _cont+0
	CLRF       _cont+1
;basketDisplay.c,32 :: 		nameDisplay=num[cont];
	MOVF       _cont+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _cont+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTC+0
;basketDisplay.c,33 :: 		contd=contd+1;
	INCF       _contd+0, 1
	BTFSC      STATUS+0, 2
	INCF       _contd+1, 1
;basketDisplay.c,34 :: 		if(contd>9){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _contd+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main36
	MOVF       _contd+0, 0
	SUBLW      9
L__main36:
	BTFSC      STATUS+0, 0
	GOTO       L_main6
;basketDisplay.c,35 :: 		contd=0;
	CLRF       _contd+0
	CLRF       _contd+1
;basketDisplay.c,36 :: 		nameDisplayD=num[contd];
	MOVF       _contd+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _contd+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTD+0
;basketDisplay.c,37 :: 		contc=contc+1;
	INCF       _contc+0, 1
	BTFSC      STATUS+0, 2
	INCF       _contc+1, 1
;basketDisplay.c,38 :: 		nameDisplayA=num[contc];
	MOVF       _contc+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _contc+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTA+0
;basketDisplay.c,40 :: 		}
L_main6:
;basketDisplay.c,41 :: 		Delay_ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
;basketDisplay.c,42 :: 		break;
	GOTO       L_main3
;basketDisplay.c,43 :: 		}else if(cont==11){
L_main5:
	MOVLW      0
	XORWF      _cont+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main37
	MOVLW      11
	XORWF      _cont+0, 0
L__main37:
	BTFSS      STATUS+0, 2
	GOTO       L_main9
;basketDisplay.c,44 :: 		cont=1;
	MOVLW      1
	MOVWF      _cont+0
	MOVLW      0
	MOVWF      _cont+1
;basketDisplay.c,45 :: 		nameDisplay=num[cont];
	MOVF       _cont+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _cont+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTC+0
;basketDisplay.c,46 :: 		contd=contd+1;
	INCF       _contd+0, 1
	BTFSC      STATUS+0, 2
	INCF       _contd+1, 1
;basketDisplay.c,47 :: 		if(contd>9){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _contd+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main38
	MOVF       _contd+0, 0
	SUBLW      9
L__main38:
	BTFSC      STATUS+0, 0
	GOTO       L_main10
;basketDisplay.c,48 :: 		contd=0;
	CLRF       _contd+0
	CLRF       _contd+1
;basketDisplay.c,49 :: 		nameDisplayD=num[contd];
	MOVF       _contd+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _contd+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTD+0
;basketDisplay.c,50 :: 		contc=contc+1;
	INCF       _contc+0, 1
	BTFSC      STATUS+0, 2
	INCF       _contc+1, 1
;basketDisplay.c,51 :: 		nameDisplayA=num[contc];
	MOVF       _contc+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _contc+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTA+0
;basketDisplay.c,53 :: 		}
L_main10:
;basketDisplay.c,54 :: 		Delay_ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	DECFSZ     R11+0, 1
	GOTO       L_main11
;basketDisplay.c,55 :: 		break;
	GOTO       L_main3
;basketDisplay.c,56 :: 		}else{
L_main9:
;basketDisplay.c,57 :: 		nameDisplay=num[cont];
	MOVF       _cont+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _cont+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTC+0
;basketDisplay.c,58 :: 		nameDisplayD=num[contd];
	MOVF       _contd+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _contd+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTD+0
;basketDisplay.c,59 :: 		Delay_ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main13:
	DECFSZ     R13+0, 1
	GOTO       L_main13
	DECFSZ     R12+0, 1
	GOTO       L_main13
	DECFSZ     R11+0, 1
	GOTO       L_main13
;basketDisplay.c,60 :: 		break;
	GOTO       L_main3
;basketDisplay.c,64 :: 		case(0b00000100):
L_main14:
;basketDisplay.c,65 :: 		cont=cont+3;
	MOVLW      3
	ADDWF      _cont+0, 0
	MOVWF      R1+0
	MOVF       _cont+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R1+1
	MOVF       R1+0, 0
	MOVWF      _cont+0
	MOVF       R1+1, 0
	MOVWF      _cont+1
;basketDisplay.c,66 :: 		if(cont==10){
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main39
	MOVLW      10
	XORWF      R1+0, 0
L__main39:
	BTFSS      STATUS+0, 2
	GOTO       L_main15
;basketDisplay.c,67 :: 		cont=0;
	CLRF       _cont+0
	CLRF       _cont+1
;basketDisplay.c,68 :: 		nameDisplay=num[cont];
	MOVF       _cont+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _cont+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTC+0
;basketDisplay.c,69 :: 		contd=contd+1;
	INCF       _contd+0, 1
	BTFSC      STATUS+0, 2
	INCF       _contd+1, 1
;basketDisplay.c,70 :: 		if(contd>9){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _contd+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main40
	MOVF       _contd+0, 0
	SUBLW      9
L__main40:
	BTFSC      STATUS+0, 0
	GOTO       L_main16
;basketDisplay.c,71 :: 		contd=0;
	CLRF       _contd+0
	CLRF       _contd+1
;basketDisplay.c,72 :: 		nameDisplayD=num[contd];
	MOVF       _contd+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _contd+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTD+0
;basketDisplay.c,73 :: 		contc=contc+1;
	INCF       _contc+0, 1
	BTFSC      STATUS+0, 2
	INCF       _contc+1, 1
;basketDisplay.c,74 :: 		nameDisplayA=num[contc];
	MOVF       _contc+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _contc+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTA+0
;basketDisplay.c,76 :: 		}
L_main16:
;basketDisplay.c,77 :: 		Delay_ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main17:
	DECFSZ     R13+0, 1
	GOTO       L_main17
	DECFSZ     R12+0, 1
	GOTO       L_main17
	DECFSZ     R11+0, 1
	GOTO       L_main17
;basketDisplay.c,78 :: 		break;
	GOTO       L_main3
;basketDisplay.c,79 :: 		}else if(cont==11){
L_main15:
	MOVLW      0
	XORWF      _cont+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main41
	MOVLW      11
	XORWF      _cont+0, 0
L__main41:
	BTFSS      STATUS+0, 2
	GOTO       L_main19
;basketDisplay.c,80 :: 		cont=1;
	MOVLW      1
	MOVWF      _cont+0
	MOVLW      0
	MOVWF      _cont+1
;basketDisplay.c,81 :: 		nameDisplay=num[cont];
	MOVF       _cont+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _cont+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTC+0
;basketDisplay.c,82 :: 		contd=contd+1;
	INCF       _contd+0, 1
	BTFSC      STATUS+0, 2
	INCF       _contd+1, 1
;basketDisplay.c,83 :: 		if(contd>9){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _contd+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main42
	MOVF       _contd+0, 0
	SUBLW      9
L__main42:
	BTFSC      STATUS+0, 0
	GOTO       L_main20
;basketDisplay.c,84 :: 		contd=0;
	CLRF       _contd+0
	CLRF       _contd+1
;basketDisplay.c,85 :: 		nameDisplayD=num[contd];
	MOVF       _contd+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _contd+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTD+0
;basketDisplay.c,86 :: 		contc=contc+1;
	INCF       _contc+0, 1
	BTFSC      STATUS+0, 2
	INCF       _contc+1, 1
;basketDisplay.c,87 :: 		nameDisplayA=num[contc];
	MOVF       _contc+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _contc+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTA+0
;basketDisplay.c,89 :: 		}
L_main20:
;basketDisplay.c,90 :: 		Delay_ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main21:
	DECFSZ     R13+0, 1
	GOTO       L_main21
	DECFSZ     R12+0, 1
	GOTO       L_main21
	DECFSZ     R11+0, 1
	GOTO       L_main21
;basketDisplay.c,91 :: 		break;
	GOTO       L_main3
;basketDisplay.c,92 :: 		}else if(cont==12){
L_main19:
	MOVLW      0
	XORWF      _cont+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main43
	MOVLW      12
	XORWF      _cont+0, 0
L__main43:
	BTFSS      STATUS+0, 2
	GOTO       L_main23
;basketDisplay.c,93 :: 		cont=2;
	MOVLW      2
	MOVWF      _cont+0
	MOVLW      0
	MOVWF      _cont+1
;basketDisplay.c,94 :: 		nameDisplay=num[cont];
	MOVF       _cont+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _cont+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTC+0
;basketDisplay.c,95 :: 		contd=contd+1;
	INCF       _contd+0, 1
	BTFSC      STATUS+0, 2
	INCF       _contd+1, 1
;basketDisplay.c,96 :: 		if(contd>9){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _contd+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main44
	MOVF       _contd+0, 0
	SUBLW      9
L__main44:
	BTFSC      STATUS+0, 0
	GOTO       L_main24
;basketDisplay.c,97 :: 		contd=0;
	CLRF       _contd+0
	CLRF       _contd+1
;basketDisplay.c,98 :: 		nameDisplayD=num[contd];
	MOVF       _contd+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _contd+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTD+0
;basketDisplay.c,99 :: 		contc=contc+1;
	INCF       _contc+0, 1
	BTFSC      STATUS+0, 2
	INCF       _contc+1, 1
;basketDisplay.c,100 :: 		nameDisplayA=num[contc];
	MOVF       _contc+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _contc+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTA+0
;basketDisplay.c,102 :: 		}
L_main24:
;basketDisplay.c,103 :: 		Delay_ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main25:
	DECFSZ     R13+0, 1
	GOTO       L_main25
	DECFSZ     R12+0, 1
	GOTO       L_main25
	DECFSZ     R11+0, 1
	GOTO       L_main25
;basketDisplay.c,104 :: 		break;
	GOTO       L_main3
;basketDisplay.c,105 :: 		}else{
L_main23:
;basketDisplay.c,106 :: 		nameDisplay=num[cont];
	MOVF       _cont+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _cont+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTC+0
;basketDisplay.c,107 :: 		nameDisplayD=num[contd];
	MOVF       _contd+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _contd+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTD+0
;basketDisplay.c,108 :: 		Delay_ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main27:
	DECFSZ     R13+0, 1
	GOTO       L_main27
	DECFSZ     R12+0, 1
	GOTO       L_main27
	DECFSZ     R11+0, 1
	GOTO       L_main27
;basketDisplay.c,109 :: 		break;
	GOTO       L_main3
;basketDisplay.c,112 :: 		case(0b00001000):
L_main28:
;basketDisplay.c,113 :: 		cont=cont+1;
	INCF       _cont+0, 1
	BTFSC      STATUS+0, 2
	INCF       _cont+1, 1
;basketDisplay.c,114 :: 		if(cont>9){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _cont+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main45
	MOVF       _cont+0, 0
	SUBLW      9
L__main45:
	BTFSC      STATUS+0, 0
	GOTO       L_main29
;basketDisplay.c,115 :: 		cont=0;
	CLRF       _cont+0
	CLRF       _cont+1
;basketDisplay.c,117 :: 		nameDisplay=num[cont];
	MOVF       _cont+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _cont+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTC+0
;basketDisplay.c,118 :: 		contd=contd+1;
	INCF       _contd+0, 1
	BTFSC      STATUS+0, 2
	INCF       _contd+1, 1
;basketDisplay.c,119 :: 		if(contd>9){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _contd+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main46
	MOVF       _contd+0, 0
	SUBLW      9
L__main46:
	BTFSC      STATUS+0, 0
	GOTO       L_main30
;basketDisplay.c,120 :: 		contd=0;
	CLRF       _contd+0
	CLRF       _contd+1
;basketDisplay.c,121 :: 		nameDisplayD=num[contd];
	MOVF       _contd+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _contd+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTD+0
;basketDisplay.c,122 :: 		contc=contc+1;
	INCF       _contc+0, 1
	BTFSC      STATUS+0, 2
	INCF       _contc+1, 1
;basketDisplay.c,123 :: 		nameDisplayA=num[contc];
	MOVF       _contc+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _contc+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTA+0
;basketDisplay.c,125 :: 		}
L_main30:
;basketDisplay.c,126 :: 		Delay_ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main31:
	DECFSZ     R13+0, 1
	GOTO       L_main31
	DECFSZ     R12+0, 1
	GOTO       L_main31
	DECFSZ     R11+0, 1
	GOTO       L_main31
;basketDisplay.c,127 :: 		break;
	GOTO       L_main3
;basketDisplay.c,128 :: 		}else{
L_main29:
;basketDisplay.c,129 :: 		nameDisplay=num[cont];
	MOVF       _cont+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _cont+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTC+0
;basketDisplay.c,130 :: 		nameDisplayD=num[contd];
	MOVF       _contd+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _contd+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTD+0
;basketDisplay.c,131 :: 		Delay_ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main33:
	DECFSZ     R13+0, 1
	GOTO       L_main33
	DECFSZ     R12+0, 1
	GOTO       L_main33
	DECFSZ     R11+0, 1
	GOTO       L_main33
;basketDisplay.c,132 :: 		break;
	GOTO       L_main3
;basketDisplay.c,134 :: 		};
L_main2:
	MOVF       PORTB+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_main4
	MOVF       PORTB+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_main14
	MOVF       PORTB+0, 0
	XORLW      8
	BTFSC      STATUS+0, 2
	GOTO       L_main28
L_main3:
;basketDisplay.c,144 :: 		};
	GOTO       L_main0
;basketDisplay.c,145 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
