#!/bin/bash
rm 12_sqrt_out.xml 2> /dev/null
java -cp "../../../lib/xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 10_sqrt.xslt -IN 11_sqrt_in.xml -OUT 12_sqrt_out.xml 2> 19_sqrt.log
xmllint --schema ../../../xsd/output_arithmetic.xsd 12_sqrt_out.xml 2>> 19_sqrt.log