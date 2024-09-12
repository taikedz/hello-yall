Installing Java is a little fraught. this author's recommendation is to use Ubuntu or WSL/ubuntu and run

    sudo apt update && sudo apt install openjdk-17-jdk

There are of course all manner of other JDK and Java versions for all platforms, but usually to stick with LTS releases, JDK-11 and JDK-17 seem to be the stable recommended versions.

---

As good practice, ensure the classpath points you the folder containing `./helloyall/`

    export CLASSPATH="$PWD:$CLASSPATH"


Compile - use the file path

    javac helloyall/Hey.java

Run - use the class hierarchy:

    java helloyall.Hey
