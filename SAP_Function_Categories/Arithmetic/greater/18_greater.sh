#!/bin/bash
rm 12_greater_out.xml 2> /dev/null
java -cp "../../../lib/xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 10_greater.xslt -IN 11_greater_in.xml -OUT 12_greater_out.xml 2> 19_greater.log
xmllint --schema ../../../xsd/output_difference.xsd 12_greater_out.xml 2>> 19_greater.log