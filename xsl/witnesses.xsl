<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<table id="witnesses-table">
			<thead>
				<tr>
					<th id="th1">Account</th>
					<th id="th2">Forum Name</th>
					<th id="th3">Description</th>
					<th id="th4">Comments</th>
					<th id="th5">Links</th>
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
							<td id="td1">
								<a class="account">
									<xsl:attribute name="href">
										<xsl:value-of select="account/url" />
									</xsl:attribute>
									<xsl:value-of select="account/name" />
								</a>
							</td>
							<td id="td2"><xsl:value-of select="forum"/></td>
							<td id="td3"><xsl:value-of select="description"/></td>
							<td id="td4"><xsl:value-of select="comment"/></td>
							<td id="td5">
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