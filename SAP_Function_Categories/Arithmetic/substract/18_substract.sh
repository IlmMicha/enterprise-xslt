#!/bin/bash
rm 12_substract_out.xml 2> /dev/null
java -cp "../../../lib/xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 10_substract.xslt -IN 11_substract_in.xml -OUT 12_substract_out.xml 2> 19_substract.log
xmllint --schema ../../../xsd/output_arithmetic.xsd 12_substract_out.xml 2>> 19_substract.log