<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/top/DepartmentsDbReference" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns0="http://TargetNamespace.com/HCMDepartmentsRestRef_GetDept_response" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes=" xsd oracle-xsl-mapper xsi xsl ns0 tns mhdr oraext xp20 xref socket dvm oraxsl"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:ns1="http://xmlns.oracle.com/HCMCloudServices/HCMDepartments/HCMDepartmentsRestRef"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/db/HCMCloudServices/HCMDepartments/DepartmentsDbReference"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:ns3="http://www.fact.com.jo/ST"
                xmlns:ns4="http://xmlns.oracle.com/HCMCloudServices/HCMDepartments/HCMDepartmentsProcess">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/HCMDepartmentsRestRef.wsdl"/>
            <oracle-xsl-mapper:rootElement name="Root-Element" namespace="http://TargetNamespace.com/HCMDepartmentsRestRef_GetDept_response"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/DepartmentsDbReference.wsdl"/>
            <oracle-xsl-mapper:rootElement name="HcmDepartmentCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/DepartmentsDbReference"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.1.0(XSLT Build 160608.1900.0023) AT [TUE MAR 06 15:22:42 EET 2018].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <tns:HcmDepartmentCollection>
         <xsl:for-each select="/ns0:Root-Element/ns0:items">
            <tns:HcmDepartment>
               <tns:code>
                  <xsl:value-of select="ns0:OrganizationId"/>
               </tns:code>
               <tns:aDesc>
                  <xsl:value-of select="ns0:Name"/>
               </tns:aDesc>
               <tns:dType>
                  <xsl:value-of select="ns0:ClassificationCode"/>
               </tns:dType>
               <tns:status>1</tns:status>
               <tns:dateCreated/>
               <tns:dateModified/>
               <tns:locationId>
                  <xsl:value-of select="ns0:LocationId"/>
               </tns:locationId>
               <tns:openingDate>
                  <xsl:value-of select="ns0:CreationDate"/>
               </tns:openingDate>
               <tns:dateUpd>
                  <xsl:value-of select="ns0:LastUpdateDate"/>
               </tns:dateUpd>
            </tns:HcmDepartment>
         </xsl:for-each>
      </tns:HcmDepartmentCollection>
   </xsl:template>
</xsl:stylesheet>
