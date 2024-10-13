#!/bin/bash
#Creación de usuarios y grupos
sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores
sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A1
sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A2
sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A3
sudo useradd -m -s /bin/bash -G p1c2_2024_gProfesores -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_P1

#Ajuste de permisos para las carpetas
sudo chmod 750 /Examenes-UTN/alumno_1
sudo chown p1c2_2024_A1:p1c2_2024_A1 /Examenes-UTN/alumno_1
sudo chmod 760 /Examenes-UTN/alumno_2
sudo chown p1c2_2024_A2:p1c2_2024_A2 /Examenes-UTN/alumno_2
sudo chmod 700 /Examenes-UTN/alumno_3
sudo chown p1c2_2024_A3:p1c2_2024_A3 /Examenes-UTN/alumno_3
sudo chmod 775 /Examenes-UTN/profesores
sudo chown p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-UTN/profesores

#Creación del archivo txt con la salida del comando whoami con c/u de los usuarios
sudo su -c "whoami > /Examenes-UTN/alumno_1/validar.txt" p1c2_2024_A1
sudo su -c "whoami > /Examenes-UTN/alumno_2/validar.txt" p1c2_2024_A2
sudo su -c "whoami > /Examenes-UTN/alumno_3/validar.txt" p1c2_2024_A3
sudo su -c "whoami > /Examenes-UTN/profesores/validar.txt" p1c2_2024_P1