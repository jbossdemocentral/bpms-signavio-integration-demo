JBoss BPM Suite and Signavio Process Editor Demo 
================================================
The example project mortgage demo that is delivered with the JBoss BPM product, but in this case we are importing
the process as designed externally in the Signavio Process Designer.


Install on your machine
-----------------------
1. [Download and unzip.](https://github.com/jbossdemocentral/bpms-mortgage-demo/archive/master.zip)

2. Add products to installs directory.

3. Run 'init.sh' or 'init.bat' file. 'init.bat' must be run with Administrative privileges. 

4. Start JBoss BPMS Server by running 'standalone.sh' or 'standalone.bat' in the <path-to-project>/target/jboss-eap-6.1/bin directory.

5. Login to http://localhost:8080/business-central  

    ```
    - login for admin, appraisor, broker, and manager roles (u:erics / p:bpmsuite1!)
    ```

6. Mortgage Loan demo pre-installed as project.

7. Using process designer, import the Signavio process that was exported to the file found in support/MortgageDemoSignavio.bpmn.

8. You can also pre-load the BPM Suite Mortgage project with multiple pre-configured process instances, some will run through the
rejected path, some will be waiting for you in the various human task when you login. To inject these pre-configured
requests just run the client jar from a command line shell. You can run the following command from the 'support' directory:

    ```
   java -jar jboss-mortgage-demo-client.jar erics bpmsuite1!
    ```

Notes
-----
The following functionality is covered:

- One advanced process.

- Four Human Tasks assigned to 3 different roles

- Use of Swimlanes to assign a task to the user who previously took ownership

- Several guide business rules

- Several technical rules

- A guided web decision table

- Several Script Tasks for Java work

- One Web Service task using SOAP/HTTP

- Exclusive use of the BPMS Data Modeler for creating the Java fact model

- Use of graphic form designer to create 4 forms with an example of javascript validation

- Helper jar to pre-load with sixteen process instances in various states.

For 'Appraisal' task only, any claimed tasks that are not competed within a minute will be reassigned automatically back into the group for processing.

Note that the entire demo is running default in memory, restart server, lose your process instances, data, monitoring history.

Sources for the demo client jar can be found in the projects directory.


Supporting Articles
-------------------
[3 shockingly easy ways into JBoss rules, events, planning & BPM](http://www.schabell.org/2015/01/3-shockingly-easy-ways-into-jboss-brms-bpmsuite.html)

[Jump Start Your Rules, Events, Planning and BPM Today](http://www.schabell.org/2014/12/jump-start-rules-events-planning-bpm-today.html)

[5 Handy Tips From JBoss BPM Suite For Release 6.0.3](http://www.schabell.org/2014/10/5-handy-tips-from-jboss-bpmsuite-release-603.html)

[Rocket into the Clouds with OpenShift bpmPaaS Quickstarts](http://www.schabell.org/2014/10/red-hat-openshift-bpmpaas-automated-demo-projects-updated.html)

[Red Hat JBoss BPM Suite - all product demos updated for version 6.0.2.GA release](http://www.schabell.org/2014/07/redhat-jboss-bpmsuite-product-demos-6.0.2-updated.html)

[Red Hat JBoss BPM Suite - installing the Mortgage demo project (video)] (http://www.schabell.org/2013/10/jboss-bpm-suite-install-mortage-demo-video.html)

[Red Hat JBoss BPM Suite - get rocking with the all new Mortgage Demo] (http://www.schabell.org/2013/10/jboss-bpm-suite-rocking-the-mortgage-demo.html)


Released versions
-----------------
See the tagged releases for the following versions of the product:

- v0.1 - JBoss BPM Suite 6.1.0, Signavio Process Editor 8.6.0, and mortgage demo installed with Signavio designed process for import.

![Mortgage Process](https://github.com/jbossdemocentral/bpms-mortgage-demo/blob/master/docs/demo-images/mortgage-process.png?raw=true)

![Process and Task Dashboard](https://github.com/jbossdemocentral/bpms-mortgage-demo/blob/master/docs/demo-images/mock-bpm-data.png?raw=true)

