This example is reliant on the presence of a Jenkins server and an agent.

Chances are that if you are actively interested in running this, you already have a Jeknins server, so please use that. Installation and setup of a Jenkins server is beyond the scope of these notes...

---

Set up job

* Create a new "Pipeline"-type job
* Point it to this repository
* Point the path to groovy-jenkins/hey.Jenkinsfile
* Configure as "Ths job is parameterised"
* Add a String parameter, named `NAME`
* Save the job

Run job

* Click "Build with parameters"
* Supply names into the NAME parameter, like `Alex,Jay`
* Build
* See the console output
