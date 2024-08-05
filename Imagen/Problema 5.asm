// División entre de RAM[0] entre RAM[1]


@2
M=0

// Guardamos RAM[0] y RAM[1] en en cuadro temporal 
@0
D=M
@R3
M=D

@1
D=M
@R4
M=D

// intento del bucle que hara la divicion 
(LOOP)
@R4
D=M
@END
D;JEQ // no diviciones con 0


// D >= 0 para continuar
@R3
M=D 

@2
M=M+1 

@LOOP
0;JMP // Repetimos 
(END)
@END
0;JMP
