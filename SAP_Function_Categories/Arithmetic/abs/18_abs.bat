del 12_abs_out.xml 2> nul
java.exe -cp "..\..\..\lib\xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 10_abs.xslt -IN 11_abs_in.xml -OUT 12_abs_out.xml 2> 19_abs.log
..\..\..\libxml2\bin\xmllint.exe --schema ..\..\..\xsd\output_arithmetic.xsd 12_abs_out.xml 2>> 19_abs.log