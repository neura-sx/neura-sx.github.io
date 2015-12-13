<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<table id="contracts-table">
			<thead>
				<tr>
					<th id="th1">Feature</th>
					<th id="th2">BitShares</th>
					<th id="th3">Ethereum</th>
					<th id="th4">TauChain</th>
				</tr>
			</thead>
			<tbody>
				<xsl:for-each select="root/items/item">
					<tr>
						<td id="td1"><xsl:value-of select="feature"/></td>
						<td id="td2">
							<xsl:attribute name="class">
								<xsl:choose>
									<xsl:when test="BitShares='Y'">highlightPos</xsl:when>
									<xsl:when test="BitShares='N'">highlightNeg</xsl:when>
									<xsl:otherwise>highlightZero</xsl:otherwise>
								</xsl:choose>
							</xsl:attribute>
							<xsl:value-of select="BitShares"/>
						</td>
						<td id="td2">
							<xsl:attribute name="class">
								<xsl:choose>
									<xsl:when test="Ethereum='Y'">highlightPos</xsl:when>
									<xsl:when test="Ethereum='N'">highlightNeg</xsl:when>
									<xsl:otherwise>highlightZero</xsl:otherwise>
								</xsl:choose>
							</xsl:attribute>
							<xsl:value-of select="Ethereum"/>
						</td>
						<td id="td3">
							<xsl:attribute name="class">
								<xsl:choose>
									<xsl:when test="TauChain='Y'">highlightPos</xsl:when>
									<xsl:when test="TauChain='N'">highlightNeg</xsl:when>
									<xsl:otherwise>highlightZero</xsl:otherwise>
								</xsl:choose>
							</xsl:attribute>
							<xsl:value-of select="TauChain"/>
						</td>
					</tr>
				</xsl:for-each>
			</tbody>
		</table>
	</xsl:template>
</xsl:stylesheet>