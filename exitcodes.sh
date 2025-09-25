#!/bin/bash
#exitcodes are nothing but number which tell us like weather the previous command execution is successfully executed and it is check by echo $? now if the value is 0 means successfully executed and if the value is 1 that means nope

package=htop
sudo apt install $package

if [ $? -eq 0 ]
then 
    echo "the installation of $package was successful "
    echo "the new command is available here"
    which $package
else
    echo "$package failed to install"
fi

#now lets say we dont want to display whats going on like all those packages downloading in our terminal we can simply redirect it on file.log


package=notexist
sudo apt install $package >> package_install_results.log

if [ $? -eq 0 ]
then 
    echo"the installation of $package was successfull"
    echo "the new command is available here:"
    which $package
else
    echo "$package failed to install."
fi

#you can check if directory is present or not

directory=/etc
if [ -d $directory ]
then 
   echo "the directory $directory exists."
   exit 0
else
   echo "the directory doesnot exists."
   exit 1
fi

echo "the exit code for this script run is $?"