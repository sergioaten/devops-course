# Actualizar los repositorios y paquetes existentes
sudo apt-get update -y

# Instalar Java (requerido por Jenkins)
sudo apt install openjdk-11-jre -y

# Descargar e instalar Jenkins
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
/usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
/etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update -y
sudo apt-get install jenkins -y

# Iniciar el servicio de Jenkins
sudo systemctl start jenkins