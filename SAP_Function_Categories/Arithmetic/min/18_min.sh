#!/bin/bash
rm 12_min_out.xml 2> /dev/null
java -cp "../../../lib/xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 10_min.xslt -IN 11_min_in.xml -OUT 12_min_out.xml 2> 19_min.log
xmllint --schema ../../../xsd/output_arithmetic.xsd 12_min_out.xml 2>> 19_min.log