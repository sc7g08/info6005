Package structure

debian
-control (done)
-copyright (done)
-changelog (done)
-rules (done)
-dirs
-preinst/postinst (done)
-prerm/postrm (done)

etc/apache2/sites-available/index

usr/share/index
- index.php
- rss_php.php
- feeds.conf

-----------------------------
what to pre-install

sudo apt-get install dh-make
sudo apt-get install dpkg
sudo apt-get install lintian
sudo apt-get git
-----------------------------

steps.

1.create a folder with a name "package-version.num" i.e cw1sc7g08-1.0
2.create a directory where the files are stored i.e usr/share/cw1sc7g08
3.when all files in place run dh_make command: 
dh_make -e ste89lios@gmail.com -c gpl -f cw1sc7g08_1.0.tar.gz
4.enter the package directory and modify the required files in the generated 
debian folder (cw1sc7g08_1.0/debian)
5.Modify control, copyright, changelog, postinst, prerm, md5sums and create cw1sc7g08.install
6.Once all the files are correctly configured enter the following command:
fakeroot dpkg-buildpackage -F 
7.test the deb file using lentian with command: lentian file.deb

-------------------------
Insalling the package

Either double click on the deb file or run command from terminal:
sudo dpkg -i cw1sc7g08_1.0-1_amd64.deb

To remove the file either using Synaptic package manager or run the following command from terminal:
sudo dpkg --purge cw1sc7g08

---
Current Dependencies:
- libapache2-mod-php5
- php5-cli

command: dpkg-deb --build debian

----
svn commit -m "message"

----
preinst - executes before that package is unpacked from its Debian archive. Usually it will stop services for packages which are being upgraded until their installation is completed.
postinst - completes any requred config of the package once its unpacked. Often this script asks the user for input, or warns the user that if he accepts default values, he should remember to go back and configure the package. 
prerm - stops any deamons which are associated with the package. Its executed before the removal of files associated with the package.
postrm - modifies links or other files associated and removes files created by package.

----
https://github.com/sc7g08/info6005
----
git commands
	git add foldername
	git commit -m "message goes here" filename   (makes change on ur computer)
	git push (makes change on the server)
	git log
----

Because we are not compiling and configuring a complex system, we are just copying files from one location to another, we are using packagename/debian/package.install to define where the contents of the debian package should be copied to the system. 

