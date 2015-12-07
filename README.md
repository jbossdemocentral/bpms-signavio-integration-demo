JBoss BPM Suite & Signavio Process Editor Integration Demo
==========================================================
The example project mortgage demo that is delivered with JBoss BPM Suite, but in this case we are importing
the process as designed externally in the Signavio Process Editor and extending it with execution implementation 
details to run the mortage process.


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

7. Using process designer, import any of the Signavio process examples that were exported to the files found here:

   ```
   support/MortgageDemoSignavio.bpmn

   support/MortgageDemoSignavioi2.bpmn
   ```

8. See screenshots below for how this should look and note that the JBoss BPM Suite process designer included validation that puts
	 messages about tasks not specified, this is correct as at this point you need to start implementing the process tasks.


Supporting Articles
-------------------
- [7 Steps to Your First Process with JBoss BPM Suite Starter Kit](http://www.schabell.org/2015/08/7-steps-first-process-jboss-bpmsuite-starter-kit.html)

- [How You Can Change JBoss BPM Suite the Open Source Way](http://www.schabell.org/2015/08/howto-change-jboss-bpms-opensource-way.html)

- [Webinar: Developing process-enabled applications with BPA and BPM tools](http://www.schabell.org/2015/07/webinar-developing-jboss-bpms-enabled-apps-with-signavio.html)

- [From Design to Execution with JBoss BPM Suite & Signavio Process Editor](http://www.schabell.org/2015/06/design-to-execution-with-jboss-bpmsuite-signavio.html)


Released versions
-----------------
See the tagged releases for the following versions of the product:

- v1.4 - JBoss BPM Suite 6.2.0, JBoss EAP 6.4.4, Signavio Process Editor 8.6.0, and mortgage demo installed with Signavio designed process second iteration for import, update docs.

- v1.3 - JBoss BPM Suite 6.1.0, Signavio Process Editor 8.6.0, and mortgage demo installed with Signavio designed process second iteration for import, update docs.

- v1.2 - JBoss BPM Suite 6.1.0, Signavio Process Editor 8.6.0, and mortgage demo installed with Signavio designed process second iteration for import, update docs.

- v1.1 - JBoss BPM Suite 6.1.0, Signavio Process Editor 8.6.0, and mortgage demo installed with Signavio designed process for import, update docs.

- v1.0 - JBoss BPM Suite 6.1.0, Signavio Process Editor 8.6.0, and mortgage demo installed with Signavio designed process for import.

![0](https://raw.githubusercontent.com/jbossdemocentral/bpms-signavio-integration-demo/master/docs/demo-images/signavio-process-editor.png)

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
