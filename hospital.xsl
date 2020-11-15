<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html xmins="http://www.w3.org/1999/xhtml">
  	<head>
  		<title> HOSPITAL INFORMATION </title></head>
  		<body>
  			<h1 align="center"> HOSPITAL INFORMATION</h1>
  			<table border="1" align="center" style="width:100%" cellpadding ="5">
  				<tr>
  					<th>Hospital Name</th><th>City</th><th>Treatment</th><th>Cost</th>
  				</tr>
  				<xsl:for-each select="/hospital_details/hospital">
  				<tr>
  				<td><xsl:value-of select="hospitalname"/></td> 
  				<td><xsl:value-of select="city"/></td> 
  				<td><xsl:value-of select="treatment"/></td> 
  				<td><xsl:value-of select="cost"/></td> 
  			</tr></xsl:for-each>
  		</table>
  	</body>
  </html>
</xsl:template>
</xsl:transform>
