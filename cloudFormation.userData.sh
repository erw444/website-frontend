#!/bin/bash
sudo yum update -y
sudo yum install -y java
sudo yum install -y git

#Setup gradle
gradle_version=6.6.1
wget -c https://services.gradle.org/distributions/gradle-${gradle_version}-all.zip
sudo unzip  gradle-${gradle_version}-all.zip -d /opt
sudo ln -s /opt/gradle-${gradle_version} /opt/gradle
printf "export GRADLE_HOME=/opt/gradle\nexport PATH=\$PATH:\$GRADLE_HOME/bin\n" > /etc/profile.d/gradle.sh
source /etc/profile.d/gradle.sh

git clone https://github.com/erw444/website-frontend.git
cd website-frontend
sudo ./gradlew bootRun

# The above commands base64 encoded for entering into UserData
#IyEvYmluL2Jhc2gKc3VkbyB5dW0gaW5zdGFsbCAteSBqYXZhCnN1ZG8geXVtIGluc3RhbGwgLXkgZ2l0CgojU2V0dXAgZ3JhZGxlCmdyYWRsZV92ZXJzaW9uPTYuNi4xCndnZXQgLWMgaHR0cHM6Ly9zZXJ2aWNlcy5ncmFkbGUub3JnL2Rpc3RyaWJ1dGlvbnMvZ3JhZGxlLSR7Z3JhZGxlX3ZlcnNpb259LWFsbC56aXAKc3VkbyB1bnppcCAgZ3JhZGxlLSR7Z3JhZGxlX3ZlcnNpb259LWFsbC56aXAgLWQgL29wdApzdWRvIGxuIC1zIC9vcHQvZ3JhZGxlLSR7Z3JhZGxlX3ZlcnNpb259IC9vcHQvZ3JhZGxlCnByaW50ZiAiZXhwb3J0IEdSQURMRV9IT01FPS9vcHQvZ3JhZGxlXG5leHBvcnQgUEFUSD1cJFBBVEg6XCRHUkFETEVfSE9NRS9iaW5cbiIgPiAvZXRjL3Byb2ZpbGUuZC9ncmFkbGUuc2gKc291cmNlIC9ldGMvcHJvZmlsZS5kL2dyYWRsZS5zaAoKZ2l0IGNsb25lIGh0dHBzOi8vZ2l0aHViLmNvbS9lcnc0NDQvd2Vic2l0ZS1mcm9udGVuZC5naXQKY2Qgd2Vic2l0ZS1mcm9udGVuZApzdWRvIC4vZ3JhZGxldyBib290UnVuCmNkIHdlYnNpdGUtZnJvbnRlbmQKc3VkbyAuL2dyYWRsZXcgYm9vdFJ1bg==
