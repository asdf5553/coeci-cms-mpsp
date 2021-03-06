<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="2.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:fn="http://www.w3.org/2005/xpath-functions"
    xmlns:xdt="http://www.w3.org/2005/xpath-datatypes"
    xmlns:err="http://www.w3.org/2005/xqt-errors"
    xmlns:ext="http://gov.medicaid.services.enrollment/ValidationService"
    xmlns:ext2="http://gov.medicaid.shared/Entities"
    exclude-result-prefixes="xs xdt err fn">

    <xsl:output method="xml" indent="yes" omit-xml-declaration="yes"/>
    
    <xsl:template match="/">
		<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:impl="http://impl.services.screening.medicaid.gov/">
		   <soapenv:Header/>
		   <soapenv:Body>
		      <impl:verify>
		      	 <arg0><xsl:value-of select="//ext:SAMVerificationRequest/ext:ProviderInformation/ext2:ApplicantInformation/ext2:PersonalInformation/ext2:SocialSecurityNumber/text()"></xsl:value-of></arg0>
		         <arg1><xsl:value-of select="//ext:SAMVerificationRequest/ext:EntityId/text()"></xsl:value-of></arg1>
		      </impl:verify>
		   </soapenv:Body>
		</soapenv:Envelope>    
    </xsl:template>
</xsl:stylesheet>
