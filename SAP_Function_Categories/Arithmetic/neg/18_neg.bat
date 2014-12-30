del 20_neg_out.xml 2> nul
java.exe -cp "..\..\..\lib\xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 10_neg.xslt -IN 11_neg_in.xml -OUT 12_neg_out.xml 2> 19_neg.log
..\..\..\libxml2\bin\xmllint.exe --schema ..\..\..\xsd\output_arithmetic.xsd 12_neg_out.xml 2>> 19_neg.log