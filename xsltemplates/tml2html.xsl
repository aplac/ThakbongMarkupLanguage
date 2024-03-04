<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8" indent="yes" />

<xsl:template match="/thakbong/ent">
	<xsl:value-of select="geography/geopath" />
  <xsl:text>&#xa;</xsl:text>
  <xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
  <xsl:text>&#xa;</xsl:text>

<html>
   <head>
       <meta charset="utf-8"/>
       <link type='text/css' rel="stylesheet" href="https://aplac.github.io/css/all.css"/>
   </head>
   <body>

    <xsl:for-each select="superent">
      <h3>Thakbong Super-Entity (ID: <xsl:value-of select="@superentid"/>)</h3>

     <xsl:choose>
     <xsl:when test="supername">
      <p><b>Name: </b>
      <xsl:for-each select="supername">
        <xsl:element name="span">
             <xsl:attribute name="title">
        <xsl:choose><xsl:when test="@language != ''"><xsl:value-of select="@language " /></xsl:when><xsl:otherwise><xsl:value-of select="@script" /></xsl:otherwise></xsl:choose><xsl:text>&#032;</xsl:text>
	     </xsl:attribute>
	<xsl:value-of select="."/>
        </xsl:element>
	<xsl:if test="position() &lt; last()">,&#032;</xsl:if>
      </xsl:for-each>
      </p>
     </xsl:when>
     </xsl:choose>


     <xsl:choose>
     <xsl:when test="supertype">
     <p><b>Type: </b>
     <xsl:for-each select="supertype">
        <xsl:element name="span">
             <xsl:attribute name="title">
        <xsl:choose><xsl:when test="@language != ''"><xsl:value-of select="@language " /></xsl:when><xsl:otherwise><xsl:value-of select="@script" /></xsl:otherwise></xsl:choose><xsl:text>&#032;</xsl:text>
	     </xsl:attribute>
	<xsl:value-of select="."/>
        </xsl:element>
	<xsl:if test="position() &lt; last()">,&#032;</xsl:if>
     </xsl:for-each>
     </p>
     </xsl:when>
     </xsl:choose>


         <xsl:element name="a">
             <xsl:attribute name="href">
	        <xsl:value-of select="@superpath"/>
             </xsl:attribute>more ...</xsl:element>
    </xsl:for-each>




      <div style="background-color:blue">
      <h2>Thakbong Entity (ID: <xsl:value-of select="@id"/>)</h2>

     <xsl:for-each select="url">
        <xsl:element name="img">
	     <xsl:attribute name="style">width:30%</xsl:attribute>
	     <xsl:attribute name="src">
		     <xsl:value-of select="."/>
	     </xsl:attribute>
        </xsl:element>
     </xsl:for-each>

      <xsl:for-each select="names">
      <p><b>Name: </b>
      <xsl:for-each select="name">
        <xsl:element name="span">
	<xsl:value-of select="."/>
        </xsl:element>
	<xsl:if test="position() &lt; last()">,&#032;</xsl:if>
      </xsl:for-each>
      </p>
      </xsl:for-each>


     <xsl:for-each select="types">
     <p><b>Type: </b>
     <xsl:for-each select="type">
        <xsl:element name="span">
	<xsl:value-of select="."/>
        </xsl:element>
	<xsl:if test="position() &lt; last()">,&#032;</xsl:if>
     </xsl:for-each>
     </p>
     </xsl:for-each>


     <xsl:choose>
     <xsl:when test="geography/longitude">
     <p>
     <xsl:for-each select="geography">
         Longitude: <xsl:value-of select="longitude" /><br/> 
	 Latitude: <xsl:value-of select="latitude" /><br/>
	 Pluscode: <xsl:value-of select="pluscode" /><br/>
         <xsl:element name="a">
             <xsl:attribute name="href">
                 <xsl:value-of select="concat('https://www.google.com/search?q=','N',latitude,'E',longitude)"/>
             </xsl:attribute>
	     Location on Google Maps<br/>
         </xsl:element>
         <xsl:element name="a">
             <xsl:attribute name="href">
		     <xsl:value-of select="concat('https://www.openstreetmap.org/search?query=','N',latitude,'E',longitude,'#map=19/',latitude,'/',longitude)"/>
             </xsl:attribute>
	     Location on OpenStreetMap<br/>
         </xsl:element>
     </xsl:for-each>
     </p>
     </xsl:when>
     </xsl:choose>
     </div>

    <xsl:for-each select="subent">
      <h3>Thakbong Sub-Entity (ID: <xsl:value-of select="@subentid"/>)</h3>

     <xsl:choose>
     <xsl:when test="subname">
      <p><b>Name: </b>
      <xsl:for-each select="subname">
        <xsl:element name="span">
	<xsl:value-of select="."/>
        </xsl:element>
	<xsl:if test="position() &lt; last()">,&#032;</xsl:if>
      </xsl:for-each>
      </p>
     </xsl:when>
     </xsl:choose>


     <xsl:choose>
     <xsl:when test="subtype">
      <p><b>Type: </b>
     <xsl:for-each select="subtype">
        <xsl:element name="span">
             <xsl:attribute name="title">
        <xsl:choose><xsl:when test="@language != ''"><xsl:value-of select="@language " /></xsl:when><xsl:otherwise><xsl:value-of select="@script" /></xsl:otherwise></xsl:choose><xsl:text>&#032;</xsl:text>
	     </xsl:attribute>
	<xsl:value-of select="."/>
        </xsl:element>
	<xsl:if test="position() &lt; last()">,&#032;</xsl:if>
     </xsl:for-each>
     </p>
     </xsl:when>
     </xsl:choose>

     <xsl:for-each select="url">
        <xsl:element name="img">
	     <xsl:attribute name="style">width:30%</xsl:attribute>
	     <xsl:attribute name="src">
		     <xsl:value-of select="."/>
	     </xsl:attribute>
        </xsl:element>
     </xsl:for-each>

         <xsl:element name="a">
             <xsl:attribute name="href">
	        <xsl:value-of select="@subpath"/>
             </xsl:attribute>more ...</xsl:element>
    </xsl:for-each>

    <script type="text/javascript" src="https://aplac.github.io/js/leftright.js"></script>
  </body>
</html>
</xsl:template>
</xsl:stylesheet>
