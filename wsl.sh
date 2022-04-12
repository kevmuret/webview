# This file is an bootstrap to call cmd.exe from WSL.
#
# Run as admin from windows : mklink /D %LINK_NAME% %WSL_PATH_TO_THIS_DIRECTORY%.
# Set value to THIS_WIN_PATH with escaped "\"
#
# Example:
# in directory C:\User\myusername
#	mklink /D webview \\wsl.localhost\Ubuntu\home\myusername\webview
#
# variable will be :
#THIS_WIN_PATH=C:\\Users\\myusername\\webview
#
# check with this command which should list files in this directory :
#	bash wsl.sh dir
#
THIS_WIN_PATH=
cmd.exe /c "cd $THIS_WIN_PATH && $@"
