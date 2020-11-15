<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
<title>Details</title>
</head>
<style>
body {
background-image: url('https://image.freepik.com/free-photo/medical-mockup-with-stethoscope-red-heart_72482-690.jpg');
background-size: cover;
background-repeat: no-repeat;
height: 100%;
  margin: 0;
  font-family: "Lato", sans-serif;
}
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 60%;
}
.header {
 padding: 3px;
  text-align: center;
  font-size: 25px;
  color:#000066;
}
td, th {
    border: 1px solid black;
    text-align: left;
    padding: 8px;

}
tr:nth-child(even) {
  background-color: #eee;
}
tr:nth-child(odd) {
 background-color: #fff;
}
</style>
<body>
<div class="header" id="myHeader">
  <h3><i>HOSPINFO</i></h3>
  <h4 align="center"><i>CHOOSE WELL BE WELL....</i></h4>
</div>
</body>
<body>
<xsl:apply-templates/>
</body>
</html>
</xsl:template>
<xsl:template match = "hospinfo">
<table width="400" border="1" align ="bottom" >
<tr bgcolor ="598744">
<th>Disease name</th>
<th>Hospital name</th>
<th>Estimated Amount</th>
<th>Recovery</th>
</tr>
<xsl:for-each select="disease/hospital" >
<xsl:sort select="recovery" data-type="number" order="descending"/>
<tr>
<td>
<xsl:value-of select="dname" />
</td>
<td>
<xsl:value-of select="name" />
</td>
<td>
<xsl:value-of select="amount" />
</td>
<td>
<xsl:value-of select="recovery" />
</td>
</tr>
</xsl:for-each>
</table>
</xsl:template>
</xsl:stylesheet>