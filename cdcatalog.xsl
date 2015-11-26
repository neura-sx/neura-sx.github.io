<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
    <head>
      <style>
        body {
            background-color: #0e1013;
            font-family: Helvetica, Arial, sans-serif;
        }
        
        div.hhh {
            display: inline-block;
            background-color: #414141;
            color: #ababab;
            font-size: 12px;
            padding: 20px 12px 8px 12px;
            margin: 3px 0 3px 0;
        }
        div.xxx {
            background-color: #414141;
            color: #ababab;
            font-size: 12px;
            padding: 16px 0 16px 100px;
            margin: 16px 0 16px 32px;
        }
        div span.num {
            color: #fff;
            font-size: 44px;
            font-weight: bold;
            display: block;
            margin-left: -116px;
            position: absolute;
        }
        div h1 {
            font-size: 20px;
            color: #fff;
        }
        
        div#head { margin-left: 500px; }
        div#box1 { width: 370px }
        div#box2 { margin-left: 100px; width: 300px }
        div#box3 { margin-left: 100px; width: 300px }
        div#box4 { margin-left: 100px; width: 300px }
        div#box5 { width: 430px }
    </style>
    </head>

    <body>
      <div id="head">
          <div id="head1" class="hhh">Estimated Cost</div>
          <div id="head2" class="hhh">Worker</div>
      </div>
      <xsl:for-each select="catalog/ch">
      <div id="box1" class="xxx">
          <span class="num"><xsl:value-of select="num" /></span>
          <h1><xsl:value-of select="title" /></h1>
          <xsl:value-of select="details" />
      </div>
      <xsl:for-each select="cd">
      <div id="box2" class="xxx">
          <span class="num"><xsl:value-of select="num" /></span>
          <h1><xsl:value-of select="title" /></h1>
          <xsl:value-of select="artist" />
      </div>
      </xsl:for-each>
      </xsl:for-each>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>
