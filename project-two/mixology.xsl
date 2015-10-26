<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="mixology">
  <html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <body style="font-family: Tahoma; font-size:12pt; background-color:#2c3e50">
	
  <h2 style="text-align:center; font-size:36pt; color:silver">Mixology</h2>
    <table border="1" bgcolor="white" class="sortable" id="sortabletable" cellpadding="0" cellspacing="0">
      <tr bgcolor="silver">
        <th style="text-align:center; font-size:18pt; font-weight:bold; color:#2c3e50">Group Category</th>
        <th style="text-align:center; font-size:18pt; font-weight:bold; color:#2c3e50">Drink Name</th>
        <th style="text-align:center; font-size:18pt; font-weight:bold; color:#2c3e50" class="unsortable">Ingredients</th>
        <th style="text-align:center; font-size:18pt; font-weight:bold; color:#2c3e50" class="unsortable">Mixing Instructions</th>
        <th style="text-align:center; font-size:18pt; font-weight:bold; color:#2c3e50" class="unsortable">Glassware</th>
      </tr>
      <xsl:for-each select="mixology/group_category">
      <xsl:sort select="dname" order="ascending|descending"/>
      
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
   <!--<script type="text/javascript" src="js/sortable.js"></script>-->
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>




   