#!/bin/bash
rm 12_less_out.xml 2> /dev/null
java -cp "../../../lib/xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 10_less.xslt -IN 11_less_in.xml -OUT 12_less_out.xml 2> 19_less.log
xmllint --schema ../../../xsd/output_difference.xsd 12_less_out.xml 2>> 19_less.log