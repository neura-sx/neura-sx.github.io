<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<table id="blockchains-table">
			<thead>
				<tr>
					<th id="th1">Name</th>
					<th id="th2">Description</th>
					<th id="th3">Status</th>
					<th id="th4">Entrepreneur</th>
					<th id="th5">Developers</th>
					<th id="th6">Links</th>
				</tr>
			</thead>
			<tbody>
				<xsl:for-each select="root/items/item">
					<tr>
						<td id="td1"><xsl:value-of select="name"/></td>
						<td id="td2"><xsl:value-of select="description"/></td>
						<td id="td3"><xsl:value-of select="status"/></td>
						<td id="td4">
							<xsl:choose>
								<xsl:when test="entrepreneur/url">
									<a class="entity">
										<xsl:attribute name="href">
											<xsl:value-of select="entrepreneur/url" />
										</xsl:attribute>
										<xsl:value-of select="entrepreneur/name" />
									</a>
								</xsl:when>
								<xsl:otherwise><xsl:value-of select="entrepreneur/name" /></xsl:otherwise>
							</xsl:choose>
						</td>
						<td id="td5">
							<xsl:for-each select="developers/developer">
								<a class="entity">
									<xsl:attribute name="href">
										<xsl:value-of select="url" />
									</xsl:attribute>
									<xsl:value-of select="name" />
								</a>
								<br/>
							</xsl:for-each>
						</td>
						<td id="td6">
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