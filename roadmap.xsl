<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" href="roadmap.css"/>
      </head>
      <body>
        <xsl:for-each select="areas/area">
          <table>
            <caption><xsl:value-of select="name"/></caption>
            <thead>
              <tr>
                <th id="th1" scope="col">Title</th>  
                <th id="th2" scope="col">Status</th>
                <th id="th3" scope="col">Overlap</th>
                <th id="th4" scope="col">Estimated Cost</th>
                <th id="th5" scope="col">Worker Proposal</th>
                <th id="th6" scope="col">Contractor</th>
                <th id="th7" scope="col">Linku</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="items/item">
                <tr>
                  <xsl:attribute name="class">
                    <xsl:choose>
                      <xsl:when test="@done &gt; 0">done</xsl:when>
                      <xsl:otherwise></xsl:otherwise>
                    </xsl:choose>
                  </xsl:attribute>
                  <th scope="row"><xsl:value-of select="title"/></th>
                  <td><xsl:value-of select="status"/></td>
                  <td>
                    <xsl:attribute name="class">
                      <xsl:choose>
                        <xsl:when test="overlap != N">overlap</xsl:when>
                        <xsl:otherwise></xsl:otherwise>
                      </xsl:choose>
                    </xsl:attribute>
                    <xsl:value-of select="overlap"/>
                  </td>
                  <td><xsl:value-of select="cost"/></td>
                  <td><xsl:value-of select="worker"/></td>
                  <td>
                    <a>
                      <xsl:attribute name="href">
                        <xsl:value-of select="contractor/url"/>
                      </xsl:attribute>
                      <xsl:value-of select="contractor/name"/>
                    </a>
                  </td>
                  <td>
                    <div class="links">
                      <xsl:for-each select="links/link">
                        <span class="link">
                          <a>
                            <xsl:attribute name="href">
                              <xsl:value-of select="url"/>
                            </xsl:attribute>
                            <xsl:value-of select="label"/>
                          </a>
                        </span>
                      </xsl:for-each>
                    </div>
                  </td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
