<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
   <html>
   <body>
      <math>
         <xsl:apply-templates/>
      </math>
   </body>
   </html>
</xsl:template>
<!-- 
<xsl:template match="операнд">
   <xsl:apply-templates select="оператор"/>
   <xsl:apply-templates select="число"/>
</xsl:template> -->

<xsl:template match="оператор">
   <mo>
      <xsl:value-of select="."/>
   </mo>
</xsl:template>

<xsl:template match="операнд">
   <mi>
      <xsl:value-of select="."/>
   </mi>
</xsl:template>

<xsl:template match="число">
   <mn>
      <xsl:value-of select="."/>
   </mn>
</xsl:template>

<xsl:template match="строка">
   <xsl:apply-templates select="."/>
</xsl:template>

<xsl:template match="Дробь">
   <mfrac>
      <xsl:apply-templates select="."/>
   </mfrac>
</xsl:template>

</xsl:stylesheet> 