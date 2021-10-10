echo  Installing Sonar Scanner CLI
wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.6.2.2472-linux.zip
unzip sonar-scanner-cli-4.6.2.2472-linux.zip
export PATH=$(pwd)sonar-scanner-cli-4.6.2.2472-linux/bin:$PATH
echo Sonar Scanner Installed!
echo Running Sonar Scanner...
#Agregar el Comando de Sonar  Scanner
sonar-scanner \
  -Dsonar.projectKey=EXF_Mario_FerretoR \
  -Dsonar.sources=. \
  -Dsonar.host.url=https://sonar.semanticsecurity.org \
  -Dsonar.login=$SONAR_LOGIN
echo Perfecto!
