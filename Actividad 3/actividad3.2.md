### Objetivo
- hacer 2 palos que se puedan mover de arriba a abajo con las declas A y D 
### proceso
- dibujar 2 palos los cuales se vana mover 
- Detecta las Teclas "A" y "D"
  - La entrada del teclado está en 24576.
  - "A" tiene el código ASCII 65, y "D" tiene el código 68.
Cuando se presiona una tecla, detecta cuál fue y ajusta la posición de los palos.
- columnas 4 (izquierda) y 28 (derecha). sen encienden bits en esas columnas
  - Si se presiona "A", baja ambos palos una fila (sumando 32 a las direcciones de memoria).
  - Si se presiona "D", sube ambos palos una fila (restando 32 a las direcciones de memoria).
 ### idea de codigo

@16384          // direccion pantalla
M=16            // palo izquierda
@16384+1
M=16            
@16384+30
M=128           // palo derecho 
@16384+31
M=128           // palo derecho 

(INICIO)
@24576          
D=M             

@65             // codigo para A 
D=D-A
@MOVE_DOWN      // se mueve abajao si se presiona A
D;JEQ

@68             // Código ASCII de 'D'
D=D-A
@MOVE_UP        // Si se presiona D se mueve arriba
D;JEQ

@INICIO         
0;JMP

(MOVE_DOWN)

@16384          // Inicio IZQ
M=0             // Borra
@16384+1
M=0
@16384+32       // IZQ 1 F abajo
M=16
@16384+33
M=16

@16384+30       // Inicio
M=0             // Borra 
@16384+31
M=0
@16384+62       // der 1 F arriba
M=128
@16384+63
M=128

@INICIO         
0;JMP

(MOVE_UP)
@16384+32       // izq una F abajo
M=0             
@16384+33
M=0
@16384          // mueve palo izquierda 1 arriba
M=16
@16384+1
M=16

@16384+62       // mover 1 fila abajo
M=0            
@16384+63
M=0
@16384+30       // Mueve el palo derecho arriba
M=128
@16384+31
M=128

@INICIO        
0;JMP
