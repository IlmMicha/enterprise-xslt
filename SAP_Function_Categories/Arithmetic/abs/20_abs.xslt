<?xml version="1.0" encoding="utf-8"?>
<!--
This is sample from the Enterprise XSLT project 
for more information see http://www.enterprise-xslt.com

This sample calculates the absolute value of a number
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xalan="http://xml.apache.org/xalan" exclude-result-prefixes="xalan">
	<xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>

	<xsl:template match="/">
		<output>
			<xsl:for-each select="input/item">
				<item>
					<abs>
						<xsl:choose>
							<xsl:when test="number &gt; 0">
								<xsl:value-of select="number"/>
							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="number * -1"/>
							</xsl:otherwise>
						</xsl:choose>
					</abs>
				</item>
			</xsl:for-each>
		</output>
	</xsl:template>
</xsl:stylesheet>