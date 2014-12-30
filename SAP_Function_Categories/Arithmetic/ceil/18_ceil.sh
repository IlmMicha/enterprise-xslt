#!/bin/bash
rm 12_ceil_out.xml 2> /dev/null
java -cp "../../../lib/xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 10_ceil.xslt -IN 11_ceil_in.xml -OUT 12_ceil_out.xml 2> 19_ceil.log
xmllint --schema ../../../xsd/output_arithmetic.xsd 12_ceil_out.xml 2>> 19_ceil.log