======
README
======

ANT Script to bootstrap an air project for BlackBerry PlayBook 

=====
USAGE
=====

This readme assumes, that your project is named MyApp.

Step 1
------
* Create a new directory,::

	mkdir MyApp

Step 2
------
* clone this project via git://github.com/magicmonty/playbook-template.git::

  	cd MyApp
  	git clone git://github.com/magicmonty/playbook-template.git .

Step 3
------
* configure the default.properties to your needs
  * set Variables
  * remove app.unconfigured if finished

Step 4
------
* run ant


Then a new project is created in the current folder. 
The bootstrap data is deleted and replaced with the template files.
Then this project is checked into a new GIT repository


======================================
Usage of the ANT script in the project
======================================

- Target *clean*

  - Deletes all intermediate directories and files

- Target *package*

  - builds the project with "build-release" and packages the project in release mode to a .bar-File in the directory "deploy"

- Target *package-debug*

  - builds the project with "build-debug" and packages the project in debug mode to a .bar-File in the directory "deploy"
    
    **Note:** This is currently not working, the blackberry-airpackager seems to package a project alway as release, if you don't run it directly from the airpackager in the simulator. The option "-target bar-debug" seems to have no effect here

- Target *build-debug*

  - builds the swf-file in debug mode

- Target *build-release*

  - builds the swf-file in release mode

- Target *deploy*

  - deploys a previously packaged .bar file to the simulator

- Target *uninstall*

  - uninstalls the application from the simulator.
  
    **Note:** The .bar file must already exist, because the airpackager needs it to extract the application id

- Target *run*

  - runs a previously installed app on the simulator
    
    **Note:** The .bar file must already exist, because the scripts needs it to extract the application id

- Target *debug*

  - builds the project with "build-debug", packages the project in debug mode to a .bar-File in the directory "deploy", installs it on the simulator and runs it from there.
    
    **Note:** you should have the fdb-Tool running already

