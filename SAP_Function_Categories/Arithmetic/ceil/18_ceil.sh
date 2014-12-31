#!/bin/bash
# extract function name and sample number from file name by using naming convention
file="${0##*/}"
filename=${file%.*}
functionname=${filename:3}
samplenumber=${filename:0:1}

# prepare file names by using naming conventions
mappingfile="$samplenumber"0_"$functionname".xslt
sourcefile="$samplenumber"1_"$functionname"_in.xml
targetfile="$samplenumber"2_"$functionname"_out.xml
logfile="$samplenumber"9_"$functionname".log

# delete  old transformation output file
rm "$targetfile" 2> /dev/null 
# transform input message using Xalan XSLTC processor
java -cp "../../../lib/xalan.jar" org.apache.xalan.xslt.Process -XSLTC -XSL "$mappingfile" -IN "$sourcefile" -OUT "$targetfile" 2> "$logfile"
# validate output message using third party vaildation utility
xmllint --schema ../../../xsd/output_arithmetic.xsd "$targetfile" 2>> "$logfile"