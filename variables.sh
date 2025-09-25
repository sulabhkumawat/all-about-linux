myname="brutal"
age="33"
echo " my name is $myname."
echo " im $age years old."

#you can also do this pass the command as an value to variable and later that command will be executed using that varibale

files=$(pwd)
echo "$files"

#this is how you get date and time of system
now=$(date)
echo "the system time and date is:"
echo $now

#now this is something new.. terminal will already known who you are so you dont have to store youname in variable like
echo "your username is: $USER"
