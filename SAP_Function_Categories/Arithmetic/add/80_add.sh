#!/bin/bash
java -cp "../../../lib/xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL 00-add.xslt -IN 10_add_in.xml -OUT 20_add_out.xml > 90_add.log