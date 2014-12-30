#!/bin/bash
rm 12_round_out.xml 2> /dev/null
java -cp "../../../lib/xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 10_round.xslt -IN 11_round_in.xml -OUT 12_round_out.xml 2> 19_round.log
xmllint --schema ../../../xsd/output_arithmetic.xsd 12_round_out.xml 2>> 19_round.log