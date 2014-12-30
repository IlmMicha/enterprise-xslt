del 20_add_out.xml 2> nul
java.exe -cp "..\..\..\lib\xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 10-add.xslt -IN 11_add_in.xml -OUT 12_add_out.xml 2> 19_add.log
..\..\..\libxml2\bin\xmllint.exe --schema ..\..\..\xsd\output_sum.xsd 12_add_out.xml 2>> 19_add.log