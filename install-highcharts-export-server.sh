#install jdk
sudo apt-get install openjdk-7-jdk openjdk-7-jre -y

#check java version
java -version

#export java home export JAVA_HOME=/usr/lib/jvm/java-7-openjdk$
echo "export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64" >> ~/.bashrc

#enable value JAVA_HOME
. ~/.bashrc

#install tomcat
sudo apt-get install tomcat7 -y

#export “export CATALINA_HOME= /usr/share/tomcat7” to .bashrc
echo "export CATALINA_HOME=/usr/share/tomcat7" >> ~/.bashrc

#enable value CATALINA_HOME
. ~/.bashrc


#install maven
sudo apt-get install maven -y

#check if maven was installed
mvn -version

#Install PhantomJS
cd /usr/local/share
sudo wget https://phantomjs.googlecode.com/files/phantomjs-1.9$
tar xjf phantomjs-1.9.0-linux-x86_64.tar.bz2
sudo ln -s /usr/local/share/phantomjs-1.9.0-linux-x86_64/bin/phantomjs /usr/local/share/phantomjs
sudo ln -s /usr/local/share/phantomjs-1.9.0-linux-x86_64/bin/phantomjs /usr/local/bin/phantomjs
sudo ln -s /usr/local/share/phantomjs-1.9.0-linux-x86_64/bin/phantomjs /usr/bin/share/phantomjs

#check if phantomjs was successfully installed
phantomjs -v

# install export server from repository
cd ~
git clone https://github.com/highcharts/highcharts-export-server
cd ~/highcharts-export-server/java/highcharts-export
mvn install
cd highcharts-export-web
mvn clean package
mvn install
sudo cp -R ~/highcharts-export-server/java/highcharts-export/highcharts-export-web/target/highcharts-export-web.war /var/lib/tomcat7/webapps/

