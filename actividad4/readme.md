# Actividad 4
---
## Script
```bash
#!/bin/bash
fecha=`date +"%d-%m-%Y %H:%M:%S"`
echo "Hola, esta es la actividad 4. Fecha $fecha" | systemd-cat -p info

```

## Copiar archivo script a la carpeta bin
```bash
sudo cp script.bash /usr/local/bin
```

## Dar permisos de ejecucion
```bash
sudo chmod +x /usr/local/bin/script.sh
```

## Creacion archivo de servicio
Este archivo debe de crearse en `/etc/systemd/system` y se debe guardar como `miservicio.service` debe contener lo siguiente

```service
[Unit]
Description=SO1_Actividad4_202003919
[Service]
ExecStart=/usr/local/bin/script.sh
[Install]
WantedBy=multi-user.target
```

Se recomienda configurar los permisos de este archivo, con el siguiente comando
```bash
sudo chmod 640 /etc/systemd/system/miservicio.service
```

## Iniciar el servicio
Antes de iniciar el servicio tenemos que haber realizado todos los pasos anteriores y finalmente comprobaremos que todo se encuentre bien con el siguiente comando
```bash
sudo systemctl status miservicio
```
Si obtenemos una respuesta favorable podemos proceder a iniciar el servicio con el comando
```bash
sudo systemctl start miservicio
```
Finalmente volvemos a ejecutar el comando
```bash
sudo systemctl status miservicio
```
Y deberiamos tener una salida similar a esta
```
mar 20 13:17:52 fabian systemd[1]: Started SO1_Actividad4_202003919.
mar 20 13:17:52 fabian cat[21301]: Hola, esta es la actividad 4. Fecha 20-03-2023 13:17:52
```