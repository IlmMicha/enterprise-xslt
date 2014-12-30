#!/bin/bash
rm 12_reciprocal_out.xml 2> /dev/null
java -cp "../../../lib/xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 10_reciprocal.xslt -IN 11_reciprocal_in.xml -OUT 12_reciprocal_out.xml 2> 19_reciprocal.log
xmllint --schema ../../../xsd/output_arithmetic.xsd 12_reciprocal_out.xml 2>> 19_reciprocal.log