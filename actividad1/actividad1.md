## Tipos de kernel y sus diferencias
---
### Tipos de kernel
1. Kernel Monolítico 

    Es un tipo de kernel grande para todas las tareas. Es el único responsable de la gestión de la memoria y de los procesos, de la comunicación entre procesos y proporciona funciones de soporte de drivers y hardware.

2. Microkernel

    Es un tipo de kernel diseñado intencionadamente de un tamaño pequeño para que en caso de fallo no paralice todo el sistema operativo. Sin embargo, para que pueda hacerse cargo de las mismas funciones que un kernel grande, está dividido en varios módulos.

3. Kernel Hibrido
    Es una combinación entre el kernel monolítico y el microkernel. Es un micronúcleo que tienen algo de código «no esencial» en espacio de núcleo, para que este se ejecute más rápido de lo que lo haría si estuviera en espacio de usuario. 

### Diferencias

| Kernel Monolítico| Microkernel| Kernel Hibrido|
| -- | -- | -- |
| Posee un gran nucleo para poder realizar todas las tareas del sistema | Posee un nucleo compacto, por lo que brinda un conjunto de abstracciones basicas del hardware | Posee un micronúcleo que tiene algo de código  «no esencial» en espacio de núcleo, para que este se ejecute más rápido |
| Es de tipo no modular y puede alcanzar mayor rendimiento que un microkernel | Es de tipo modular, es decir, que está dividido en modulos | Posee el diseño más simple del núcleo monolítico con la modularidad |
| Se encuentra en modo supervisor | Se encuentra en modo usuario | Se puede elegir qué acciones ejecutar en modo usuario, y cuáles en modo supervisor |
| Cada vez que se añada una nueva funcionalidad, deberá ser recompilado en su totalidad y luego reiniciado. Todos los componentes funcionales del núcleo tienen acceso a todas sus estructuras de datos internas y a sus rutinas. Por ende, un error en una rutina podría propagarse a todo el sistema | Posee una descentralización de fallos (un fallo en una parte del sistema no se propagaría al sistema entero) y facilita la creación y depuración de controladores de dispositivos | Combina la velocidad y el diseño más simple del núcleo monolítico con la modularidad y seguridad de ejecución del microkernel |




## User vs Kernel Mode
---
|User | Kernel Mode |
| -- | -- |
| El programa de aplicación se ejecuta y se inicia | El programa tiene acceso directo y sin restricciones a los recursos del sistema |
| Un proceso falla si se produce una interrupción | Todo el sistema operativo podría dejar de funcionar si se produce una interrupción |
| Se le conoce como modo sin privilegios, modo restringido o modo esclavo | Se le conoce como modo maestro, modo privilegiado o modo sistema |
| Todos los procesos obtienen espacio de direcciones virtuales separados | Todos los procesos comparten un único espacio de direcciones virtuales | 
| Las aplicaciones tienen menos provilegios | Las aplicaciones tienen más privilegios |
| Necesita acceder a los programas del kernel, ya que no puede acceder directamente a ellos | Puede acceder tanto a los programas de usuario como a los programas del kernekl, sin restricciones |