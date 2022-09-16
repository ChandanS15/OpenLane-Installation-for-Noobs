# OpenLane-Installation-for-Noobs

As the name of the repository suggests, these instructions and files are for thsoe who has virtually zero experience with Linux based environment.
I have scripted all the commands to automate the installation of the OpenSource tools required to run RTL2GDS flow.
I have also tried to add comments near every command so that you can understand a bit about the actions that is currently taking place.
You just have to change the permission of the above files so that they can run as executable in your linux command.
This conversion can be done using the command

ls # notice the colour of the file dependencies.sh before executing the next command

chmod 777 dependencies.sh

ls # notice the colour of the file dependencies.sh after executing the next command


When you execute the above command you can verify that this file has its permission cha nged by executing ls command ahich shoes colour changed, which mena sour job is done succesfully.

As I was once a noob who wanted to understand Linux and work on OpenSource tools I had a few hiccups when I started, Some of the Sources you can follow to get further insights on the commands and the actions are provided below:

1. R. Timothy Edwards     - SVP Analog and Platform at Efabless, and maitains the open source tools website. (http://opencircuitdesign.com/index.html)
2. OpenLane official      - (https://openlane-docs.readthedocs.io/en/rtd-develop/#installation-notes)
3. Stefan Schippers       - Developer/Maintainer of Xschem.   (https://github.com/StefanSchippers)
4. Christian Svensson     - Software Reliability Engineer.    (https://github.com/bluecmd)
4. Kunal Ghosh            - Director and co-founder of VLSI System Design (VSD) Corp. Pvt. Ltd. 
                            (https://www.udemy.com/course/vsd-a-complete-guide-to-install-openlane-and-sky130nm-pdk/)
5. From official websites - CMAKE, Gaw, Ngspice (Links to the website are given below at the installation of the respective file)
6. PraveenRajAyappan      -https://github.com/PraveenRajAyyappan/Opensouce_Digital_and_Analog_Setup


Sorry if I have used your content and haven't specified your name above, please give me a pull request!
Also, if something is not documented well or some of the following steps are not working let me know your advices through a pull request.
