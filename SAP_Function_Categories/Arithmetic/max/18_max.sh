#!/bin/bash
rm 12_max_out.xml 2> /dev/null
java -cp "../../../lib/xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 10_max.xslt -IN 11_max_in.xml -OUT 12_max_out.xml 2> 19_max.log
xmllint --schema ../../../xsd/output_arithmetic.xsd 12_max_out.xml 2>> 19_max.log