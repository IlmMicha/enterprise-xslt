#!/bin/bash
rm 12_multiply_out.xml 2> /dev/null
java -cp "../../../lib/xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 10_multiply.xslt -IN 11_multiply_in.xml -OUT 12_multiply_out.xml 2> 19_multiply.log
xmllint --schema ../../../xsd/output_arithmetic.xsd 12_multiply_out.xml 2>> 19_multiply.log