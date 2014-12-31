:: extract function name and sample number from file name by using naming convention
set filename=%~n0
set functionname=%filename:~3%
set samplenumber=%filename:~0,1%

:: prepare file names by using naming conventions
set mappingfile=%samplenumber%0_%functionname%.xslt
set sourcefile=%samplenumber%1_%functionname%_in.xml
set targetfile=%samplenumber%2_%functionname%_out.xml
set logfile=%samplenumber%9_%functionname%.log

:: delete  old transformation output file
del %targetfile% 2> nul
:: transform input message using Xalan XSLTC processor
java.exe -cp "..\..\..\lib\xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL %mappingfile% -IN %sourcefile% -OUT %targetfile% 2> %logfile%
:: validate output message using third party vaildation utility
..\..\..\libxml2\bin\xmllint.exe --schema ..\..\..\xsd\output_arithmetic.xsd %targetfile% 2>> %logfile%