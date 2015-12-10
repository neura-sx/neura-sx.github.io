<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<table id="resources-table">
			<thead>
				<tr>
					<th id="th1">Title</th>
					<th id="th2">Location</th>
				</tr>
			</thead>
			<tbody>
				<xsl:for-each select="root/areas/area">
					<tr>
						<td class="caption" colspan="2">
							<xsl:value-of select="name" />
						</td>
					</tr>
					<xsl:for-each select="items/item">
						<tr>
							<td id="td1"><xsl:value-of select="title"/></td>
							<td id="td2">
								<a class="url">
									<xsl:attribute name="href">
										<xsl:value-of select="url"/>
									</xsl:attribute>
									<xsl:choose>
       									<xsl:when test="string-length(url) &gt; 100">
											<xsl:value-of select="concat(substring(url,1,100),'...')" />
										</xsl:when>
										<xsl:otherwise>
											<xsl:value-of select="url"/>
										</xsl:otherwise>
									</xsl:choose>
								</a>
							</td>
						</tr>
					</xsl:for-each>
				</xsl:for-each>
			</tbody>
		</table>
	</xsl:template>
</xsl:stylesheet>