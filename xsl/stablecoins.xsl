<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:variable name="url" select="root/source/url" />
		<div class="source">
			<xsl:value-of select="concat('Source',': ')" />
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="$url"/>
				</xsl:attribute>
				<xsl:choose>
  					<xsl:when test="string-length($url) &gt; 100">
						<xsl:value-of select="concat(substring($url,1,100),'...')" />
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="$url"/>
					</xsl:otherwise>
				</xsl:choose>
			</a>
		</div>
		<table id="stablecoins-table">
			<thead>
				<tr>
					<th id="th1">Name</th>
					<th id="th2">Base</th>
					<th id="th3">Blockchain</th>
					<th id="th4">Description</th>
					<th id="th5">Status</th>
					<th id="th6">Links</th>
				</tr>
			</thead>
			<tbody>
				<xsl:for-each select="root/items/item">
					<tr>
						<td id="td1"><xsl:value-of select="name"/></td>
						<td id="td2"><xsl:value-of select="base"/></td>
						<td id="td3"><xsl:value-of select="blockchain"/></td>
						<td id="td4"><xsl:value-of select="description"/></td>
						<td id="td5"><xsl:value-of select="status"/></td>
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