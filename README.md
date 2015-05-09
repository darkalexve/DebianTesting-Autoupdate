Script de Autoinstalacion de Debian Rama Testing (Actualmente Stretch al 09/05/2015) desde los Repos de CANTV (Venezuela) para menor cantidad de saltos en red.

Este Script es SEMI-AUTOMATICO, Ejecutara todos los procesos, mas tu deberas estar atento a confirmar ciertos parametros.

Control de Cambios:

- 09/05/2015

***Creacion del Script***
Funciones:
1) Primero respalda los sources.list viejos, luego añade uno configurado con los repos nacionales de Cantv para garantizar menor salto de red.
2) Luego ejecuta las rutinas de Actualizacion para pasar de tu version Actual a Testing
3) Luego se edita el archivo resolv.conf con las OpenDNS
4) Se compila Driver Broadcom BCM4312
5) Reinicio del Equipo y Finalizacion del Script
