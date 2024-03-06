# Define la ruta de instalación de Java
$javaInstallationPath = "C:\Program Files\Java\jdk-11.0.11"

# Configura JAVA_HOME
[System.Environment]::SetEnvironmentVariable("JAVA_HOME", $javaInstallationPath, [System.EnvironmentVariableTarget]::Machine)

# Agrega JAVA_HOME al PATH
$currentPath = [System.Environment]::GetEnvironmentVariable("Path", [System.EnvironmentVariableTarget]::Machine)
$newPath = "$currentPath;$javaInstallationPath\bin"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, [System.EnvironmentVariableTarget]::Machine)