del 20_power_out.xml 2> nul
java.exe -cp "..\..\..\lib\xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 10_power.xslt -IN 11_power_in.xml -OUT 12_power_out.xml 2> 19_power.log
..\..\..\libxml2\bin\xmllint.exe --schema ..\..\..\xsd\output_arithmetic.xsd 12_power_out.xml 2>> 19_power.log