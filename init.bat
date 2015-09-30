@ECHO OFF
setlocal

set PROJECT_HOME=%~dp0
set DEMO=Mortgage Demo
set AUTHORS=Steven Lewandowski, Babak Mozaffari, Eric D. Schabell
set PROJECT=git@github.com:jbossdemocentral/bpms-signavio-integration-demo.git
set PRODUCT=JBoss BPM Suite
set JBOSS_HOME=%PROJECT_HOME%target\jboss-eap-6.4
set SERVER_DIR=%JBOSS_HOME%\standalone\deployments\
set SERVER_CONF=%JBOSS_HOME%\standalone\configuration\
set SERVER_BIN=%JBOSS_HOME%\bin
set SRC_DIR=%PROJECT_HOME%installs
set SUPPORT_DIR=%PROJECT_HOME%support
set PRJ_DIR=%PROJECT_HOME%projects\mortgage-demo
set WEBSERVICE=jboss-mortgage-demo-ws.war
set BPMS=jboss-bpmsuite-6.2.0.GA-installer.jar
set EAP=jboss-eap-6.4.3-installer.jar
set VERSION=6.2

REM wipe screen.
cls

echo.
echo #################################################################
echo ##                                                             ##   
echo ##  Setting up the %DEMO%                               ##
echo ##                                                             ##   
echo ##                                                             ##   
echo ##     ####  ####   #   #      ### #   # ##### ##### #####     ##
echo ##     #   # #   # # # # #    #    #   #   #     #   #         ##
echo ##     ####  ####  #  #  #     ##  #   #   #     #   ###       ##
echo ##     #   # #     #     #       # #   #   #     #   #         ##
echo ##     ####  #     #     #    ###  ##### #####   #   #####     ##
echo ##                                                             ##   
echo ##                            #                                ##   
echo ##                          #####                              ##   
echo ##                            #                                ##   
echo ##                                                             ##   
echo ##      #### #####  #### #   #  ####  #   # #####  ###         ##   
echo ##     #       #   #     ##  # #    # #   #   #   #   #        ##   
echo ##      ###    #   #  ## # # # ###### #   #   #   #   #        ##   
echo ##         #   #   #   # #  ## #    #  # #    #   #   #        ##   
echo ##     ####  #####  #### #   # #    #   #   #####  ###         ##   
echo ##                                                             ##   
echo ##  brought to you by,                                         ##   
echo ##            %AUTHORS%  ##
echo ##                                                             ##   
echo ##  %PROJECT%     ##
echo ##                                                             ##   
echo #################################################################
echo.

REM make some checks first before proceeding.	
if exist %SRC_DIR%\%EAP% (
        echo Product sources are present...
        echo.
) else (
        echo Need to download %EAP% package from the Customer Support Portal
        echo and place it in the %SRC_DIR% directory to proceed...
        echo.
        GOTO :EOF
)

if exist %SRC_DIR%\%BPMS% (
        echo Product sources are present...
        echo.
) else (
        echo Need to download %BPMS% package from the Customer Support Portal
        echo and place it in the %SRC_DIR% directory to proceed...
        echo.
        GOTO :EOF
)

REM Remove the old JBoss instance, if it exists.
if exist %JBOSS_HOME% (
         echo - removing existing JBoss product install...
         echo.
        
         rmdir /s /q "%JBOSS_HOME%"
)

REM Run installers.
echo EAP installer running now...
echo.
call java -jar %SRC_DIR%/%EAP% %SUPPORT_DIR%\installation-eap -variablefile %SUPPORT_DIR%\installation-eap.variables

if not "%ERRORLEVEL%" == "0" (
  echo.
	echo Error Occurred During JBoss EAP Installation!
	echo.
	GOTO :EOF
)


echo JBoss BPM Suite installer running now...
echo.
call java -jar %SRC_DIR%\%BPMS% %SUPPORT_DIR%\installation-bpms -variablefile %SUPPORT_DIR%\installation-bpms.variables

if not "%ERRORLEVEL%" == "0" (
	echo Error Occurred During %PRODUCT% Installation!
	echo.
	GOTO :EOF
)

echo - enabling demo accounts role setup in application-roles.properties file...
echo.
xcopy /Y /Q "%SUPPORT_DIR%\application-roles.properties" "%SERVER_CONF%"
echo. 

echo - setting up demo projects...
echo.

mkdir "%SERVER_BIN%\.niogit\"
xcopy /Y /Q /S "%SUPPORT_DIR%\bpm-suite-demo-niogit\*" "%SERVER_BIN%\.niogit\"
echo. 

REM Optional: uncomment this to install mock data for BPM Suite, providing 
REM           colorful BAM history charts and filled Process & Task dashboard 
REM           views.
REM
REM echo - setting up mock bpm dashboard data...
REM echo.
REM xcopy /Y /Q "%SUPPORT_DIR%\1000_jbpm_demo_h2.sql" "%SERVER_DIR%\dashbuilder.war\WEB-INF\etc\sql"
REM echo. 

echo - setting up standalone.xml configuration adjustments...
echo.
xcopy /Y /Q "%SUPPORT_DIR%\standalone.xml" "%SERVER_CONF%"
echo.

echo - setup email task notification users...
echo.
xcopy "%SUPPORT_DIR%\userinfo.properties" "%SERVER_DIR%\business-central.war\WEB-INF\classes\"

echo Deploying web service that pulls out credit report of customer based on SSN...
echo.
xcopy /Y /Q "%SUPPORT_DIR%\%WEBSERVICE%" "%SERVER_DIR%"
echo. 

REM Final instructions to user to start and run demo.
echo.
echo ===========================================================================================
echo =                                                                                         = 
echo =  Start JBoss BPM Suite server:                                                          =
echo =                                                                                         = 
echo =    $ %SERVER_BIN%\standalone.sh                                          =
echo =                                                                                         = 
echo =  Login to business central to build & deploy project at:                                =
echo =                                                                                         = 
echo =    http://localhost:8880/business-central     u:erics  p:bpmsuite1!                     =
echo =                                                                                         = 
echo =  Signavio Process Editor was used to design the Mortgage process and each task was      = 
echo =  given a description of what needs to be achieved in that step of the process. The      = 
echo =  process was then exported to a file you can find in the support directory to import    = 
echo =  into JBoss BPM Suite process designer after login. Example files are found at:         = 
echo =                                                                                         = 
echo =    support\MortageDemoSignavio.bpmn                                                     = 
echo =                                                                                         = 
echo =    support\MortageDemoSignavio2.bpmn                                                     = 
echo =                                                                                         = 
echo =  %DEMO% Setup Complete.                              =
echo =                                                                                         = 
echo ===========================================================================================
echo.
 
