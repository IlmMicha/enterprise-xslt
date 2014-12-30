del 12_greater_out.xml 2> nul
java.exe -cp "..\..\..\lib\xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 10_greater.xslt -IN 11_greater_in.xml -OUT 12_greater_out.xml 2> 19_greater.log
..\..\..\libxml2\bin\xmllint.exe --schema ..\..\..\xsd\output_arithmetic.xsd 12_greater_out.xml 2>> 19_greater.log