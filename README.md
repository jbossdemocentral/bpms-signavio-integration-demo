JBoss BPM Suite & Signavio Process Editor
=========================================
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

7. Using process designer, import the Signavio process that was exported to the file found in:

   ```
   support/MortgageDemoSignavio.bpmn
   ```

8. See screenshots below for how this should look and note that the JBoss BPM Suite process designer included validation that puts
	 messages about tasks not specified, this is correct as at this point you need to start implementing the process tasks.


Supporting Articles
-------------------
None yet...


Released versions
-----------------
See the tagged releases for the following versions of the product:

- v0.1 - JBoss BPM Suite 6.1.0, Signavio Process Editor 8.6.0, and mortgage demo installed with Signavio designed process for import.

![1](https://raw.githubusercontent.com/jbossdemocentral/bpms-signavio-integration-demo/master/docs/demo-images/1-signavio-create-new.png)

![2](https://raw.githubusercontent.com/jbossdemocentral/bpms-signavio-integration-demo/master/docs/demo-images/2-signavio-name-process.png)

![3](https://raw.githubusercontent.com/jbossdemocentral/bpms-signavio-integration-demo/master/docs/demo-images/3-signavio-import-bpmn.png)

![4](https://raw.githubusercontent.com/jbossdemocentral/bpms-signavio-integration-demo/master/docs/demo-images/4-signavio-file-import.png)

![5](https://raw.githubusercontent.com/jbossdemocentral/bpms-signavio-integration-demo/master/docs/demo-images/5-signavio-bpmn-imported.png)

![6](https://raw.githubusercontent.com/jbossdemocentral/bpms-signavio-integration-demo/master/docs/demo-images/6-signavio-replace-existing.png)

![7](https://raw.githubusercontent.com/jbossdemocentral/bpms-signavio-integration-demo/master/docs/demo-images/7-signavio-imported-results.png)

![8](https://raw.githubusercontent.com/jbossdemocentral/bpms-signavio-integration-demo/master/docs/demo-images/8-signavio-validation-messages.png)

![9](https://raw.githubusercontent.com/jbossdemocentral/bpms-signavio-integration-demo/master/docs/demo-images/9-signavio-description-node.png)

![10](https://raw.githubusercontent.com/jbossdemocentral/bpms-signavio-integration-demo/master/docs/demo-images/10-signavio-credit-service.png)
