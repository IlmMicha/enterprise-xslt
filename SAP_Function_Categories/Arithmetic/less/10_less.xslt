<?xml version="1.0" encoding="utf-8"?>
<!--
This is sample from the Enterprise XSLT project 
for more information see http://www.enterprise-xslt.com

true , when A < B , otherwise false
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xalan="http://xml.apache.org/xalan" exclude-result-prefixes="xalan">
	<xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>

	<xsl:template match="/">
		<output>
			<xsl:for-each select="input/item">
				<item>
					<boolean>
						<xsl:value-of select="number(A) &lt; number(B)"/>
					</boolean>
				</item>
			</xsl:for-each>
		</output>
	</xsl:template>
</xsl:stylesheet>