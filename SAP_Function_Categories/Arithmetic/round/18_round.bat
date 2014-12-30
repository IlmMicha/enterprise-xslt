del 20_round_out.xml 2> nul
java.exe -cp "..\..\..\lib\xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 10_round.xslt -IN 11_round_in.xml -OUT 12_round_out.xml 2> 19_round.log
..\..\..\libxml2\bin\xmllint.exe --schema ..\..\..\xsd\output_arithmetic.xsd 12_round_out.xml 2>> 19_round.log