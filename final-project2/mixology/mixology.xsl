<?xml version="1.0" encoding="UTF-8"?>

<xsl:template match="/">
  <html>

  <body>
  <h2 style="text-align:center; font-size:36pt; color:blue">Mixology</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Category</th>
        <th>Drink Name</th>
        <th>Ingredients</th>
        <th>Mixing Instructions</th>
        <th>Glassware</th>
      </tr>
      <xsl:for-each select="mixology/group_category">
      <xsl:sort select="title" order="ascending"/>
      <tr>
        <td><xsl:value-of select="title"/></td>
        <td><xsl:value-of select="dname"/></td>
        <td><xsl:for-each select="ingre">
            <ul>
              <xsl:for-each select="ingredients">
                <li><xsl:value-of select="."/></li>
              </xsl:for-each>
            </ul>
          </xsl:for-each></td>
        <td><xsl:for-each select="mdir">
            <ol>
              <xsl:for-each select="mdir_steps">
                <li><xsl:value-of select="."/></li>
              </xsl:for-each>
            </ol>
          </xsl:for-each></td>
        <td><td class="glass"><xsl:element name="photo"><img src="{glassware}"></img>
		</xsl:element></td></td>
      </tr>

       </xsl:for-each>
    </table>
    
    
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>


      