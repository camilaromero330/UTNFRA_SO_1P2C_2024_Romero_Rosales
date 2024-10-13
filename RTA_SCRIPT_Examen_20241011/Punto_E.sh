#!/bin/bash
MEMORIARAM=$(cat /proc/meminfo | grep "MemTotal" | awk -F ':' '{print $2}')
CHASSIS=$(sudo dmidecode -t chassis | grep "Manufacturer" | awk -F ':' '{print $2}')

#Se crea el txt y se agrega la información del total de memoria RAM
cat << EOF > ~/repogit/UTNFRA_SO_1P2C_2024_Romero_Rosales/RTA_ARCHIVOS_Examen_20241011/Filtro_Basico.txt
Total de memoria ram: $MEMORIARAM
EOF

#Se agrega la información del fabricante del chassis
cat << EOF >> ~/repogit/UTNFRA_SO_1P2C_2024_Romero_Rosales/RTA_ARCHIVOS_Examen_20241011/Filtro_Basico.txt
Fabricante del chassis: $CHASSIS
EOF

#Se imprime el archivo txt
cat ~/repogit/UTNFRA_SO_1P2C_2024_Romero_Rosales/RTA_ARCHIVOS_Examen_20241011/Filtro_Basico.txt
