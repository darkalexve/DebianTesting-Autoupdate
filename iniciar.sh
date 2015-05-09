#!/bin/bash 

	################################################
	####################LEER ACA####################
#Para ver como funciona el Script, leer el README.
#Instalacion SEMI-AUTOMATICA.
#Al ejecutarlo pedira Password ROOT se requiere Conexion de Internet preferiblemente CANTV (no limitativo)
#Para Ejecutarlo vete a la ruta donde descargaste el proyecto y ejecuta desde terminal lo siguiente (sin comillas) "chmod +x ./iniciar.sh"
#Creado por: Jonathan Melendez

echo "Paso 1: Copia de Seguridad de tu Sources List Actual"
cd /etc/apt/
cp sources.list sources.list.copia
rm -f sources.list
sleep 2 #Espera por 2 segs

echo "Paso 2: Instalando Git"
apt-get update
apt-get install git

sleep 2 #Espera por 2 segs

echo "Paso 3: Descargando de Github la data requerida..."
cd /home/$USER/
git clone https://github.com/darkalexve/DebianTesting-Autoupdate.git
sleep 2 #Espera por 2 segs
cd DebianTesting-Autoupdate/sourcelist/
mv sources.list /etc/apt/

sleep 2 #Espera por 2 segs

echo "Paso 4: Actualizando el listado de Sources con nuevos Repos de CANTV"
sudo apt-get update
sleep 2 #Espera por 2 segs

echo "Paso 5: Descargando e instalando los paquetes de Debian Testing"
apt-get --download-only dist-upgrade
apt-get dist-upgrade

sleep 2 #Espera por 2 segs
echo "Paso 6: Añadiendo Google DNS"
cd /etc
cp resolv.conf resolv.conf.copia
rm -f resolv.conf 
cd /home/$USER/
cd DebianTesting-Autoupdate/resolv/
mv resolv.conf /etc/

sleep 2 #Espera por 2 segs
echo "Paso 7: Configurando Controlador Broadcom"
aptitude update
aptitude install module-assistant wireless-tools
m-a a-i broadcom-sta

sleep 5 #Espera por 5 segs
echo "Switchea el interruptor de Wifi de tu Portatil, ya funciona ;)"
sleep 5 #Espera por 5 segs

echo "Paso 8: Limpiando todo el desastre que quedo.."

apt-get autoclean
apt-get clean
sudo apt-get autoremove
sleep 10 #espera 10 segs
echo "Gracias por usar este Script, aun queda un paso, espera 10 segundos..."

echo "Paso 9: Reiniciando el portatil"
init 6

 


