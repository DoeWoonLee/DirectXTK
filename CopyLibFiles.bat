# Copy include headers #

xcopy "inc\*.h" "C:\Users\doun1\Desktop\Codes\Remainders\DWEngine2D\ThirdParty\DirectXTK\inc\" /e /h /k /y

# Copy lib files #
xcopy "Bin\Desktop_2019_Win10\x64\Debug\DirectXTK.lib" "C:\Users\doun1\Desktop\Codes\Remainders\DWEngine2D\ThirdParty\DirectXTK\lib\x64\Debug\" /e /h /k /y
xcopy "Bin\Desktop_2019_Win10\x64\Release\DirectXTK.lib" "C:\Users\doun1\Desktop\Codes\Remainders\DWEngine2D\ThirdParty\DirectXTK\lib\x64\Release\" /e /h /k /y

