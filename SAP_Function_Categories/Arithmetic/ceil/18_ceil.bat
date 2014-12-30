del 20_ceil_out.xml 2> nul
java.exe -cp "..\..\..\lib\xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 10_ceil.xslt -IN 11_ceil_in.xml -OUT 12_ceil_out.xml 2> 19_ceil.log
..\..\..\libxml2\bin\xmllint.exe --schema ..\..\..\xsd\output_arithmetic.xsd 12_ceil_out.xml 2>> 19_ceil.log