del 12_less_out.xml 2> nul
java.exe -cp "..\..\..\lib\xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 10_less.xslt -IN 11_less_in.xml -OUT 12_less_out.xml 2> 19_less.log
..\..\..\libxml2\bin\xmllint.exe --schema ..\..\..\xsd\output_arithmetic.xsd 12_less_out.xml 2>> 19_less.log