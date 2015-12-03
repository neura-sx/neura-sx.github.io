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
						<td id="td2" class="highlightPos"><xsl:value-of select="quote"/></td>
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