del 20_multiply_out.xml 2> nul
java.exe -cp "..\..\..\lib\xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 10_multiply.xslt -IN 11_multiply_in.xml -OUT 12_multiply_out.xml 2> 19_multiply.log
..\..\..\libxml2\bin\xmllint.exe --schema ..\..\..\xsd\output_arithmetic.xsd 12_multiply_out.xml 2>> 19_multiply.log