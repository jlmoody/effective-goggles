

exec { "add jenkins key":
    command => "/usr/bin/wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -"
}

exec { "add jenkins repo":
    command => "/bin/echo deb https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list"}

exec { "apt-get update":
    command => "/usr/bin/apt-get update"
}

exec { "install java 8":
    command => "/usr/bin/apt-get -y install openjdk-8-jre-headless"
}

exec { "apt-get install":
    command => "/usr/bin/apt-get -y install jenkins"
}

exec { "configure jenkins http port":
    command => "/bin/sed -i 's/HTTP_PORT=8080/HTTP_PORT=8000/g' /etc/default/jenkins"
}

exec { "restart jenkins for new default":
    command => "/usr/sbin/service jenkins restart"
}
