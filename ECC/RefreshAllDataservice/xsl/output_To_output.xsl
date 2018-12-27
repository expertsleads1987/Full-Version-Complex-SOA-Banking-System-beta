<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:client="http://xmlns.oracle.com/OFMInMemoryUtilities/RefreshAllDataservice/RefreshAllProcess" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://xmlns.oracle.com/bpel/RADS" xmlns:tns="http://oracle.com/sca/soapservice/OFMInMemoryUtilities/RefreshAllDataservice/RefreshAllDataservice" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:inp1="http://xmlns.oracle.com/ws/RADS" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl plnk client xsd ns1 wsdl tns inp1 bpws xp20 mhdr bpel oraext dvm hwf med ids bpm xdk xref ora socket ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../RefreshAllProcess.wsdl"/>
            <oracle-xsl-mapper:rootElement name="output" namespace="http://xmlns.oracle.com/bpel/RADS"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../RefreshAllDataservice.wsdl"/>
            <oracle-xsl-mapper:rootElement name="output" namespace="http://xmlns.oracle.com/ws/RADS"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.3.0(XSLT Build 170820.1700.2557) AT [SAT OCT 06 13:59:20 EEST 2018].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
    <inp1:output>
      <inp1:MessageBody>
        <inp1:StatusInformation>
          <inp1:Status>
            <xsl:value-of select="/ns1:output/ns1:MessageBody/ns1:StatusInformation/ns1:Status"/>
          </inp1:Status>
        </inp1:StatusInformation>
        <xsl:if test="/ns1:output/ns1:MessageBody/ns1:ErrorInformation">
          <inp1:ErrorInformation>
            <inp1:ErrorBusCode>
              <xsl:value-of select="/ns1:output/ns1:MessageBody/ns1:ErrorInformation/ns1:ErrorBusCode"/>
            </inp1:ErrorBusCode>
            <inp1:ErrorBusMessage>
              <xsl:value-of select="/ns1:output/ns1:MessageBody/ns1:ErrorInformation/ns1:ErrorBusMessage"/>
            </inp1:ErrorBusMessage>
            <xsl:if test="/ns1:output/ns1:MessageBody/ns1:ErrorInformation/ns1:ErrorTechCode">
              <inp1:ErrorTechCode>
                <xsl:value-of select="/ns1:output/ns1:MessageBody/ns1:ErrorInformation/ns1:ErrorTechCode"/>
              </inp1:ErrorTechCode>
            </xsl:if>
            <xsl:if test="/ns1:output/ns1:MessageBody/ns1:ErrorInformation/ns1:ErrorTechMessage">
              <inp1:ErrorTechMessage>
                <xsl:value-of select="/ns1:output/ns1:MessageBody/ns1:ErrorInformation/ns1:ErrorTechMessage"/>
              </inp1:ErrorTechMessage>
            </xsl:if>
            <xsl:if test="/ns1:output/ns1:MessageBody/ns1:ErrorInformation/ns1:ErrorTechDetails">
              <inp1:ErrorTechDetails>
                <xsl:value-of select="/ns1:output/ns1:MessageBody/ns1:ErrorInformation/ns1:ErrorTechDetails"/>
              </inp1:ErrorTechDetails>
            </xsl:if>
          </inp1:ErrorInformation>
        </xsl:if>
      </inp1:MessageBody>
    </inp1:output>
  </xsl:template>
</xsl:stylesheet>