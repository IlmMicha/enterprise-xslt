<?xml version="1.0" encoding="utf-8"?>
<!--
This is sample from the Enterprise XSLT project 
for more information see http://www.enterprise-xslt.com

This sample calculates the negativ value of a number 
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xalan="http://xml.apache.org/xalan" exclude-result-prefixes="xalan">
	<xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>

	<xsl:template match="/">
		<output>
			<neg>
				<xsl:value-of select="number(input/number) * -1"/>
			</neg>
		</output>
	</xsl:template>
</xsl:stylesheet>