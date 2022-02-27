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
   <xsl:if test="count(*) > 1">
      <mrow>
         <xsl:apply-templates/>
      </mrow>
   </xsl:if>
   <xsl:if test="count(*) = 1">
      <xsl:apply-templates/>
   </xsl:if>
   
</xsl:template>

<xsl:template match="дробь">
   <mfrac>
      <xsl:apply-templates/>
   </mfrac>
</xsl:template>

<xsl:template match="низверх">
   <munderover>
      <xsl:apply-templates/>
   </munderover>
</xsl:template>

<xsl:template match="верх">
   <msup>
      <xsl:apply-templates/>
   </msup>
</xsl:template>

<xsl:template match="корень">
   <msqrt>
      <xsl:apply-templates/>
   </msqrt>
</xsl:template>

</xsl:stylesheet> 