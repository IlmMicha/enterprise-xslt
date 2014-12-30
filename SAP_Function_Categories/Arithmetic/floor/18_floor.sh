#!/bin/bash
rm 12_floor_out.xml 2> /dev/null
java -cp "../../../lib/xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 10_floor.xslt -IN 11_floor_in.xml -OUT 12_floor_out.xml 2> 19_floor.log
xmllint --schema ../../../xsd/output_arithmetic.xsd 12_floor_out.xml 2>> 19_floor.log