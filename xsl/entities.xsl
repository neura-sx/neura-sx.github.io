<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<table id="entities-table">
			<thead>
				<tr>
					<th id="th1">Name</th>
					<th id="th2">Description</th>
					<th id="th3">Location</th>
					<th id="th4">Status</th>
					<th id="th5">CEO</th>
					<th id="th6">Links</th>
				</tr>
			</thead>
			<tbody>
				<xsl:for-each select="root/groups/group">
					<tr>
						<td class="caption" colspan="6">
							<xsl:value-of select="name" />
						</td>
					</tr>
					<xsl:for-each select="items/item">
						<tr>
							<td id="td1"><xsl:value-of select="name"/></td>
							<td id="td2"><xsl:value-of select="description"/></td>
							<td id="td3"><xsl:value-of select="location"/></td>
							<td id="td4"><xsl:value-of select="status"/></td>
							<td id="td5">
								<xsl:value-of select="ceo/forum" />
								<xsl:if test="ceo/real">
									<br/>
									<xsl:value-of select="concat(' (',ceo/real,')')" />
								</xsl:if>
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
				</xsl:for-each>
			</tbody>
		</table>
	</xsl:template>
</xsl:stylesheet>