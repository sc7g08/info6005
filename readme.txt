File structure
debian
-control (done)
-copyright (done)
-changelog (done)
-rules
-dirs
-preinst/postinst (done)
-prerm/postrm (done)



-----------------------------
to install

sudo apt-get install dh-make
sudo apt-get install dpkg
sudo apt-get install lintian
sudo apt-get git
-----------------------------

steps.

1. create a launcher
2. place it in the folder (must be called name_version) i.e index_1.0
3. place icon in that folder
4. create a .tar.gz of that folder and place it inside that folder
5. enter the index_1.0 folder with terminal
6. run command: dh_make -e ste89lios@gmail.com -c gpl -f index_1.0.tar.gz
7. modify the required files in the debian folder (index_1.0/debian)
	*follow structure above!
8. enter index_1.0 folder with terminal
9. run command: fakeroot dpkg-buildpackage -F 
10. test the deb file using lentian with command: lentian file.deb




-------------------------
deb structure:
-debian-binary
-control.tar.gz
	-control
	-md5sums
	-postinst
	-prerm
-data.tar.gz
	contains files that will be installed with their destination paths
-------------------------


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

----
the conffiles looks for index.php inside the .deb file (so find out how to put it in the deb file)...
