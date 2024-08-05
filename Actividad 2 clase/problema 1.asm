
//suma los N numeros primos y este N va a estar guardado en  RAM[0]

@1
M=0
@0
D=M
@R2
M=D

// intento de inciar el contador 
@R3
M=1

// prueba suma en el bule 
(LOOP)


    // añadimos el contador (i) a la suma
    @R3
    D=M
    @1
    M=M+D

    // Incrementa el contador asi son numeros primos (i = i + 1)
    @R3
    M=M+1


    @LOOP
    0;JMP


(END)
@END
0;JMP
