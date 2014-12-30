del 20_max_out.xml 2> nul
java.exe -cp "..\..\..\lib\xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 10_max.xslt -IN 11_max_in.xml -OUT 12_max_out.xml 2> 19_max.log
..\..\..\libxml2\bin\xmllint.exe --schema ..\..\..\xsd\output_arithmetic.xsd 12_max_out.xml 2>> 19_max.log