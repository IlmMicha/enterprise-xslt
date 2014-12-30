#!/bin/bash
rm 12_equalsA_out.xml 2> /dev/null
java -cp "../../../lib/xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 10_equalsA.xslt -IN 11_equalsA_in.xml -OUT 12_equalsA_out.xml 2> 19_equalsA.log
xmllint --schema ../../../xsd/output_difference.xsd 12_equalsA_out.xml 2>> 19_equalsA.log