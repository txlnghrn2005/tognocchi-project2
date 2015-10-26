<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
	<head>
		 <link href="css/stylesheet.css" type="text/css" rel="stylesheet" />
	</head>
  <body>
	
  <h2>Mixology</h2>
    <table class="sortable" id="sortabletable" cellpadding="0" cellspacing="0">
      <tr>
        <th>Group Category</th>
        <th>Drink Name</th>
        <th class="unsortable">Ingredients</th>
        <th class="unsortable">Mixing Instructions</th>
        <th class="unsortable">Glassware</th>
      </tr>
      <xsl:for-each select="mixology/group_category">
            
      <tr>
        <td><xsl:value-of select="title"/></td>
        <td><xsl:value-of select="dname"/></td>
        <td><xsl:for-each select="ingre">
            <ul>
              <xsl:for-each select= "ingredients">
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
        <td><xsl:for-each select="glass/image">
              <a href="{.}" target="_blank">
                <img src="{.}" width="100" height="100" border="0" />
              </a>
            </xsl:for-each></td>
      </tr>

       </xsl:for-each>
    </table>
   <script type="text/javascript" src="js/jquery.js"></script>
   <script type="text/javascript" src="js/sortable.js"></script>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>




   