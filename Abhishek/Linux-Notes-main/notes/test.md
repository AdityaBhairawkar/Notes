File and Directory Management Command

ls - List directory contents.      
	ls -a 		List all files, including hidden files
	ls -l 		List with more details (like file size, permissions, etc.)
	ls -lh 		List with file sizes in human-readable format (KB, MB, etc.)
	ls -lt 		List by newest files first
	ls -R 		List everything inside directories and their subdirectories
	ls -d / 	    List only directories
	ls -alh 	    To list everything (including hidden files) with detailed info and human-readable sizes

date - print or set system date and time
	date "+%Y-%m-%d %H:%M:%S"	Show the current date and time in custom format.
	date -u						Display the current time in UTC.
	sudo date 100315302024.00	Set the system date to October 3, 2024, 15:30:00.
	date --date="yesterday"		Display yesterday's date.
	date --date="2020-12-25"	Show a specific date (December 25, 2020).

pwd - Print working directory.

whoami - Show the current user.

________________________________________________________________________________________________________________________________________________
Creating Deleting Editing File 
cat - Concatenate and display file contents.
	eg :cat -n filename
	cat filename.txt						Display the content of filename.txt.
	cat file1.txt file2.txt					Display the contents of both file1.txt and file2.txt.
	cat > newfile.txt						Create a new file and enter text (exit with CTRL + D).
	cat >> existingfile.txt					Append text to an existing file (exit with CTRL + D).
	cat -n filename.txt						Display the content with line numbers.
	cat -A filename.txt						Show non-printable characters in the file.
	cat file1.txt file2.txt > combined.txt	Combine two files into a new file combined.txt.
	cat filename.txt | less					pipe cat with less for easier viewing of large files
	cat filename.txt | more					pipe cat with more for easier viewing of large files	
	cat filename.txt | head	-n 10				To display the first 10 lines of a file
	cat filename.txt | tail	-n 10				To display the last 10 lines of a file

cd - Change directory.
Special Directories:
	cd ~: Your home directory (e.g., /home/username)
	cd ..: The parent directory (one level up)
	cd .: The current directory
	cd -: Go back to previous directory
	cd /: The Root directory

less - View file contents one page at a time.
	Navigate in Less:
	
	Space or Page Down: Move to the next page.
	b or Page Up: 		Move to the previous page.
	Up Arrow: 			Move up one line.
	Down Arrow: 		Move down one line.
	G: 					Go to the end of the file.
	g: 					Go to the beginning of the file.
	/search_term: 		Search for a specific term.
	n: 					Repeat the last search (forward).
	N: 					Repeat the last search (backward).
	q: 					Quit the less viewer.
	
	less file.txt					Open a file for viewing with less.
	less -N file.txt				View a file with line numbers.
	less +G file.txt				Open a file and jump to the end.
	ls -l | less   					View less output of another command
	less +/search_term file.txt		Open a file and jump to the first occurrence of a term.
	less -X file.txt				Disable clearing the screen after quitting less.

more

mkdir - Make directories.
	mkdir -p parent_folder/child_folder
	
cp - Copy files and directories.
	$ cp *.jpg /home/abhi/Pictures: copy all files with the .jpg extension.
	cp -i file.txt /home/abhi/Documents: Will not Overwrite directory or file if existed

mv - Move or rename files and directories.
	mv -i directory1 directory2: Will not Overwrite directory or file if existed
	mv current_name new_name :  renaming the file
rm - Remove files or directories.
	$ rm -r directory: to remove all the files and any subdirectories it may have.

rmdir - Remove empty directories.

touch - Create an empty file.

nano - Text editor (easy to use).
	Read only Mode 
		nano -v filename.txt
	Show no of Lines
		nano -c filename.txt

### Basic Nano Commands
	nano filename.txt	Open or create filename.txt for editing.
	
	CTRL + O	Save changes made in the file.
	CTRL + X	Exit nano editor.
	CTRL + K	Cut the current line.
	CTRL + U	Paste the cut line at the current cursor position.
	ALT + U		Undo the last action.
	ALT + E		Redo the last undone action.
	CTRL + W	Search for text in the file.
	CTRL + _	Go to a specific line number.
	CTRL + G	Open the help documentation.

vim - Powerful text editor.

shred - Securely delete files by overwriting.

	shred -n <num>	Overwrite the file <num> times (default is 3).
	shred -u		Remove the file after shredding.
	shred -z		Add a final overwrite with zeros.
	shred -v		Show progress during shredding.
	shred -s <size>	Specify the size of the file to shred.
	shred -f		Force shredding even if the file is read-only.
	
head - Display the beginning of a file.
	head file.txt				Display the first 10 lines of a file.
	head -n 5 file.txt			Display the first 5 lines of a file.
	head -c 100 file.txt		Display the first 100 bytes of a file.
	head file1.txt file2.txt	Display the first 10 lines from multiple files.
	ls -l | head				View head output of another command

tail - Display the end of a file.
	tail file.txt					Display the last 10 lines of a file.
	tail -n 5 file.txt				Display the last 5 lines of a file.
	tail -c 100 file.txt			Display the last 100 bytes of a file.
	tail -f file.txt				Follow the file in real-time (useful for log monitoring).
	tail -n 20 -f file.txt			Follow a file in real-time, starting with the last 20 lines.
	tail -q file1.txt file2.txt		Display the last 10 lines of multiple files without headers.

sort - Sort lines of text in files.
	sort filename.txt				Sort the lines in filename.txt alphabetically.
	sort -r filename.txt			Sort the lines in reverse order.
	sort -n numbers.txt				Sort the lines in numbers.txt numerically.
	sort -u filename.txt			Sort and remove duplicate lines in filename.txt.
	sort -k2 filename.txt			Sort based on the second column of filename.txt.
	sort filename.txt > sorted.txt	Sort filename.txt and save to sorted.txt.
	sort -f filename.txt			Sort the lines in filename.txt case-insensitively.
	
split - Split file ino pieces
	split filename.txt					Split the file into 1000-line chunks.
	split -l 200 filename.txt			Split the file into 200-line chunks.
	split -b 1M filename.txt			Split the file into 1 MB chunks.
	split -l 200 filename.txt part_		Split the file into 200-line chunks with part_ prefix.
	split -n 5 filename.txt				Split the file into 5 equal-sized parts.
	csplit filename.txt /pattern/ {*}	Split the file based on a custom pattern.
	
grep - Search for patterns in text.
	grep "error" filename					Search for the string "error" in a file.
	grep -r "error" /path/to/directory		Recursively search for "error" in all files in a directory.
	grep -i "error" filename				Case-insensitive search for "error" in a file.
	grep -n "error" filename				Show line numbers of matches.
	grep -w "error" filename				Search for the exact word "error".
	grep -v "error" filename				Show lines that do not contain "error".
	grep -e "error" -e "fail" filename		Search for multiple patterns ("error" or "fail").
	grep -c "error" filename				Count the number of lines with "error".
	grep -o "error" filename				Show only the matching part of the line.

egrep - Search for multiple patterns in text or file.
	egrep "pattern" filename.txt		Search for a pattern in a file.
	egrep "error|warning" logfile.txt   Search multiple pattern
	egrep -i "pattern" filename.txt		Perform a case-insensitive search for a pattern.
	egrep -r "error" /var/log/			Recursively search for "error" in a directory and its subdirectories.
	egrep -c "error" logfile.txt		Count how many lines contain "error" in the file.
	egrep -n "pattern" filename.txt		Show the line numbers of matching patterns.
	egrep "pattern" file1.txt file2.txt Search for a pattern in multiple files.
	
wc - Count the number of lines, words, characters, and bytes in a file
	wc filename.txt	Count lines, words, and bytes in a file.
	wc -l filename.txt			Count only the lines in a file.
	wc -w filename.txt			Count only the words in a file.
	wc -m filename.txt			Count only the characters in a file.
	wc -c filename.txt			Count only the bytes in a file.
	wc file1.txt file2.txt		Count lines, words, and bytes in multiple files.
	cat filename.txt | wc -l	Count output directly from the command line.

cmp - Compare two files byte by byte.
	
	cmp file1.txt file2.txt			Compare two files and display the first difference.
	cmp -s file1.txt file2.txt		Suppress output; exit status indicates if they are identical.
	cmp -l file1.txt file2.txt		Display differences in hexadecimal format.
	cmp -n 10 file1.txt file2.txt	Compare only the first 10 bytes of the files.
	cmp -i file1.txt file2.txt		Compare files while ignoring case differences.
	
	The exit status of cmp can be useful for scripting:
	0: Files are identical.
	1: Files differ.
	2: There was an error (e.g., one of the files does not exist).
	
diff - Show the differences between two files.
	diff file1.txt file2.txt		Compare two files and display the differences.
	diff -i file1.txt file2.txt		Ignore case differences while comparing.
	diff -y file1.txt file2.txt		Show differences side by side.
	diff -u file1.txt file2.txt		Display differences in unified format.
	diff -c file1.txt file2.txt		Show differences with common lines suppressed.
	diff -r dir1/ dir2/				Recursively compare two directories.

find - Search for files in a directory hierarchy.
	find /path/to/search -name "file.txt"				Find files named file.txt.
	find /path/to/search -iname "file.txt"				Find files named file.txt (case insensitive).
	find /path/to/search -type d						Find all directories.
	find /path/to/search -size +100M					Find files larger than 100MB.
	find /path/to/search -mtime -7						Find files modified in the last 7 days.
	find /path/to/search -name "*.tmp" -exec rm {} \;	Delete all .tmp files found.
	find /path/to/search -type f -empty					Find all empty files.
	find /path/to/search -type d -empty					Find all empty directories.
	find /path/to/search -perm 0002						Find world-writable files.

ln - Create hard or symbolic (soft) links.
	ln [options] target [link_name]
	ln source_file.txt hard_link_name.txt
	ln -s		Create a symbolic link instead of a hard link.
	ln -f		Remove existing destination files.
	ln -i		Prompt before overwriting existing files.
________________________________________________________________________________________________________________________________________________
Utility Command

man - Display manual for a command.
	man -k copy
	man -k	Search the short description of commands for keywords.
	man -f	Display a short description of the command without opening the manual page.
	man -a	Display all manual pages for a command (if more than one exists).
	man -t	Format the man page for printing.
	Navigation in man Pages
		Arrow Keys: Scroll up and down.
		Space Bar: Scroll down one page.
		b: Scroll back one page.
		/search_term: Search for a term in the manual page.
		n: Move to the next search result.
		q: Quit the manual page.
		
whatis - Describe a command briefly.

which - Show the path of a command.

whereis - Locate the binary, source, and manual page for a command.

history - Show command history.

	history 10			Display the last 10 commands.
	!123				Execute the command from history with the number 123.
	history | grep ssh	Display all ssh commands executed from history
	history -c			Clear the command history for the current session.
	history -w			Save the current session history to the history file.

cal - Display a calendar.
	cal			Display the calendar for the current month.
	cal 3 2024	Display the calendar for March 2024.
	cal 2024	Display the entire calendar for the year 2024.
	cal -h		Highlight today’s date in the calendar.
	cal -s		Display the calendar starting on Sunday.
	cal -j		Display the Julian calendar.
	cal -w		Display the calendar with week numbers.
	
bc - Binary Calculator

uptime - how long system has been running

alias - Create shortcuts for commands.

	alias ll='ls -l'									Create an alias ll for ls -l.
	alias gs='git status'								Create an alias gs for git status.
	alias update='sudo apt update; sudo apt upgrade'	Create an alias update for updating packages.
	alias												View all currently defined aliases.
	unalias ll											Remove the alias ll.
	echo "alias ll='ls -l'" >> ~/.bashrc				Make the alias ll permanent by adding it to .bashrc.
	source ~/.bashrc									Reload .bashrc to apply changes.
________________________________________________________________________________________________________________________________________________
Zip and Unzip of File and Folder

zip - Compress files into a .zip archive.
	zip archive.zip file1.txt file2.txt		Create a ZIP archive with the specified files.
	zip -r archive.zip directory_name		Recursively zip an entire directory and its contents.
	zip -u archive.zip updated_file.txt		Update files in an existing ZIP archive.
	zip -x "*.log"							Exclude specific files or patterns from the archive.
	zip -m archive.zip file1.txt			Move files into the archive and delete the originals.
	zip -q archive.zip file1.txt			Quiet mode; suppress output.
	zip -d archive.zip file1.txt			Remove a file from the ZIP archive.
	zip -9 archive.zip file1.txt			Use maximum compression.

unzip - Extract files from a .zip archive.
	unzip archive.zip							Extract all files from the ZIP archive.
	unzip archive.zip -d /path/to/destination	Extract the ZIP archive to a specific directory.
	unzip -l archive.zip						List the contents of a ZIP file without extracting.
	unzip archive.zip file1.txt file2.txt		Extract only specific files from the ZIP archive.
	unzip -o archive.zip						Overwrite existing files without prompting.
	unzip -q archive.zip						Quiet mode; suppress the output of extraction details.
	unzip -x file1.txt							Extract all files except specific ones.
	unzip -n archive.zip						Never overwrite existing files.
	
tar - Compress or extract .tar archives.
	tar -cf archive.tar file1 file2					Create a tar archive from files or directories.
	tar -czf archive.tar.gz file1 file2				Create a compressed .tar.gz archive.
	tar -xzf archive.tar.gz							Extract a .tar.gz compressed archive.
	tar -xf archive.tar								Extract a tar archive.
	tar -tf archive.tar								List the contents of a tar archive without extracting.
	tar -czf archive.tar.gz /path/to/directory		Create a compressed archive of an entire directory.
	tar -xzf archive.tar.gz -C /path/to/extract		Extract the archive to a specific directory.
	tar -rvf archive.tar newfile.txt				Append a file to an existing tar archive.
	tar -czf archive.tar.gz * --exclude="*.log"		Create a compressed archive, excluding certain files.
	tar -cf archive.tar --remove-files file1 file2	Archive files and remove the originals after archiving.
________________________________________________________________________________________________________________________________________________
Downloading filefrom internet

wget - Non-interactive network downloader.
	wget http://example.com/file.txt							Download a file from the specified URL.
	wget -O newfile.txt http://example.com/file.txt				Download a file and save it with a specific name.
	wget -b http://example.com/largefile.zip					Download in the background.
	wget -r http://example.com									Download an entire website recursively.
	wget --limit-rate=100k http://example.com/file.zip			Limit the download speed to 100 KB/s.
	wget -c https://example.com/largefile.zip					Resume a partially downloaded file.
	wget --no-check-certificate https://example.com/file.zip	Skip certificate checks for HTTPS URLs.
	wget -q https://example.com/file.zip						Suppress output; only show errors.
	

curl - Transfer data from or to a server.
	curl http://example.com/file.txt																Fetch and display the contents of a file from a URL.
	curl -O http://example.com/file.txt																Download and save the file with the same name.
	curl -o newfile.txt http://example.com/file.txt													Download and save the file with a new name.
	curl -L http://example.com																		Follow redirects.
	curl --limit-rate 100K http://example.com/file.txt												Limit the download speed to 100 KB/s.
	curl -H "Authorization: Bearer token" http://example.com										Send a custom header with the request (e.g., authorization token).
	curl -X POST -d "name=John&age=30" http://example.com											Send form data using POST request.
	curl -X POST -H "Content-Type: application/json" -d '{"name":"John"}' http://example.com/api	Send JSON data using POST request.
	curl -C - -O http://example.com/largefile.zip													Resume an interrupted download.
	curl -I http://example.com																		Display only the response headers.
	curl -u username:password http://example.com/file.txt											Download a file with basic authentication.

systemctl - Control the systemd system and service manager.
	systemctl start <service_name>
	systemctl start httpd

	start							Start a specified service.
	stop							Stop a specified service.
	restart							Restart a specified service.
	status							Display the status of a specified service.
	enable							Enable a service to start at boot.
	disable							Disable a service from starting at boot.
	list-units --type=service		List all services and their statuses.
	journalctl -u <service_name>	View logs for a specific service.
	is-active						Check if a specified service is running.
	is-enabled						Check if a specified service is enabled to start at boot.
	
journalctl - Query the systemd journal (for logs).
	journalctl journalctl -u <service_name>		Show logs for a specific service.
	journalctl -b								Show logs for the current boot.
	journalctl --since							Show logs since a specific date and time.
	journalctl --until							Show logs until a specific date and time.
	journalctl -f								Follow the log output in real-time.
	journalctl -p <priority_level>				Filter logs by priority level.
	journalctl -r								Show logs in reverse order (most recent first).
	journalctl --vacuum-time=<time>				Remove logs older than the specified time.
	journalctl --no-pager						Display the output without paging (useful for scripts).

awk - Pattern scanning and processing language.
	awk '{print $1, $3}' filename				Print the 1st and 3rd columns from the file.
	awk '/pattern/ {print $0}' filename			Print lines containing the word "pattern".
	awk '$2 == "user" {print $0}' filename		Print lines where the 2nd column is "user".
	awk '{print $1 + $2}' filename				Print the sum of the 1st and 2nd columns.
	awk 'END {print NR}' filename				Print the total number of lines in the file.
	awk 'NR==5, NR==10 {print $0}' filename		Print lines from line 5 to 10.
	awk -F',' '{print $1, $2}' filename.csv		Use a comma as a delimiter and print the 1st and 2nd columns.
	awk '{print $NF}' filename					Print the last column of each line.
	awk '{sum += $2} END {print sum}' file		Calculate the sum of values in the 2nd column.
	awk '{print $1 "," $2}' filename			Print the 1st and 2nd columns with a comma as a separator.
	
________________________________________________________________________________________________________________________________________________

Access Remote Server

ssh - Secure Shell for remote login to another machine.
		ssh [user]@[hostname_or_IP]
	user: The username of the account on the remote system.
	hostname_or_IP: The hostname (e.g., example.com) or IP address (e.g., 192.168.1.100) of the remote machine.
	
	Example
		ssh john@192.168.1.10
		
	Example with SSH Key Authentication:
		ssh -i /path/to/private_key john@192.168.1.10
	If you've set up SSH keys for passwordless login, you can specify the private key
	In this example, the -i flag is used to specify the path to the private SSH key.

scp = OpwnSSH secure file copy
	scp localfile.txt john@192.168.1.100:/home/john/				Copy a file from local to remote.
	scp john@192.168.1.100:/home/john/myfile.txt /home/localuser/	Copy a file from remote to local.
	scp -r /home/localuser/project john@192.168.1.100:/home/john/	Recursively copy a directory from local to remote.
	scp -r john@192.168.1.100:/home/john/project /home/localuser/	Recursively copy a directory from remote to local.
	scp -P 2222 myfile.txt john@192.168.1.100:/home/john/			Copy a file using a non-default SSH port.
	scp -l 500 myfile.txt john@192.168.1.100:/home/john/			Limit transfer speed to 500 kbps.
	scp -i ~/.ssh/id_rsa myfile.txt john@192.168.1.100:/home/john/	Use SSH key authentication to copy a file.

________________________________________________________________________________________________________________________________________________

Working with Permission

chmod - Change file permissions.
	Understanding File Permissions
	File permissions are represented by three types of users:
	Owner: The user who owns the file.
	Group: The group that the file belongs to.
	Others: All other users.
	
	Permissions are represented as follows:
	r: Read permission (4)
	w: Write permission (2)
	x: Execute permission (1)
	
	chmod u+x filename				Add execute permission for the owner.
	chmod g-w filename				Remove write permission for the group.
	chmod o+r filename				Add read permission for others.
	chmod 755 filename				Set permissions to rwxr-xr--.
	chmod -R 755 directory_name		Recursively change permissions for a directory.
	chmod a+r filename				Add read permission for all users.
	chmod o= filename				Remove all permissions for others.
	chmod 600 filename				Set read/write permissions for the owner only.
	
chown - Change file owner and group.
	chown username filename				Change the owner of the file to username.
	chown username:groupname filename	Change both the owner and group of the file.
	chown -R username directory_name	Recursively change the owner of a directory.
	chown :groupname filename			Change only the group of the file.
	chown 1001:1002 filename			Change owner and group using UID and GID.
	chown -v username filename			Display the change made to the ownership.

chgrp - change group ownership
	chgrp developers file.txt					Change the group of file.txt to developers.
	chgrp marketing report1.txt report2.txt		Change the group of multiple files to marketing.
	chgrp admins /home/user/directory			Change the group of a directory to admins.
	chgrp -R developers /home/user/project		Recursively change the group of a directory and all its contents.
	chgrp -v users file.txt						Verbosely change the group of file.txt to users.
	chgrp 1001 filename.txt						Change the group of filename.txt using the group ID 1001.
________________________________________________________________________________________________________________________________________________

Memory Info

free - Show memory usage.
	free -m		Display memory usage in megabytes.
	free -g		Display memory usage in gigabytes.
	free -s 2	Continuously display memory usage every 2 seconds.
	free -h		Display memory usage in a human-readable format.
	free -t		Display total memory usage summary.

top/htop - Display and manage processes interactively (htop is more user-friendly).
	
	top -u username				Display processes for a specific user.
	top -d 5					Change the update interval to 5 seconds.
	Shift + P (while in top)	Sort processes by CPU usage.
	Shift + M (while in top)	Sort processes by memory usage.
	k <PID> (while in top)		Kill a process by specifying its PID.
	1 (while in top)			Toggle CPU usage per core.

df - Show disk space usage.
	df -h					Display disk space in a human-readable format.
	df -T					Display the type of each filesystem.
	df -i					Display inode usage instead of block usage.
	df /path/to/directory	Display disk space usage for a specific directory.
	df -a					Include all filesystems in the output.
	df -m					Display disk usage in megabytes.

du - Estimate file and directory space usage.
	du							Display disk usage of the current directory.
	du -h						Display disk usage in a human-readable format.
	du -sh /path/to/directory	Display total disk usage of a specific directory.
	du -a						List the disk usage of all files and subdirectories.
	du --max-depth=1			Limit the output to the top-level directories only.
	du -h *						Display disk usage of each file and directory.
	du --exclude=*.txt			Exclude .txt files from the disk usage report.
________________________________________________________________________________________________________________________________________________

System info and Utilities

hostname - Show or set system host name
	hostname					Display the current hostname of the system.
	sudo hostname newhostname	Set a new hostname (requires superuser privileges).
	hostname -f					Display the fully qualified domain name (FQDN).
	hostname -A					Display all network names associated with the system.
	hostname -I					Display the system's IP addresses.
	hostname -s					Display only the short name of the host.

lscpu - display info of cpu archicture

arch - display cpu archicture

lsblk - display list of storage/ partition 

uname - Print system information (e.g., kernel version).
	uname -a	Display all system information.
	uname -n	Display the network node hostname.
	uname -r	Display the kernel release version.
	uname -v	Display the kernel version.
	uname -m	Display the hardware name of the machine.
	uname -p	Display the processor type.
	uname -o	Display the operating system name.

finger - Display user information.
	finger username

man - Display manual for a command.
	man -k copy
	man -k	Search the short description of commands for keywords.
	man -f	Display a short description of the command without opening the manual page.
	man -a	Display all manual pages for a command (if more than one exists).
	man -t	Format the man page for printing.
	Navigation in man Pages
		Arrow Keys: Scroll up and down.
		Space Bar: Scroll down one page.
		b: Scroll back one page.
		/search_term: Search for a term in the manual page.
		n: Move to the next search result.
		q: Quit the manual page.

neofetch - Display system information (distro, kernel, uptime, etc.).
	neofetch							Display system information with an ASCII logo.
	neofetch --help						Display help information and available options.
	neofetch --disable					Disable ASCII logo display.
	neofetch --ascii_distro <distro>	Change the ASCII logo to a specified distribution.

whatis - Describe a command briefly.

which - Show the path of a command.

whereis - Locate the binary, source, and manual page for a command.

tldr - To view example of a command

history - Show command history.
	history 10			Display the last 10 commands.
	!123				Execute the command from history with the number 123.
	history | grep ssh	Display all ssh commands executed from history
	history -c			Clear the command history for the current session.
	history -w			Save the current session history to the history file.

cal - Display a calendar.
	cal			Display the calendar for the current month.
	cal 3 2024	Display the calendar for March 2024.
	cal 2024	Display the entire calendar for the year 2024.
	cal -h		Highlight today’s date in the calendar.
	cal -s		Display the calendar starting on Sunday.
	cal -j		Display the Julian calendar.
	cal -w		Display the calendar with week numbers.
________________________________________________________________________________________________________________________________________________

Process Management
ps - Display currently running processes.
	ps -e						Display all processes running on the system.
	ps -ef						Display detailed information about all running processes.
	ps aux						Display all processes with memory and CPU usage information.
	ps -ef --forest				Display processes hierarchically in a tree format.
	ps -p 1234					Display information about a specific process by PID.
	ps -u username				Display processes owned by a specific user.
	ps -ef | grep apache 		to search for specific processes. 
	
kill/pkill - Kill processes by PID or name.
	kill -9 17
	SIGTERM	15	Request a graceful termination (default).
	SIGKILL	9	Forcefully kill the process (cannot be ignored).
	SIGINT	2	Interrupt a process (similar to Ctrl+C).
	SIGHUP	1	Hang up signal (often used to restart a process).
	SIGSTOP	17	Stop a process (pause execution).
	SIGCONT	18	Continue a stopped process.

pgrep - give process id
	pgrep bash

pkill - Kill processes by name
	pkill bash

job -  display a list of all jobs that are currently running in the background or stopped in the current shell session.
	jobs		Display all jobs running or stopped in the current shell.
	jobs -l		Show jobs along with their process IDs (PIDs).
	jobs -r		Display only running jobs.
	jobs -s		Display only stopped or suspended jobs.
	fg %1		Bring job 1 to the foreground.
	bg %2		Send job 2 to the background.
	
nohup - Runs script in background

________________________________________________________________________________________________________________________________________________

Networking

ifconfig - Configure network interfaces (use ip instead).
	ip a									Show all network interfaces and their IP addresses.
	ip r									Display the routing table.
	ip addr add 192.168.1.100/24 dev eth0	Assign an IP address to the eth0 interface.
	ip addr del 192.168.1.100/24 dev eth0	Remove an IP address from the eth0 interface.
	ip link set eth0 up						Bring the eth0 interface up (activate it).
	ip link set eth0 down					Bring the eth0 interface down (deactivate it).
	ip route add default via 192.168.1.1	Add a default gateway with IP 192.168.1.1.
	ip route del default					Remove the default gateway.
	ip link show							Show link layer (e.g., MAC address, interface state).
	ip addr flush dev eth0					Remove all IP addresses from the eth0 interface.
	ip -4 address show						Show only IPv4 addresses.
	ip -6 address show						Show only IPv6 addresses.

ping - Test network connectivity to another host.
	ping google.com				Ping the google.com hostname continuously.
	ping -c 4 google.com		Ping google.com 4 times and then stop.
	ping -i 2 google.com		Ping google.com every 2 seconds.
	ping -s 128 google.com		Ping google.com with 128-byte packets.
	ping -f google.com			Flood ping google.com (send packets as fast as possible).
	ping -w 5 google.com		Ping google.com for a maximum of 5 seconds.
	ping -q -c 4 google.com		Send 4 ping requests to google.com and display only the summary.
	ping -6 google.com			Ping google.com using IPv6

traceroute - Trace the path packets take to a network host.
	traceroute google.com			Trace the route to google.com.
	traceroute -m 20 google.com		Limit the trace to 20 hops.
	traceroute -q 3 google.com		Send 3 packets per hop for better accuracy.
	traceroute -I google.com		Use ICMP packets (like ping) for the trace.
	traceroute -T google.com		Use TCP packets instead of the default UDP.
	traceroute -f 5 google.com		Start tracing from the 5th hop.
	traceroute -p 80 google.com		Trace using TCP packets on port 80 (HTTP).
	traceroute -n google.com		Disable DNS lookups for faster results (show only IPs).
	traceroute -w 2 google.com		Set a 2-second timeout for each hop.

netstat - Network statistics (deprecated, use ss).
	netstat -a				Display all active connections, both listening and non-listening.
	netstat -l				Show only listening ports.
	netstat -s				Display statistics for each protocol (TCP, UDP, ICMP, etc.).
	netstat -r				Show the kernel routing table.
	netstat -i				Display detailed statistics for all network interfaces.
	netstat -p				Show active connections along with process IDs and program names.
	netstat -t				Display only TCP connections.
	netstat -u				Show only UDP connections.
	netstat -n				Show IP addresses instead of resolving to hostnames.
	watch netstat -a		Continuously monitor active network connections in real-time.
	netstat -an	| grep :80	To display network connections related to a specific port (e.g., port 80 for HTTP)
	netstat -i eth0			Show network statistics for the eth0 interface.

ss - Show socket statistics (replacement for netstat).
	ss -a						Display all active network connections.
	ss -l						Show only listening sockets.
	ss -t						Display active TCP connections.
	ss -u						Display active UDP connections.
	ss -p						Show process name and PID for each connection.
	ss -n						Display only IP addresses (skip hostname resolution).
	ss -s						Show summary statistics for each protocol.
	ss -4						Display only IPv4 connections.
	ss -6						Display only IPv6 connections.
	ss -t 	state established	Display only established TCP connections.
	ss -t 	state LISTEN		Show TCP connections in the LISTEN state.
	ss -a | grep :80		    filter connections based on a specific port (e.g., port 80 for HTTP)

resolvectl status - Show DNS and network status (for systems using systemd).111

dig - DNS lookup utility.

nslookup - Query DNS to obtain domain or IP information.

telnet - Test network services or ports.
________________________________________________________________________________________________________________________________________________

useradd - Add a new user.
	useradd -m				Create the user's home directory if it does not exist.
	useradd -s <shell>		Specify the user's login shell.
	useradd -u <UID>		Assign a specific user ID (UID) to the new user.
	useradd -c "<comment>"	Add a comment (usually the full name of the user).
	useradd -G <group>		Specify supplementary groups the user should belong to.
	useradd -r				Create a system account (with a UID below 1000).
	useradd -d <directory>	Specify a custom home directory for the new user.

groupadd - Create a new group
	sudo groupadd developers			Create a group named developers.
	sudo groupadd -g 1050 developers	Create a group named developers with the GID 1050.
	sudo groupadd -r sysadmins			Create a system group named sysadmins.
	sudo groupadd -f developers			Force the creation of the group developers (no error if exists).

usermod - modify the properties of an existing user account
	sudo usermod -g developers john			Change the primary group of john to developers.
	sudo usermod -aG sudo john				Add john to the sudo group.
	sudo usermod -d /home/john_new -m john	Change and move john's home directory to /home/john_new.
	sudo usermod -l jdoe john				Change the username from john to jdoe.
	sudo usermod -s /bin/zsh john			Change john's shell to /bin/zsh.
	sudo usermod -L john					Lock the john user account.
	sudo usermod -U john					Unlock the john user account.
	sudo usermod -e 2024-12-31 john			Set the account expiration date for john to December 31, 2024.

userdel - Used to delete a user account and related files from the system. 
	sudo userdel john		Delete the user john without removing their home files.
	sudo userdel -r john	Delete the user john and remove their home directory.
	sudo userdel -f john	Force delete the user john, even if they are logged in.

groupdel - delete a group from the system. 

su - Switch to another user (typically root).
 
passwd - Change user password.
	sudo passwd -l user1
	sudo passwd -l		Lock the user account (disable password-based login).
	sudo passwd -u		Unlock the user account.
	sudo passwd -e		Force the user to change their password at next login.
	sudo passwd -d		Delete the user’s password (disables password login).
	sudo passwd -n DAYS	Set the minimum number of days before password change.
	sudo passwd -x DAYS	Set the maximum number of days the password is valid.
	sudo passwd -w DAYS	Set the number of days of warning before password expiration.

________________________________________________________________________________________________________________________________________________

Package Management (apt for Ubuntu/Debian):
apt - Advanced Package Tool for managing software packages.	
	sudo apt update	Update the package list.
	sudo apt upgrade								Upgrade all installed packages.
	sudo apt install package_name					Install a specific package.
	sudo apt remove package_name					Remove a package but keep configuration files.
	sudo apt purge package_name						Completely remove a package, including configuration files.
	apt search package_name							Search for a package by name.
	apt show package_name							Display detailed information about a package.
	sudo apt autoremove								Remove unnecessary packages installed as dependencies.
	sudo apt clean									Clean out the local package repository.
	(" grep " install " /var/log/apt/history.log " 	To view manually installed packages)
