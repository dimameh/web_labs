<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
	<html>
	<head>
		<title>Lab 2 - Mekh</title>
	</head>
	<body>
		<xsl:apply-templates/>
	</body>
	</html>
</xsl:template>

<xsl:template match="графика">
	<svg 	xmlns="http://www.w3.org/2000/svg" 
  		version="1.1" 
  		xmlns:xlink="http://www.w3.org/1999/xlink">

		<xsl:attribute name="width">
			<xsl:value-of select="@ширина"/>
		</xsl:attribute>

		<xsl:attribute name="height">
			<xsl:value-of select="@высота"/>
		</xsl:attribute>
		<xsl:apply-templates/>

	</svg>
</xsl:template>


<xsl:template match="эллипс">
	<ellipse>

		<xsl:attribute name="cx">
			<xsl:value-of select="@cx"/>
		</xsl:attribute>

		<xsl:attribute name="cy">
			<xsl:value-of select="@cy"/>
		</xsl:attribute>

		<xsl:attribute name="rx">
			<xsl:value-of select="@rx"/>
		</xsl:attribute>

		<xsl:attribute name="ry">
			<xsl:value-of select="@ry"/>
		</xsl:attribute>

		<xsl:attribute name="style">fill:<xsl:value-of select="@заливка"/>;stroke:<xsl:value-of select="@ободок"/>;stroke-width:<xsl:value-of select="@ширина-ободка"/>;</xsl:attribute>

		<xsl:apply-templates/>
		
	</ellipse>
</xsl:template>

</xsl:stylesheet> 
