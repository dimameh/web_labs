<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
   <html>
   <body>
   <h2>My CD Collection</h2>
   <xsl:apply-templates/>
   </body>
   </html>
</xsl:template>

<xsl:template match="операнд">
   <p>
   <xsl:apply-templates select="оператор"/>
   <xsl:apply-templates select="число"/>
   </p>
</xsl:template>

<xsl:template match="оператор">
   оператор: <span style="color:#ff0000">
   <xsl:value-of select="."/></span>
   <br />
</xsl:template>

<xsl:template match="число">
   число: <span style="color:#00ff00">
   <xsl:value-of select="."/></span>
   <br />
</xsl:template>

</xsl:stylesheet> 