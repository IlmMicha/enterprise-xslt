del 20_substract_out.xml 2> nul
java.exe -cp "..\..\..\lib\xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 10_substract.xslt -IN 11_substract_in.xml -OUT 12_substract_out.xml 2> 19_substract.log
..\..\..\libxml2\bin\xmllint.exe --schema ..\..\..\xsd\output_arithmetic.xsd 12_substract_out.xml 2>> 19_substract.log