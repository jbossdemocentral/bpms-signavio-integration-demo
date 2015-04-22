JBoss BPM Suite and Signavio Process Editor Demo 
================================================
The example project mortgage demo that is delivered with the JBoss BPM product, but in this case we are importing
the process as designed externally in the Signavio Process Editor.


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
None yet...


Released versions
-----------------
See the tagged releases for the following versions of the product:

- v0.1 - JBoss BPM Suite 6.1.0, Signavio Process Editor 8.6.0, and mortgage demo installed with Signavio designed process for import.

![1](https://raw.githubusercontent.com/eschabell/bpms-signavio-integration-demo/master/docs/demo-images/1-signavio-create-new.png)
![2](https://raw.githubusercontent.com/eschabell/bpms-signavio-integration-demo/master/docs/demo-images/2-signavio-name-process.png)
![3](https://raw.githubusercontent.com/eschabell/bpms-signavio-integration-demo/master/docs/demo-images/3-signavio-import-bpmn.png)
![4](https://raw.githubusercontent.com/eschabell/bpms-signavio-integration-demo/master/docs/demo-images/4-signavio-file-import.png)
![5](https://raw.githubusercontent.com/eschabell/bpms-signavio-integration-demo/master/docs/demo-images/5-signavio-bpmn-imported.png)
![6](https://raw.githubusercontent.com/eschabell/bpms-signavio-integration-demo/master/docs/demo-images/6-signavio-replace-existing.png)
![7](https://raw.githubusercontent.com/eschabell/bpms-signavio-integration-demo/master/docs/demo-images/7-signavio-imported-results.png)
![8](https://raw.githubusercontent.com/eschabell/bpms-signavio-integration-demo/master/docs/demo-images/8-signavio-description-node.png)
![9](https://raw.githubusercontent.com/eschabell/bpms-signavio-integration-demo/master/docs/demo-images/9-signavio-credit-service.png)
