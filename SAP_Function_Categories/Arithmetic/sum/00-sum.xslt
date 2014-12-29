<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>

	<xsl:template match="/">
		<output>
			<summe>
				<xsl:value-of select="input/summand1 + input/summand2"/>
			</summe>
		</output>
	</xsl:template>
</xsl:stylesheet>