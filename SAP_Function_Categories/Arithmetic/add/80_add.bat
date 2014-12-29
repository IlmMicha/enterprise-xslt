del 20_add_out.xml 2> nul
java.exe -cp "..\..\..\lib\xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 00-add.xslt -IN 10_add_in.xml -OUT 20_add_out.xml 2> 90_add.log
..\..\..\libxml2\bin\xmllint.exe --schema ..\..\..\xsd\output_sum.xsd 20_add_out.xml 2>> 90_add.log