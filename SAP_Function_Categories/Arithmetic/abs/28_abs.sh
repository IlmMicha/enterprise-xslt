#!/bin/bash
rm 22_abs_out.xml 2> /dev/null
java -cp "../../../lib/xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 20_abs.xslt -IN 11_abs_in.xml -OUT 22_abs_out.xml 2> 29_abs.log
xmllint --schema ../../../xsd/output_arithmetic.xsd 22_abs_out.xml 2>> 29_abs.log