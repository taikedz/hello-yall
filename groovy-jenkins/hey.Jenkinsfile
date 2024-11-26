#!groovy
// (shebang for syntax highlighting help)

node("runner-node") {
    // "runner-node" should be an agent or label defined on your Jenkins server
    // Try to always confine code to a node that is _not_ your master node.

    // The hey.Jenkinsfile should be in a git repo !! Or SCM of your choice
    // The files must be checked out to a node workspace first
    checkout scm;

    // We can load from the workspace, assuming your files are at the root of the repo
    hello = load "${env.WORKSPACE}/groovy-jenkins/stuff/hello.groovy"

    names = env.NAMES.split(",")

    // Iteration - not a loop ! - with a closure
    names.each { name ->
        phrase = hello.greet(name);
        println(phrase)
    }
}

