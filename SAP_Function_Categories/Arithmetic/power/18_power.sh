#!/bin/bash
rm 12_power_out.xml 2> /dev/null
java -cp "../../../lib/xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 10_power.xslt -IN 11_power_in.xml -OUT 12_power_out.xml 2> 19_power.log
xmllint --schema ../../../xsd/output_arithmetic.xsd 12_power_out.xml 2>> 19_power.log