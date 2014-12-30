del 20_abs_out.xml 2> nul
java.exe -cp "..\..\..\lib\xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 20_abs.xslt -IN 21_abs_in.xml -OUT 22_abs_out.xml 2> 29_abs.log
..\..\..\libxml2\bin\xmllint.exe --schema ..\..\..\xsd\output_arithmetic.xsd 22_abs_out.xml 2>> 29_abs.log