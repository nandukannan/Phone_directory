#!/bin/bash
while :
do
clear
echo "Welcome to the phone directory"
echo "1.Add a contact"
echo "2.Search Contacts"
echo "3.Delete Contact"
echo "4.View Phone Directory"
echo "5.Quit"
read -p "Enter your choice " usr_cmd
clear
case $u
case $usr_cmd in
1)echo "Add new contact"
read -p "Enter Name" name
echo "Got that"
read -p "Enter number" number
clear
echo "New Contact Info:"
echo "->Name :$name. ->Number :$number"
echo "$name : $number " >> phonedir.log
echo "Saved Succesfully"
;;
2) echo "Searching contacts"
read -p "Enter contact name to Search" search_query
clear
echo "Search Results"
grep -i $search_query phonedir.log
;;
3) echo "Delete Contact"
read -p "Enter contact name to delted(case-sensitive): " delete_string
sed -i -e "/$delete_string/d" phonedir.log
echo "Delete Successfull"
;;
4) echo "Phone Directory " 
echo""
cat phonedir.log
;;
5) ;;
*)echo "INVALID OPTION";;
esac;

read -p "Press 5 to Quit,Anything else to return to min Menu" confirm_exit
if [ $confirm_exit -eq 5 ]
then
 break
fi
done

