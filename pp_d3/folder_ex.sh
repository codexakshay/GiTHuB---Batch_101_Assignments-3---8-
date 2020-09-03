read -p "Enter Folder Name:" folder_name
if [ -d $folder_name ]
then
echo Folder $folder_name is Already Present;
else
echo Folder $folder_name is Absent;
echo -creating-folder-
sleep 3
mkdir $folder_name;
echo Created folder : $folder_name;
fi

