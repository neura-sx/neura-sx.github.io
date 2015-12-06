<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<table id="news-table">
			<thead>
				<tr>
					<th id="th1">Date</th>
					<th id="th2">Title</th>
					<th id="th3">Description</th>
					<th id="th4">Links</th>
				</tr>
			</thead>
			<tbody>
				<xsl:for-each select="root/items/item">
					<tr>
						<xsl:variable name="timestamp" select="timestamp" />
						<td id="td1"><xsl:value-of select="concat(substring($timestamp,9,2),'-',substring($timestamp,6,2),'-',substring($timestamp,1,4))" /></td>
						<td id="td2" class="highlightPos"><xsl:value-of select="title"/></td>
						<td id="td2">
							<xsl:choose>
								<xsl:when test="description/p">
									<xsl:for-each select="description/p">
										<p><xsl:value-of select="current()"/></p>
									</xsl:for-each>
								</xsl:when>
								<xsl:otherwise><xsl:value-of select="description"/></xsl:otherwise>
							</xsl:choose>
						</td>
						<td id="td3">
							<xsl:for-each select="links/link">
								<a class="link">
									<xsl:attribute name="href">
										<xsl:value-of select="url" />
									</xsl:attribute>
									<xsl:value-of select="label" />
								</a>
							</xsl:for-each>
						</td>
					</tr>
				</xsl:for-each>
			</tbody>
		</table>
	</xsl:template>
</xsl:stylesheet>