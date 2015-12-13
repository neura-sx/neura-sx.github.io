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
		<table id="technology-table">
			<tbody>
				<xsl:for-each select="root/groups/group">
					<tr>
						<xsl:for-each select="items/item">
							<td>
								<xsl:attribute name="class">
									<xsl:choose>
										<xsl:when test="@row!=1 and @col!='1'">top left</xsl:when>
										<xsl:when test="@row!=1 and @col='1'">top</xsl:when>
										<xsl:when test="@row=1 and @col!='1'">left</xsl:when>
									</xsl:choose>
								</xsl:attribute>
								<xsl:value-of select="feature"/>
							</td>
						</xsl:for-each>
					</tr>
					<tr>
						<xsl:for-each select="items/item">
							<td class="xxx highlightPos">
								<xsl:attribute name="class">
									<xsl:choose>
										<xsl:when test="@col!='1'">left highlightPos</xsl:when>
										<xsl:otherwise>highlightPos</xsl:otherwise>
									</xsl:choose>
								</xsl:attribute>
								<xsl:value-of select="implementation"/>
							</td>
						</xsl:for-each>
					</tr>
				</xsl:for-each>
			</tbody>
		</table>
	</xsl:template>
</xsl:stylesheet>