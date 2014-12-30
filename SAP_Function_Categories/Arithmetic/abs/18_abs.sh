#!/bin/bash
rm 12_abs_out.xml 2> /dev/null
java -cp "../../../lib/xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 10_abs.xslt -IN 11_abs_in.xml -OUT 12_abs_out.xml 2> 19_abs.log
xmllint --schema ../../../xsd/output_arithmetic.xsd 12_abs_out.xml 2>> 19_abs.log