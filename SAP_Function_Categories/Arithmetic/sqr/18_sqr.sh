#!/bin/bash
rm 12_sqr_out.xml 2> /dev/null
java -cp "../../../lib/xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 10_sqr.xslt -IN 11_sqr_in.xml -OUT 12_sqr_out.xml 2> 19_sqr.log
xmllint --schema ../../../xsd/output_arithmetic.xsd 12_sqr_out.xml 2>> 19_sqr.log