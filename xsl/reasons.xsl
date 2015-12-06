<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<table id="reasons-table">
			<thead>
				<tr>
					<th id="th1">Who</th>
					<th id="th2">Quote</th>
					<th id="th3">Source</th>
				</tr>
			</thead>
			<tbody>
				<xsl:for-each select="root/items/item">
					<tr>
						<td id="td1"><xsl:value-of select="who"/></td>
						<td id="td2" class="highlightPos">
							<xsl:choose>
								<xsl:when test="quote/p">
									<xsl:for-each select="quote/p">
										<p><xsl:value-of select="current()"/></p>
									</xsl:for-each>
								</xsl:when>
								<xsl:otherwise><xsl:value-of select="quote"/></xsl:otherwise>
							</xsl:choose>
						</td>
						<td id="td3">
							<a class="url">
								<xsl:attribute name="href">
									<xsl:value-of select="source/url" />
								</xsl:attribute>
								<xsl:value-of select="source/label" />
							</a>
						</td>
					</tr>
				</xsl:for-each>
			</tbody>
		</table>
	</xsl:template>
</xsl:stylesheet>