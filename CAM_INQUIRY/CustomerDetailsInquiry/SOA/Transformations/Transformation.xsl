<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:tns="http://xmlns.fact.com/ws/CDI" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/sp/CustomerReference" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes=" xsd oracle-xsl-mapper xsi xsl ns0 tns mhdr oraext xp20 xref socket dvm oraxsl"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/CAM_INQUIRY/CustomerDetailsInquiry/CustomerReference"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:client="http://xmlns.oracle.com/CAM_INQUIRY/CustomerDetailsInquiry/CustomerDetailsInquiryBPEL">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/CustomerReference.wsdl"/>
            <oracle-xsl-mapper:rootElement name="OutputParameters" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/sp/CustomerReference"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/CustomerDetailsInquiryBPEL.wsdl"/>
            <oracle-xsl-mapper:rootElement name="CustomerDetailsInquiryMessageOutput" namespace="http://xmlns.fact.com/ws/CDI"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.1.0(XSLT Build 160608.1900.0023) AT [SUN OCT 08 14:38:58 IDT 2017].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <tns:CustomerDetailsInquiryMessageOutput>
         <tns:MessageBody>
            <xsl:for-each select="/ns0:OutputParameters/ns0:P_RECORD/ns0:P_RECORD_Row">
               <tns:InquiryInformation>
                  <tns:CustomerIdNumber>
                     <xsl:value-of select="ns0:CUS_ID_NO"/>
                  </tns:CustomerIdNumber>
                  <tns:CustomerName>
                     <xsl:value-of select="ns0:CUS_LNAME"/>
                  </tns:CustomerName>
                  <tns:TotalAmount>
                     <xsl:value-of select="ns0:REM_TOTAL_FAMOUNT"/>
                  </tns:TotalAmount>
                  <tns:Date>
                     <xsl:value-of select="ns0:DUE_DATE"/>
                  </tns:Date>
               </tns:InquiryInformation>
            </xsl:for-each>
         </tns:MessageBody>
      </tns:CustomerDetailsInquiryMessageOutput>
   </xsl:template>
</xsl:stylesheet>