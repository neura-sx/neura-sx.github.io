<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<table id="payments-table">
			<caption><xsl:value-of select="name"/></caption>
			<thead>
				<tr>
					<th id="th1">Feature</th>
					<th id="th2">BitShares</th>
					<th id="th3">DebitCard</th>
					<th id="th4">PayPal</th>
					<th id="th5">Bitcoin</th>
					<th id="th6">Ripple</th>
				</tr>
			</thead>
			<tbody>
				<xsl:for-each select="root/areas/area">
					<tr>
						<td class="caption" colspan="7">
							<xsl:value-of select="name" />
						</td>
					</tr>
					<xsl:for-each select="items/item">
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
							<td id="td3">
           						<xsl:attribute name="class">
									<xsl:choose>
										<xsl:when test="DebitCard='Y'">highlightPos</xsl:when>
										<xsl:when test="DebitCard='N'">highlightNeg</xsl:when>
										<xsl:otherwise>highlightZero</xsl:otherwise>
									</xsl:choose>
								</xsl:attribute>
								<xsl:value-of select="DebitCard"/>
           					</td>
           					<td id="td4">
           						<xsl:attribute name="class">
									<xsl:choose>
										<xsl:when test="PayPal='Y'">highlightPos</xsl:when>
										<xsl:when test="PayPal='N'">highlightNeg</xsl:when>
										<xsl:otherwise>highlightZero</xsl:otherwise>
									</xsl:choose>
								</xsl:attribute>
								<xsl:value-of select="PayPal"/>
           					</td>
           					<td id="td5">
           						<xsl:attribute name="class">
									<xsl:choose>
										<xsl:when test="Bitcoin='Y'">highlightPos</xsl:when>
										<xsl:when test="Bitcoin='N'">highlightNeg</xsl:when>
										<xsl:otherwise>highlightZero</xsl:otherwise>
									</xsl:choose>
								</xsl:attribute>
								<xsl:value-of select="Bitcoin"/>
           					</td>
           					<td id="td6">
           						<xsl:attribute name="class">
									<xsl:choose>
										<xsl:when test="Ripple='Y'">highlightPos</xsl:when>
										<xsl:when test="Ripple='N'">highlightNeg</xsl:when>
										<xsl:otherwise>highlightZero</xsl:otherwise>
									</xsl:choose>
								</xsl:attribute>
								<xsl:value-of select="Ripple"/>
           					</td>
						</tr>
					</xsl:for-each>
				</xsl:for-each>
			</tbody>
		</table>
	</xsl:template>
</xsl:stylesheet>