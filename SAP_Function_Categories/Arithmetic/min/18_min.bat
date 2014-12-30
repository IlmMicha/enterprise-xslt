del 20_min_out.xml 2> nul
java.exe -cp "..\..\..\lib\xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 10_min.xslt -IN 11_min_in.xml -OUT 12_min_out.xml 2> 19_min.log
..\..\..\libxml2\bin\xmllint.exe --schema ..\..\..\xsd\output_arithmetic.xsd 12_min_out.xml 2>> 19_min.log