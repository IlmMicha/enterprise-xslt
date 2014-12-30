#!/bin/bash
rm 12_divide_out.xml 2> /dev/null
java -cp "../../../lib/xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 10_divide.xslt -IN 11_divide_in.xml -OUT 12_divide_out.xml 2> 19_divide.log
xmllint --schema ../../../xsd/output_arithmetic.xsd 12_divide_out.xml 2>> 19_divide.log