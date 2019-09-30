<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:com="http://www.mslv.com/studio/core/model/common" version="1.0">
    <xsl:output method="xml" indent="yes" omit-xml-declaration="yes" />
    <xsl:template match="/">

#Global Deploy and undeploy properties

##### DEPLOY PARAMS ######  
      <xsl:for-each select="com:modelEntity/com:propertyCategory[@name='Cartridge Management']/com:property">
deploy.<xsl:value-of select="current()/@name"/>=<xsl:value-of select="com:defaultValue"/>
      </xsl:for-each>

#### MODEL VARAIBLES ######
        <xsl:for-each select="com:modelEntity/com:propertyCategory[@name='Model']/com:property">
model.<xsl:value-of select="current()/@name"/>=<xsl:value-of select="com:defaultValue"/>
        </xsl:for-each>
        
    </xsl:template>
</xsl:stylesheet>