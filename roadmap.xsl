<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/> 
	<title></title>
	<style type="text/css">
		@import "test.css";
	</style>
	<script type="text/javascript">
    </script>
      <!--<head>
        <link rel="stylesheet" href="roadmap.css"/>
      </head>-->
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
                <th id="th7" scope="col">Links</th>
              </tr>
            </thead>
            <tfoot>
              <tr>
                <td colspan="7">Total: xxx items</td>
              </tr>
            </tfoot>
            <tbody>
              <xsl:for-each select="items/item">
                <tr>
                  <th scope="row"><xsl:value-of select="title"/></th>
                  <td><xsl:value-of select="status"/></td>
                  <td><xsl:value-of select="overlap"/></td>
                  <td><xsl:value-of select="cost"/></td>
                  <td><xsl:value-of select="worker"/></td>
                  <td><xsl:value-of select="contractor"/></td>
                  <td>
                    <div class="links">
                      <!--<xsl:for-each select="links/link">
                        <div>
                          <a>
                            <xsl:attribute name="href">
                              <xsl:value-of select="url"/>
                            </xsl:attribute>
                            <xsl:value-of select="label"/>
                          </a>
                        </div>
                        
                      </xsl:for-each>-->
                      <div class="intro">
                <div><a href="sa">content1e</a></div>
                 <div><a href="sa">content2w</a></div>
            </div>
                    </div>
                  </td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
        </xsl:for-each>
        
        <table>
	  <caption>Flight Schedule1</caption>
	  <thead>
	    <tr>
	      <th id="fn" scope="col">Flight Number:::</th>  
	      <th id="fr" scope="col">From:</th>  
	      <th id="to" scope="col">To:</th>  
	      <th id="dp" scope="col">Departure:</th>  
	      <th id="ar" scope="col">Arrival:</th>  
	    </tr>
	  </thead>
	  <tfoot>
	    <tr>
	      <td colspan="5">Total: 3 flights</td>
	    </tr>
	  </tfoot>
	  <tbody>
	  <tr>
	    <th scope="row">BA 3451</th>
	    <td>Heathrow</td>
	    <td>Nuremberg</td>
	    <td>19:20</td>
	    <td>19:50</td>
	  </tr>
	  <tr class="odd">
	    <th scope="row">BA 1254</th>
	    <td>Luton</td>
	    <td>
	        <div class="links">
                <div><a href="sa">content1xxx</a></div>
                <div><a href="sa">content2yyy</a></div>
            </div>
	    </td>
	    <td>19:40</td>
	    <td>20:50</td>
	  </tr>
	  <tr>
	    <th scope="row">LH 331</th>
	    <td>Heathrow</td>
	    <td>Hamburg</td>
	    <td>20:00</td>
	    <td>20:20</td>
	  </tr>
	  </tbody>
	</table>
        
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
