#!/bin/bash
rm 12_add_out.xml 2> /dev/null
java -cp "../../../lib/xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 10-add.xslt -IN 11_add_in.xml -OUT 12_add_out.xml 2> 19_add.log
xmllint --schema ../../../xsd/output_sum.xsd 12_add_out.xml 2>> 19_add.log