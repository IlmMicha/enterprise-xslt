del 12_sqrt_out.xml 2> nul
java.exe -cp "..\..\..\lib\xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 10_sqrt.xslt -IN 11_sqrt_in.xml -OUT 12_sqrt_out.xml 2> 19_sqrt.log
..\..\..\libxml2\bin\xmllint.exe --schema ..\..\..\xsd\output_arithmetic.xsd 12_sqrt_out.xml 2>> 19_sqrt.log