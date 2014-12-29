#!/bin/bash
rm 20_add_out.xml 2> /dev/null
java -cp "../../../lib/xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 00-add.xslt -IN 10_add_in.xml -OUT 20_add_out.xml 2> 90_add.log
xmllint --schema ../../../xsd/output_sum.xsd 20_add_out.xml 2>> 90_add.log