echo "Setting up environment variables..."

echo "export JAVA_HOME=${ENV_HOME_JAVA}" >> env
echo "export M2_HOME=${ENV_HOME_MAVEN}" >> env
echo "export ANDROID_HOME=${ENV_HOME_ANDROID}" >> env
echo "export GRADLE_HOME=${ENV_HOME_GRADLE}" >> env
echo "export GOROOT=${ENV_GOROOT}" >> env
echo "export GOPATH=${ENV_GOPATH}" >> env
echo '' >> env
echo 'export PATH=$PATH:$JAVA_HOME/bin' >> env
echo 'export PATH=$PATH:$M2_HOME/bin' >> env
echo 'export PATH=$PATH:$GRADLE_HOME/bin' >> env
echo 'export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools' >> env
echo 'export PATH=$PATH:$GOROOT/bin' >> env

echo "cp env /etc/profile.d"
