# AutoCopyFiles
Bash Script that uses inotify to detect when files are added to a directory. 

## How to set it up

You only have to set 3 variables. 

#### targetDirectory
Defines in what directory your new files will be copied.

#### watchedPath
Defines what directory and its' subdirectories.

#### fileOwner
Defines which user is going to own the file in the target directory.


It is recommended to use this program as root in order to change rights of foreign files, etc. But be careful with sudo rights!
If there's any problem with my program, please open an issue and provide as much information as possible. Much thanks!


Happy coding!
