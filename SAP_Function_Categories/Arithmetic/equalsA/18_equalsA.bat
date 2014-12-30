del 12_equalsA_out.xml 2> nul
java.exe -cp "..\..\..\lib\xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 10_equalsA.xslt -IN 11_equalsA_in.xml -OUT 12_equalsA_out.xml 2> 19_equalsA.log
..\..\..\libxml2\bin\xmllint.exe --schema ..\..\..\xsd\output_arithmetic.xsd 12_equalsA_out.xml 2>> 19_equalsA.log