#!/bin/bash
rm 12_neg_out.xml 2> /dev/null
java -cp "../../../lib/xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 10_neg.xslt -IN 11_neg_in.xml -OUT 12_neg_out.xml 2> 19_neg.log
xmllint --schema ../../../xsd/output_arithmetic.xsd 12_neg_out.xml 2>> 19_neg.log