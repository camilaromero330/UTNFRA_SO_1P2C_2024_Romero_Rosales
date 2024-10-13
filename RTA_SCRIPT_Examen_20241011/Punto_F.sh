#!/bin/bash
IPPUBLICA=$(curl -s ifconfig.me)
HASH=$(sudo grep $USER /etc/shadow | awk -F ':' '{print $2}')
URLDEREPOSITORIO=$(git remote get-url origin)

#Se crea el txt y se agrega la información requerida
cat << EOF > ~/repogit/UTNFRA_SO_1P2C_2024_Romero_Rosales/RTA_ARCHIVOS_Examen_20241011/Filtro_Avanzado.txt
Mi IP Publica es: $IPPUBLICA
Mi usuario es: $USER
El hash de mi Usuario es: $HASH
La URL de mi repositorio es: $URLDEREPOSITORIO
EOF

#Se imprime el archivo txt
cat ~/repogit/UTNFRA_SO_1P2C_2024_Romero_Rosales/RTA_ARCHIVOS_Examen_20241011/Filtro_Avanzado.txt
