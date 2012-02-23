-------------------------
Insalling the package

Either double click on the deb file or run command from terminal:
sudo dpkg -i cw1sc7g08_1.0-1_amd64.deb

To remove the file either using Synaptic package manager or run the following command from terminal:
sudo dpkg --purge cw1sc7g08
-------------------------


------------------------
| CREATING THE PACKAGE |
------------------------


-----------------------------
what to pre-install

sudo apt-get install dh-make
sudo apt-get install dpkg
sudo apt-get install lintian
sudo apt-get git


-----------------
Package structure

deb
 /debian
 /etc/apache2/sites-available/cw1sc7g08
 /usr/share/cw1sc7g08	


Contents:
/debian
-control 
-copyright 
-changelog 
-rules 
-dirs
-postinst 
-prerm
-md5sums
-compat
-cw1sc7g08.install

/etc/apache2/sites-available
-cw1sc7g08 

/usr/share/cw1sc7g08
- index.php
- rss_php.php
- feeds.conf
-----------------------------

Detailed steps.

We will need to build a debian package that will eventualy install the 3 files on the system under usr/share/cw1sc7g08 and will run by going to localhost/cw1sc7g08 from the users browser. This will eventualy run index.php

1.create a folder with a name "package-version.num" i.e cw1sc7g08-1.0
2.create a directory where the files are stored i.e usr/share/cw1sc7g08
3.when all files in place run dh_make command: 
dh_make -e ste89lios@gmail.com -c gpl -f cw1sc7g08_1.0.tar.gz
4.enter the package directory and modify the required files in the generated 
debian folder (cw1sc7g08_1.0/debian)
5.Modify control, copyright, changelog, postinst, prerm, md5sums and create cw1sc7g08.install
6.Because we are not compiling and configuring a complex system, we are just copying files from one location to another, we are using cw1sc7g08/debian/cw1sc7g08.install to define where the contents of the debian package should be copied to the system. 
7.Once all the files are correctly configured enter the following command:
fakeroot dpkg-buildpackage -F 
8.test the deb file using lintian with command: lentian file.deb
no errors or warnings should be output


-------------------------
Package Dependencies:
- libapache2-mod-php5
- php5-cli


-------------------------
Git repository
https://github.com/sc7g08/info6005

-------------------------
git commands
	git add foldername
	git commit -m "message goes here" filename   (makes change on ur computer)
	git push (makes change on the server)
	git log


