del 20_divide_out.xml 2> nul
java.exe -cp "..\..\..\lib\xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 10_divide.xslt -IN 11_divide_in.xml -OUT 12_divide_out.xml 2> 19_divide.log
..\..\..\libxml2\bin\xmllint.exe --schema ..\..\..\xsd\output_arithmetic.xsd 12_divide_out.xml 2>> 19_divide.log