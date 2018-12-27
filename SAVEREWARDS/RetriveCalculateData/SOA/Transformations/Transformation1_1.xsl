<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/sp/RetriveCalculteDataReference" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tns="http://www.fact.com.jo/SAV" exclude-result-prefixes=" xsd oracle-xsl-mapper xsi xsl ns0 tns mhdr oraext xp20 xref socket dvm oraxsl"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/SAVEREWARDS/RetriveCalculateData/RetriveCalculteDataReference"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:client="http://xmlns.oracle.com/SAVEREWARDS/RetriveCalculateData/RetriveDataProcess">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/RetriveCalculteDataReference.wsdl"/>
            <oracle-xsl-mapper:rootElement name="OutputParameters" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/sp/RetriveCalculteDataReference"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/RetriveDataProcess.wsdl"/>
            <oracle-xsl-mapper:rootElement name="InquiryMessageOutPut" namespace="http://www.fact.com.jo/SAV"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.1.0(XSLT Build 160608.1900.0023) AT [TUE FEB 06 09:01:19 EET 2018].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <tns:InquiryMessageOutPut>
         <tns:InquiryInformation>
            <xsl:for-each select="/ns0:OutputParameters/ns0:P_SAV_STMT/ns0:P_SAV_STMT_Row">
               <tns:Data>
                  <tns:brch_code>
                     <xsl:value-of select="ns0:BRCH_CODE"/>
                  </tns:brch_code>
                  <tns:cacc_num>
                     <xsl:value-of select="ns0:CACC_NUM"/>
                  </tns:cacc_num>
                  <tns:cacc_name>
                     <xsl:value-of select="ns0:CACC_NAME"/>
                  </tns:cacc_name>
                  <tns:prof_code>
                     <xsl:value-of select="ns0:PROF_CODE"/>
                  </tns:prof_code>
                  <tns:slot_prof_desc>
                     <xsl:value-of select="ns0:SLOT_PROF_DESC"/>
                  </tns:slot_prof_desc>
                  <tns:slot_gender>
                     <xsl:value-of select="ns0:SLOT_GENDER"/>
                  </tns:slot_gender>
                  <tns:slot_birth_date>
                     <xsl:value-of select="ns0:SLOT_BIRTH_DATE"/>
                  </tns:slot_birth_date>
                  <tns:slot_age>
                     <xsl:value-of select="ns0:SLOT_AGE"/>
                  </tns:slot_age>
                  <tns:slot_jud_ind>
                     <xsl:value-of select="ns0:SLOT_JUD_IND"/>
                  </tns:slot_jud_ind>
                  <tns:slot_avail_bal>
                     <xsl:value-of select="ns0:SLOT_AVAIL_BAL"/>
                  </tns:slot_avail_bal>
                  <tns:slot_year>
                     <xsl:value-of select="ns0:SLOT_YEAR"/>
                  </tns:slot_year>
                  <tns:jib_emp_flg>
                     <xsl:value-of select="ns0:JIB_EMP_FLG"/>
                  </tns:jib_emp_flg>
                  <tns:brch_b_desc>
                     <xsl:value-of select="ns0:BRCH_B_DESC"/>
                  </tns:brch_b_desc>
                  <tns:slot_bal_mnth1>
                     <xsl:value-of select="ns0:SLOT_BAL_MNTH1"/>
                  </tns:slot_bal_mnth1>
                  <tns:slot_avg_bal_mnth1>
                     <xsl:value-of select="ns0:SLOT_AVG_BAL_MNTH1"/>
                  </tns:slot_avg_bal_mnth1>
                  <tns:slot_max_bal_mnth1>
                     <xsl:value-of select="ns0:SLOT_MAX_BAL_MNTH1"/>
                  </tns:slot_max_bal_mnth1>
                  <tns:slot_min_bal_mnth1>
                     <xsl:value-of select="ns0:SLOT_MIN_BAL_MNTH1"/>
                  </tns:slot_min_bal_mnth1>
                  <tns:slot_bal_mnth2>
                     <xsl:value-of select="ns0:SLOT_BAL_MNTH2"/>
                  </tns:slot_bal_mnth2>
                  <tns:slot_avg_bal_mnth2>
                     <xsl:value-of select="ns0:SLOT_AVG_BAL_MNTH2"/>
                  </tns:slot_avg_bal_mnth2>
                  <tns:slot_max_bal_mnth2>
                     <xsl:value-of select="ns0:SLOT_MAX_BAL_MNTH2"/>
                  </tns:slot_max_bal_mnth2>
                  <tns:slot_min_bal_mnth2>
                     <xsl:value-of select="ns0:SLOT_MIN_BAL_MNTH2"/>
                  </tns:slot_min_bal_mnth2>
                  <tns:slot_bal_mnth3>
                     <xsl:value-of select="ns0:SLOT_BAL_MNTH3"/>
                  </tns:slot_bal_mnth3>
                  <tns:slot_avg_bal_mnth3>
                     <xsl:value-of select="ns0:SLOT_AVG_BAL_MNTH3"/>
                  </tns:slot_avg_bal_mnth3>
                  <tns:slot_max_bal_mnth3>
                     <xsl:value-of select="ns0:SLOT_MAX_BAL_MNTH3"/>
                  </tns:slot_max_bal_mnth3>
                  <tns:slot_min_bal_mnth3>
                     <xsl:value-of select="ns0:SLOT_MIN_BAL_MNTH3"/>
                  </tns:slot_min_bal_mnth3>
                  <tns:slot_bal_mnth4>
                     <xsl:value-of select="ns0:SLOT_BAL_MNTH4"/>
                  </tns:slot_bal_mnth4>
                  <tns:slot_avg_bal_mnth4>
                     <xsl:value-of select="ns0:SLOT_AVG_BAL_MNTH4"/>
                  </tns:slot_avg_bal_mnth4>
                  <tns:slot_max_bal_mnth4>
                     <xsl:value-of select="ns0:SLOT_MAX_BAL_MNTH4"/>
                  </tns:slot_max_bal_mnth4>
                  <tns:slot_min_bal_mnth4>
                     <xsl:value-of select="ns0:SLOT_MIN_BAL_MNTH4"/>
                  </tns:slot_min_bal_mnth4>
                  <tns:slot_bal_mnth5>
                     <xsl:value-of select="ns0:SLOT_BAL_MNTH5"/>
                  </tns:slot_bal_mnth5>
                  <tns:slot_avg_bal_mnth5>
                     <xsl:value-of select="ns0:SLOT_AVG_BAL_MNTH5"/>
                  </tns:slot_avg_bal_mnth5>
                  <tns:slot_max_bal_mnth5>
                     <xsl:value-of select="ns0:SLOT_MAX_BAL_MNTH5"/>
                  </tns:slot_max_bal_mnth5>
                  <tns:slot_min_bal_mnth5>
                     <xsl:value-of select="ns0:SLOT_MIN_BAL_MNTH5"/>
                  </tns:slot_min_bal_mnth5>
                  <tns:slot_bal_mnth6>
                     <xsl:value-of select="ns0:SLOT_BAL_MNTH6"/>
                  </tns:slot_bal_mnth6>
                  <tns:slot_avg_bal_mnth6>
                     <xsl:value-of select="ns0:SLOT_AVG_BAL_MNTH6"/>
                  </tns:slot_avg_bal_mnth6>
                  <tns:slot_max_bal_mnth6>
                     <xsl:value-of select="ns0:SLOT_MAX_BAL_MNTH6"/>
                  </tns:slot_max_bal_mnth6>
                  <tns:slot_min_bal_mnth6>
                     <xsl:value-of select="ns0:SLOT_MIN_BAL_MNTH6"/>
                  </tns:slot_min_bal_mnth6>
                  <tns:slot_bal_mnth7>
                     <xsl:value-of select="ns0:SLOT_BAL_MNTH7"/>
                  </tns:slot_bal_mnth7>
                  <tns:slot_avg_bal_mnth7>
                     <xsl:value-of select="ns0:SLOT_AVG_BAL_MNTH7"/>
                  </tns:slot_avg_bal_mnth7>
                  <tns:slot_max_bal_mnth7>
                     <xsl:value-of select="ns0:SLOT_MAX_BAL_MNTH7"/>
                  </tns:slot_max_bal_mnth7>
                  <tns:slot_min_bal_mnth7>
                     <xsl:value-of select="ns0:SLOT_MIN_BAL_MNTH7"/>
                  </tns:slot_min_bal_mnth7>
                  <tns:slot_bal_mnth8>
                     <xsl:value-of select="ns0:SLOT_BAL_MNTH8"/>
                  </tns:slot_bal_mnth8>
                  <tns:slot_avg_bal_mnth8>
                     <xsl:value-of select="ns0:SLOT_AVG_BAL_MNTH8"/>
                  </tns:slot_avg_bal_mnth8>
                  <tns:slot_max_bal_mnth8>
                     <xsl:value-of select="ns0:SLOT_MAX_BAL_MNTH8"/>
                  </tns:slot_max_bal_mnth8>
                  <tns:slot_min_bal_mnth8>
                     <xsl:value-of select="ns0:SLOT_MIN_BAL_MNTH8"/>
                  </tns:slot_min_bal_mnth8>
                  <tns:slot_bal_mnth9>
                     <xsl:value-of select="ns0:SLOT_BAL_MNTH9"/>
                  </tns:slot_bal_mnth9>
                  <tns:slot_avg_bal_mnth9>
                     <xsl:value-of select="ns0:SLOT_AVG_BAL_MNTH9"/>
                  </tns:slot_avg_bal_mnth9>
                  <tns:slot_max_bal_mnth9>
                     <xsl:value-of select="ns0:SLOT_MAX_BAL_MNTH9"/>
                  </tns:slot_max_bal_mnth9>
                  <tns:slot_min_bal_mnth9>
                     <xsl:value-of select="ns0:SLOT_MIN_BAL_MNTH9"/>
                  </tns:slot_min_bal_mnth9>
                  <tns:slot_bal_mnth10>
                     <xsl:value-of select="ns0:SLOT_BAL_MNTH10"/>
                  </tns:slot_bal_mnth10>
                  <tns:slot_avg_bal_mnth10>
                     <xsl:value-of select="ns0:SLOT_AVG_BAL_MNTH10"/>
                  </tns:slot_avg_bal_mnth10>
                  <tns:slot_max_bal_mnth10>
                     <xsl:value-of select="ns0:SLOT_MAX_BAL_MNTH10"/>
                  </tns:slot_max_bal_mnth10>
                  <tns:slot_min_bal_mnth10>
                     <xsl:value-of select="ns0:SLOT_MIN_BAL_MNTH10"/>
                  </tns:slot_min_bal_mnth10>
                  <tns:slot_bal_mnth11>
                     <xsl:value-of select="ns0:SLOT_BAL_MNTH11"/>
                  </tns:slot_bal_mnth11>
                  <tns:slot_avg_bal_mnth11>
                     <xsl:value-of select="ns0:SLOT_AVG_BAL_MNTH11"/>
                  </tns:slot_avg_bal_mnth11>
                  <tns:slot_max_bal_mnth11>
                     <xsl:value-of select="ns0:SLOT_MAX_BAL_MNTH11"/>
                  </tns:slot_max_bal_mnth11>
                  <tns:slot_min_bal_mnth11>
                     <xsl:value-of select="ns0:SLOT_MIN_BAL_MNTH11"/>
                  </tns:slot_min_bal_mnth11>
                  <tns:slot_bal_mnth12>
                     <xsl:value-of select="ns0:SLOT_BAL_MNTH12"/>
                  </tns:slot_bal_mnth12>
                  <tns:slot_avg_bal_mnth12>
                     <xsl:value-of select="ns0:SLOT_AVG_BAL_MNTH12"/>
                  </tns:slot_avg_bal_mnth12>
                  <tns:slot_max_bal_mnth12>
                     <xsl:value-of select="ns0:SLOT_MAX_BAL_MNTH12"/>
                  </tns:slot_max_bal_mnth12>
                  <tns:slot_min_bal_mnth12>
                     <xsl:value-of select="ns0:SLOT_MIN_BAL_MNTH12"/>
                  </tns:slot_min_bal_mnth12>
                  <tns:rec_status>
                     <xsl:value-of select="ns0:REC_STATUS"/>
                  </tns:rec_status>
                  <tns:file_date>
                     <xsl:value-of select="ns0:FILE_DATE"/>
                  </tns:file_date>
                  <tns:cust_id>
                     <xsl:value-of select="ns0:CUST_ID"/>
                  </tns:cust_id>
               </tns:Data>
            </xsl:for-each>
         </tns:InquiryInformation>
      </tns:InquiryMessageOutPut>
   </xsl:template>
</xsl:stylesheet>
