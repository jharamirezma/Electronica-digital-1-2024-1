### Proyecto: Implementación de sensores y actuadores en FPGA.


El objetivo de este proyecto es aplicar los conceptos vistos en las clases magistrales y de laboratorio del curso de electrónica digital 1.  



### Proyectos.

Cada grupo debe elegir uno de los siguientes proyectos:

* **Calculadora** (D).
* **Prototipo de seguridad hogar inteligente** (MD).
* **Control de puerta RFID.** (M).
* **Sistema de estacionamiento asistido para vehículos** (F).


------
#### 1. Calculadora.

La calculadora contará con una interfaz de entrada basada en un teclado matricial y una pantalla LCD de 16x2 para la salida. El objetivo es desarrollar un sistema que pueda realizar operaciones aritméticas básicas, como suma, resta, multiplicación y división, y mostrar los resultados en la pantalla LCD.



**1.1 Objetivos**

* Diseñar una calculadora que pueda realizar las cuatro operaciones aritméticas básicas.

* Implementar la interfaz de entrada utilizando un teclado matricial de 4x4.

* Mostrar los datos y resultados en una pantalla LCD de 16x2.
  
* Utilizar Verilog para la descripción y simulación del sistema.


**1.2 Requerimientos**

**1.2.1 Requisitos de Hardware**

* Tarjeta de desarrollo Altera A-C4E6E10, FPGA Cyclon IV.
* Módulo de teclado matricial 4x4.
* Módulo de pantalla LCD 16x2.


**1.2.2 Operaciones Soportadas** 

* Suma
* Resta
* Multiplicación
* División 

**1.2.3 Interfaz de entrada**

Teclado matricial de 4x4 que incluye:

* Números (0-9)
* Operadores (+, -, *, /)
* Tecla de Igual (=) para mostrar el resultado.
* Tecla de Borrar para reiniciar la operación actual.

El sistema debe escanear el teclado para detectar entradas y generar el código correspondiente.


  **1.2.4 Interfaz de salida**

Pantalla LCD de 16x2.

* La primera fila mostrará la operación ingresada.
* La segunda fila mostrará el resultado.

La pantalla debe actualizarse en tiempo real a medida que se ingresa cada número u operador.

  **1.2.5 Capacidad de calculo**

* La calculadora debe ser capaz de manejar operaciones con números de hasta 4 dígitos.
* Debe gestionar errores como la división por cero.


**1.2.6 Simulación y Verificación**


El proyecto debe incluir testbenches para verificar el correcto funcionamiento de cada módulo. Realizar simulaciones para comprobar la correcta operación de la calculadora bajo diferentes condiciones de entrada.

---

### 2. Prototipo de control y seguridad hogar inteligente.

El sistema integrará un módulo Bluetooth para controlar un motor que emulará el movimiento de una persiana, un bombillo para emular el control de luces, y un sensor de presencia que activará un actuador. El objetivo es desarrollar un sistema que permita la automatización y control remoto de dispositivos domésticos, mejorando la comodidad y eficiencia energética del hogar.

**2.1 Objetivos**


* Implementar un sistema de control de hogar inteligente en Verilog.
* Diseñar un módulo Bluetooth para la comunicación y control remoto.
* Controlar un motor para emular el movimiento de una persiana.
* Implementar el control de un bombillo para encender y apagar luces.
* Integrar un módulo de detección de presencia que active un actuador.
* Verificar el funcionamiento del sistema mediante simulaciones y pruebas en hardware.

**2.2 Requerimientos**

**2.2.1 Requisitos de Hardware**

* Tarjeta de desarrollo Altera A-C4E6E10, FPGA Cyclon IV.
* Módulo Bluetooth.
* Motor DC para emular persianas.
* Led que emule encendido y apagado de bombillos.
* Sensor de presencia.
  


**2.2.2 Control Remoto a través de Bluetooth** 

l sistema debe recibir comandos de un dispositivo móvil a través de un módulo Bluetooth.
Los comandos deben ser interpretados y dirigidos al dispositivo correspondiente (motor de persiana, bombillo, o actuador).
 

**2.2.3 Control de Persiana (Motor)**

* El sistema debe controlar un motor DC que emula el movimiento de una persiana (subir y bajar).
* El motor debe responder a los comandos recibidos por Bluetooth para realizar el movimiento deseado.
* Implementar un mecanismo para detener el motor al alcanzar las posiciones límite (totalmente abierta o cerrada).


**2.2.4 Control de Luces (LED)**


El sistema debe encender y apagar un LED en respuesta a los comandos recibidos vía Bluetooth. El estado del bombillo debe ser mostrado en tiempo real y debe contar con una lógica de programa de encendido y apagado a una hora determinada. 


**2.2.5 Detección de Presencia**

* El sistema debe incluir un módulo de detección de presencia, que simule la detección de una persona en una habitación o la entrada del hogar. Al detectar presencia, el sistema debe activar un actuador (por ejemplo una alarma). La activación del actuador debe mantenerse mientras se detecte la presencia y desactivarse una vez la presencia desaparezca.


**2.2.6 Simulación y Verificación**


El proyecto debe incluir testbenches para verificar el correcto funcionamiento de cada módulo. Realizar simulaciones completa del sistema para comprobar el correcto funcionamiento del sistema.

---

#### 3. Control de puerta RFID.

El sistema permitirá la apertura y cierre de una puerta, emulado por un motor de paso, en función de la identificación de usuarios autorizados mediante un módulo RFID. Los ID autorizados se almacenarán en un banco de registros dentro del sistema, lo que permitirá verificar si una persona tiene permiso para acceder.


**3.1 Objetivos**

* Diseñar e implementar un sistema de control de acceso basado en RFID.
* Utilizar un motor de paso para emular la apertura y cierre de la puerta.
* Implementar un banco de registros para almacenar y verificar los ID autorizados.
* Desarrollar todo el sistema en Verilog y verificar su funcionamiento mediante simulaciones y pruebas.
  



**3.2 Requerimientos**

**3.2.1 Requisitos de Hardware**

* Tarjeta de desarrollo Altera A-C4E6E10, FPGA Cyclon IV.
* Módulo RFID y tarjetas RFID.
* Motor de paso para emulación de la puerta.
* Indicadores LED (opcional) o pantalla para estado de la puerta (opcional).


**3.2.2 Identificación mediante RFID** 

El sistema debe recibir los datos del módulo RFID, que leerá el ID de las tarjetas o llaveros RFID. El ID recibido debe compararse con un banco de registros que contiene los ID autorizados para determinar si se permite el acceso. Opcional se puede incluir un par de led de colores diferentes, que se enciendan si es permitido o no el acceso de la ID puesta en el sensor RFID.

**3.2.3 Interfaz de entrada**






**3.2.4 Control del Motor de Paso (Emulación de Puerta)**

El sistema debe controlar un motor de paso que emulará la apertura y cierre de la puerta. Al recibir un ID autorizado, el sistema debe activar el motor para abrir la puerta (girar en una dirección).
Después de un tiempo predefinido, el motor debe ser activado nuevamente para cerrar la puerta (girar en la dirección opuesta).


  **3.2.5 Banco de Registros (Almacenamiento de ID)**

El sistema debe incluir un banco de registros que almacene los ID de los usuarios autorizados.
El banco de registros debe ser accesible para agregar o eliminar IDs de manera dinámica. Implementar la lógica de comparación para verificar si el ID leído coincide con uno de los ID almacenados.


**3.2.6 Seguridad y respuesta**

Si el ID no es reconocido, el sistema no debe activar el motor y debe permanecer en estado de espera. El sistema debe responder rápidamente a la lectura del ID y completar la operación de apertura o cierre en un tiempo razonable.


**3.2.7 Simulación y Verificación**

Se bede crear un testbenches para verificar el correcto funcionamiento de cada módulo individualmente. Realizar simulaciones del sistema completo para validar la interacción entre los módulos y la lógica general.
Probar diferentes escenarios, incluyendo IDs autorizados, no autorizados, y fallos en la lectura.El proyecto debe incluir testbenches para verificar el correcto funcionamiento de cada módulo.

---

#### 4. Prototipo de sistema de estacionamiento asistido.

El sistema utilizará un sensor de distancia para medir la proximidad de obstáculos y contará con dos actuadores: un LED RGB, que indicará la proximidad mediante diferentes colores, y un módulo buzzer, que emitirá una alarma cuando se detecte una distancia muy corta. El objetivo es crear un sistema que asista al conductor en maniobras de estacionamiento, proporcionando alertas visuales y sonoras en función de la distancia a los objetos cercanos.


**4.1 Objetivos**

* Diseñar e implementar un sistema de estacionamiento asistido en Verilog.
* Utilizar un sensor de distancia para medir la proximidad a obstáculos.
* Implementar un LED RGB para proporcionar señales visuales en función de la distancia.
* Desarrollar un módulo buzzer que emita una alarma cuando se detecte una distancia muy corta.
* Verificar y probar el funcionamiento del sistema a través de simulaciones y pruebas en hardware.

**4.2 Requerimientos**

**4.2.1 Requisitos de Hardware**

* Tarjeta de desarrollo Altera A-C4E6E10, FPGA Cyclon IV.
* Sensor de distancia ultrasónico (p.ej., HC-SR04).
* LED RGB.
* Módulo Buzzer.


**4.2.2 Sensor de Distancia** 

El sistema debe integrar un sensor de distancia para medir la proximidad de obstáculos.Los datos de distancia deben ser procesados en tiempo real para determinar el nivel de proximidad.


**4.2.3 Indicaciones Visuales (LED RGB)**

El sistema debe utilizar un LED RGB para proporcionar señales visuales según la distancia detectada:

 - Verde: Cuando la distancia es segura (lejos del obstáculo).
 - Azul: Cuando la distancia es moderada (aproximándose al obstáculo).
 - Rojo: Cuando la distancia es corta (cerca del obstáculo).


  **4.2.4 Alarma Sonora (Módulo Buzzer)**

El sistema debe activar un buzzer para emitir una alarma sonora cuando la distancia medida por el sensor sea muy pequeña, indicando que el vehículo está peligrosamente cerca del obstáculo. La alarma debe ser continua mientras se mantenga la distancia crítica.


**4.2.5 Rango de distancias**

El sistema debe estar configurado con rangos de distancia específicos para la activación de cada color del LED y para el buzzer. Los rangos serán especificados por cada grupo a conveniencia.


**4.2.6 Simulación y Verificación**


El proyecto debe incluir testbenches para verificar el correcto funcionamiento de cada módulo. Realizar simulaciones para comprobar la correcta operación de la calculadora bajo diferentes condiciones de entrada.

---

### Entregables


Se debe crear testbenches para verificar el correcto funcionamiento de cada módulo individual. Realizar simulaciones del sistema completo para validar la interacción entre los componentes y la respuesta del sistema a diferentes distancias.