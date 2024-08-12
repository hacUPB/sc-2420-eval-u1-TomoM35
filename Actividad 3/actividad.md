### Objeticvo
- Crear un bitmap simple  en  Nand2Tetris utilizando assembler.

- Este debe reacionar con teclaod y pantalla.

### Procedimiento
1. elegir un deiseño simple el cual ira en la pantalla, en mi caso are una cruz haciendo una linea vertical y una horizontal.
2. Este esmpezara en la ubicacion 16384, Cada fila de píxeles ocupa 32 direcciones de memoria 
   -  si queremos que este ne el centro de la pantall,  alrededor de 16384 + 128*32 para que quede en el centro

3. - La entrada del teclado está en la dirección de memoria 24576.
   - Cuando se presiona una tecla, esa dirección contiene el código ASCII de la tecla presionada. Para la tecla "W", ese código es 87.

4. 
@24576
D=M        // entrada teclado
@87
D=D-A      // W
@NO_KEY
D;JNE      // si no es la letra no sirve


@16384
M=0        // Borra la línea vertical
@16384+32
M=0        // Borra la línea horizontal

@16384-32
M=36       // Mueve la línea vertical hacia arriba
@16384
M=255      // Mueve la línea horizontal hacia arriba

(NO_KEY)
