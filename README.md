# setup-workspaces
This bash script automates the process of running different desired applications on different virtual workspaces.
# Syntax
```
./setup.sh <num_workspaces> [-<workspace_num> <application_command>]
```
# Installing
* Make sure to install `xdotool` on your terminal.
```
sudo apt install xdotool
```
* Clone this repo
```
git clone git@github.com:ym496/setup-workspaces.git 
```

# Running 
* Give executable permissions to the `setup.sh` (if necessary).
```
chmod +x setup.sh
```
* `Example`: If you wanted to create two virtual workspaces and run *google chrome* in the first one and two terminal applications, *calcurse* and *pydoro* in the second one, you would do:
```
./setup.sh 2 -1 "google-chrome chat.openai.com" -2 "gnome-terminal --geometry=82x43 --window -- calcurse; gnome-terminal --geometry=82x43 --window -- pydoro"
```

