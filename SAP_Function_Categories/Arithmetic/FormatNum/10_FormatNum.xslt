<?xml version="1.0" encoding="utf-8"?>
<!--
This is sample from the Enterprise XSLT project 
for more information see http://www.enterprise-xslt.com

This sample calculates the the largest possible integer value that is not larger than the value of the input number 
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xalan="http://xml.apache.org/xalan" exclude-result-prefixes="xalan">
	<xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>

	<xsl:template match="/">
		<xsl:decimal-format name="euro" decimal-separator="," grouping-separator="."/>
		<output>
			<xsl:for-each select="input/item">
				<item>
					<formated>
						<xsl:value-of select="format-number(number, '#.###,00', 'euro')"/>
					</formated>
				</item>
			</xsl:for-each>
		</output>
	</xsl:template>
</xsl:stylesheet>