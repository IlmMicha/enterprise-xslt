#!/bin/bash
java -cp "../../../lib/xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 00-sum.xslt -IN 10_sum_in.xml -OUT 20_sum_out.xml > 90_sum.log