<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:for-each select="root/areas/area">
			<xsl:if test="@id='A'">
				<table id="featuresA-table">
					<caption><xsl:value-of select="name"/></caption>
					<thead>
						<tr>
							<th id="th1">Feature</th>
							<th id="th2">BitShares</th>
							<th id="th3">PayPal</th>
							<th id="th4">Bitcoin</th>
							<th id="th5">Ripple</th>
						</tr>
					</thead>
					<tbody>
						<xsl:for-each select="scopes/scope">
							<tr>
								<td class="caption" colspan="7">
									<xsl:value-of select="name" />
								</td>
							</tr>
							<xsl:for-each select="items/item">
								<tr>
									<td id="td1"><xsl:value-of select="feature"/></td>
									<td id="td2"><xsl:value-of select="BitShares"/></td>
		           					<td id="td3"><xsl:value-of select="PayPal"/></td>
		           					<td id="td4"><xsl:value-of select="Bitcoin"/></td>
		           					<td id="td5"><xsl:value-of select="Ripple"/></td>
								</tr>
							</xsl:for-each>
						</xsl:for-each>
					</tbody>
				</table>
			</xsl:if>
			<xsl:if test="@id='B'">
				<table id="featuresB-table">
					<caption><xsl:value-of select="name"/></caption>
					<thead>
						<tr>
							<th id="th1">Feature</th>
							<th id="th2">BitShares</th>
							<th id="th3">Bitstamp</th>
							<th id="th4">Poloniex</th>
						</tr>
					</thead>
					<tbody>
						<xsl:for-each select="items/item">
							<tr>
								<td id="td1"><xsl:value-of select="feature"/></td>
	           					<td id="td2"><xsl:value-of select="BitShares"/></td>
	           					<td id="td3"><xsl:value-of select="Bitstamp"/></td>
	           					<td id="td4"><xsl:value-of select="Poloniex"/></td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
			</xsl:if>
			<xsl:if test="@id='C'">
				<table id="featuresC-table">
					<caption><xsl:value-of select="name"/></caption>
					<thead>
						<tr>
							<th id="th1">Feature</th>
							<th id="th2">BitShares</th>
							<th id="th3">Ethereum</th>
						</tr>
					</thead>
					<tbody>
						<xsl:for-each select="items/item">
							<tr>
								<td id="td1"><xsl:value-of select="feature"/></td>
	           					<td id="td2"><xsl:value-of select="BitShares"/></td>
	           					<td id="td3"><xsl:value-of select="Ethereum"/></td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>