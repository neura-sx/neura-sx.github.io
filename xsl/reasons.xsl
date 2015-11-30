<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<div id="title">The Why</div>
		<xsl:variable name="timestamp" select="root/timestamp" />
		<div class="timestamp">Last update <xsl:value-of select="concat(substring($timestamp,9,2),'-',substring($timestamp,6,2),'-',substring($timestamp,1,4))" /></div>
	</xsl:template>
</xsl:stylesheet>