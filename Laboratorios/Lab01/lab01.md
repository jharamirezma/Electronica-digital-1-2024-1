### Lab 01: Prueba básica de Quartus y simulación.

---

Este laboratorio tiene como objetivo que los estudiantes puedan familiarizarse con el entorno de desarrollo Quartus y la herramienta de simulación para sistemas digitales Questa.


### Procedimiento.

1. El estudiante debe crear un proyecto en Quartus donde describirá cada una de las compuertas lógicas, para posteriormente comprobar, mediante una simulación, las tablas de verdad de cada una. 


***Compuerta NOT***

|  A   | S |  
|------|---|           
|   0  | **1** | 
|   1  | **0** | 


***Compuerta AND***

|   A  |   B  | **S** |         
|------|------|-------|
|   0  |   0  | **0** | 
|   0  |   1  | **0** | 
|   1  |   0  | **0** | 
|   1  |   1  | **1** |  


***Compuerta OR***

| E~1~ | E~2~ | S |  
|------|------|---|
|   0  |   0  | **0** | 
|   0  |   1  | **1** | 
|   1  |   0  | **1** | 
|   1  |   1  | **1** |  


***Compuerta XOR***

| E~1~ | E~2~ | S |  
|------|------|---|
|   0  |   0  | **0** | 
|   0  |   1  | **1** | 
|   1  |   0  | **1** | 
|   1  |   1  | **0** |  


2. Asi como en el punto anterior, el estudiante debe comprobar, mediante una simulación, la tabla de verdad del sumador completo de 1 bit.  


![Medio Sumador](/Imagenes/Cir/Sumador.png)

|   A  |   B  |  Ci |   Co  |   S1  |
|------|------|-----|-------|-------|
|   0  |   0  |  0  | **0** | **0** |
|   0  |   0  |  1  | **0** | **1** |
|   0  |   1  |  0  | **0** | **1** |
|   0  |   1  |  1  | **1** | **0** | 
|   1  |   0  |  0  | **0** | **1** |
|   1  |   0  |  1  | **1** | **0** |
|   1  |   1  |  0  | **1** | **0** |
|   1  |   1  |  1  | **1** | **1** | 



### Entregables.

Se debe subir al repositorio de cada uno de los grupos una carpeta con el nombre "*lab001*" que contenga:

* Un archivo "*readme_l01.md*" donde se describa el procedimiento detallado de la realización del laboratorio.
* Una carpeta "*Imagenes*" donde se encuentren las figuras utilizadas en la documentación del archivo "*readme_l01.md*".
* Una carpeta "*src*" que contenga los archivos de código ".v" o ".vhdl", de las descripción de las compuertas y del sumador, como de sus respectivas simulaciones.

Estos archivos deben ser subidos al repositorio antes del dia <strong>10 de Marzo del 2024</strong>.