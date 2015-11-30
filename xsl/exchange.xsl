<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<table id="exchange-table">
			<thead>
				<tr>
					<th id="th1">Feature</th>
					<th id="th2">BitShares</th>
					<th id="th3">Metatrader</th>
					<th id="th4">Bitstamp</th>
					<th id="th5">Poloniex</th>
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
									<xsl:when test="Metatrader='Y'">highlightPos</xsl:when>
									<xsl:when test="Metatrader='N'">highlightNeg</xsl:when>
									<xsl:otherwise>highlightZero</xsl:otherwise>
								</xsl:choose>
							</xsl:attribute>
							<xsl:value-of select="Metatrader"/>
						</td>
						<td id="td">
							<xsl:attribute name="class">
								<xsl:choose>
									<xsl:when test="Bitstamp='Y'">highlightPos</xsl:when>
									<xsl:when test="Bitstamp='N'">highlightNeg</xsl:when>
									<xsl:otherwise>highlightZero</xsl:otherwise>
								</xsl:choose>
							</xsl:attribute>
							<xsl:value-of select="Bitstamp"/>
						</td>
						<td id="td">
							<xsl:attribute name="class">
								<xsl:choose>
									<xsl:when test="Poloniex='Y'">highlightPos</xsl:when>
									<xsl:when test="Poloniex='N'">highlightNeg</xsl:when>
									<xsl:otherwise>highlightZero</xsl:otherwise>
								</xsl:choose>
							</xsl:attribute>
							<xsl:value-of select="Poloniex"/>
						</td>
					</tr>
				</xsl:for-each>
			</tbody>
		</table>
	</xsl:template>
</xsl:stylesheet>