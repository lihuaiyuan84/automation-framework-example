IETP_URL= "http://192.168.5.213:7444/ietp-s1000d/getLoginDialog.do"
CMS_URL="http://qc-s1000d-sh-c.infotrustgroup.com:9443/docato-composer"
PM_URL="http://192.168.5.236:8288/PublicationManagerAirframe"

ADMIN_USER="Administrator"
ADMIN_PASSWORD="secret"
ISSUE_4_PROJECT="Issue-4.0-test1"
ISSUE_41_PROJECT="Issue-4.1-test1"

PM_OPERATOR_USER="admin"
PM_OPERATOR_PASSWD="changeit"

PM_ADMIN_USER="admin"
PM_ADMIN_PASSWORD="changeit"

UPPER_BOUND=30
PM_LANGUAGE="en-US"
#FILE_LOCAL

DATA_PATH=File.dirname(__FILE__).gsub(/\//,'\\')+'\\test_data\\'
DDN_DATA=File.dirname(__FILE__).gsub(/\//,'\\')+'\\test_data\\TestDDN.zip'
BIKE_DATA=File.dirname(__FILE__).gsub(/\//,'\\')+'\\test_data\\S1000DBIKE.zip'
OSR_41_DATA=File.dirname(__FILE__).gsub(/\//,'\\')+'\\test_data\\S1000DI41_BASEPACKAGE.zip'

#CONSTANT
BIKE_BREX='DMC-S1000DBIKE-AAA-D00-00-00-00AA-022A-D_007-00_EN-US.xml'

S1000DDMINFO_MODIC="S1000DBIKE"
S1000DDMINFO_SDC="AAA"
S1000DDMINFO_CHAP="D0"
S1000DDMINFO_SECTION="0"
S1000DDMINFO_SUBSECT="0"
S1000DDMINFO_SUBJECT="02"
S1000DDMINFO_DISC="01"
S1000DDMINFO_DISCV="0AA"
S1000DDMINFO_INC="00W"
S1000DDMINFO_INCV="A"
S1000DDMINFO_ITMC="D"
S1000DDMINFO_RPC="aaaaa"
S1000DDMINFO_ORIG="bbbbb"
S1000DDMINFO_TECHNAME="ccccc"
S1000DDMINFO_INFONAME="ddddd"


#XPATH CONSTANT
DATA_MODULE_TREE_NODE='//*[@id="res_9"]'

PROC_EXPORT_XPATH_IMPORT_OSR="//tr[3]/td[8]/li/a"
PROC_UPDATE_XPATH_IMPORT_BREX="//tr[4]/td[8]/li/a"
PROC_IMPORT_XPATH_IMPORT_BREX="//tr[5]/td[8]/li/a"

PROC_IMPORT_XPATH_IMPORT_OSR="//tr[4]/td[8]/li/a"

PROC_TRANSFORM_XPATH_IMPORT_DATA="//tr[5]/td[8]/li/a"
PROC_UPDATE_XPATH_IMPORT_DATA="//tr[6]/td[8]/li/a"
PROC_IMPORT_XPATH_IMPORT_DATA="//tr[7]/td[8]/li/a"

PROC_UPDATE_XPATH_PUBLISH_DATA="//tr[7]/td[8]/li/a"
PROC_UPDATE_XPATH_PUBLISH_TRANSFORM_DATA="//tr[10]/td[8]/li/a"

PROC_TRANSFORM_FLAT_XPATH_IMPORT_DATA="//tr[4]/td[8]/li/a"
PROC_UPDATE_FLAT_XPATH_IMPORT_DATA="//tr[5]/td[8]/li/a"
PROC_IMPORT_FLAT_XPATH_IMPORT_DATA="//tr[6]/td[8]/li/a"

PROC_UPDATE_XML_XPATH_IMPORT_DATA_1="//tr[4]/td[8]/li/a"
PROC_IMPORT_XML_XPATH_IMPORT_DATA_1="//tr[5]/td[8]/li/a"

PROC_UPDATE_XML_XPATH_IMPORT_DATA_2="//tr[5]/td[8]/li/a"
PROC_IMPORT_XML_XPATH_IMPORT_DATA_2="//tr[6]/td[8]/li/a"

XPATH_PUB_NAV_ROOT_NODE='//div[4]/div[3]/div/div/ul/li/span/span'

S1000DDMINFO_MODIC_LOCAL="/html/body/div[4]/div[4]/div/table/tbody/tr[8]/td[2]"
S1000DDMINFO_SDC_LOCAL="/html/body/div[4]/div[4]/div/table/tbody/tr[7]/td[2]"
S1000DDMINFO_CHAP_LOCAL="/html/body/div[4]/div[4]/div/table/tbody/tr[15]/td[2]"
S1000DDMINFO_SECTION_LOCAL="/html/body/div[4]/div[4]/div/table/tbody/tr[26]/td[2]"
S1000DDMINFO_SUBSECT_LOCAL="/html/body/div[4]/div[4]/div/table/tbody/tr[28]/td[2]"
S1000DDMINFO_SUBJECT_LOCAL="/html/body/div[4]/div[4]/div/table/tbody/tr[9]/td[2]"
S1000DDMINFO_DISC_LOCAL="/html/body/div[4]/div[4]/div/table/tbody/tr[18]/td[2]"
S1000DDMINFO_DISCV_LOCAL="/html/body/div[4]/div[4]/div/table/tbody/tr[21]/td[2]"
S1000DDMINFO_INC_LOCAL="/html/body/div[4]/div[4]/div/table/tbody/tr[16]/td[2]"
S1000DDMINFO_INCV_LOCAL="/html/body/div[4]/div[4]/div/table/tbody/tr[4]/td[2]"
S1000DDMINFO_ITMC_LOCAL="/html/body/div[4]/div[4]/div/table/tbody/tr[11]/td[2]"
S1000DDMINFO_RPC_LOCAL="/html/body/div[4]/div[4]/div/table/tbody/tr[19]/td[2]"
S1000DDMINFO_ORIG_LOCAL="/html/body/div[4]/div[4]/div/table/tbody/tr[27]/td[2]"
S1000DDMINFO_TECHNAME_LOCAL="/html/body/div[4]/div[4]/div/table/tbody/tr[10]/td[2]"
S1000DDMINFO_INFONAME_LOCAL="/html/body/div[4]/div[4]/div/table/tbody/tr[3]/td[2]"

S1000D_4_CCT_ID='/html/body/div[4]/div/div/div/div/table/tbody/tr[2]/td/a'
S1000D_4_CCT_NAME='/html/body/div[4]/div/div/div/div/table/tbody/tr[2]/td[2]'
S1000D_4_CCT_DESC='/html/body/div[4]/div/div/div/div/table/tbody/tr[2]/td[3]'

S1000D_41_CCT_ID='/html/body/div[4]/div/div/div/div/table/tbody/tr[3]/td/a'
S1000D_41_CCT_NAME='/html/body/div[4]/div/div/div/div/table/tbody/tr[3]/td[2]'
S1000D_41_CCT_DESC='/html/body/div[4]/div/div/div/div/table/tbody/tr[3]/td[3]'

S1000D_PROJECT_LOCAL='/html/body/div/div[2]'
S1000D_PRODUCT_ITEM='/html/body/div[4]/div[2]/div/table/tbody/tr[1]/td[3]/a'

BOOKMARK_ITEM="/html/body/div[4]/div/div/table/tbody/tr/td[2]/a/span"
#SEARCH_ITEM="//div[4]/div/div/div/div/table/tbody/tr/td/a"
SEARCH_ITEM="/html/body/div[4]/div/div/div/div/form/table/tbody/tr/td/a"
BOOKMARK_DELETE="/html/body/div[4]/div/div/table/tbody/tr/td[10]/a"

PM_IMPORT_OSR_CONFIGURE_1='/html/body/form/div[4]/div/table[2]/tbody/tr/td/table/tbody/tr[3]/td[8]/li/a'
PM_IMPORT_OSR_CONFIGURE_2='/html/body/form/div[4]/div/table[2]/tbody/tr/td/table/tbody/tr[4]/td[8]/li/a'

PM_LOGIN_USERNAME='/html/body/form/div[4]/div/table[2]/tbody/tr/td/div/table/tbody/tr/td[2]/input[2]'
PM_LOGIN_PASSWORD='/html/body/form/div[4]/div/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input[2]'
PM_IMPORT_SELECT='/html/body/form/div[3]/div/span/li/span/select'
PM_CSDB_NAME='/html/body/form/div[3]/div/table[2]/tbody/tr[2]/td[2]/select'

PM_IMPORT_TEMPLATE_ITEM="/job[type='Pipeline' and subtype='Template' and contains(name,': Import')]"
PM_IMPORT_INSTANCE_ITEM="/job[type='Pipeline' and subtype='Instance' and contains(name,': Import')]"

CMS_PUBLISH_DDN_MIC_VAL='/html/body/div[4]/form/div/dl/dd/div/div'
CMS_PUBLISH_DDN_SENDER_VAL='/html/body/div[4]/form/div/dl[3]/dd/div/div'
CMS_PUBLISH_DDN_RECEIVER_VAL='/html/body/div[4]/form/div/dl[5]/dd/div/div'

CMS_PUBLISH_ID_MAP={'Export S1000D compliant transfer package'=>'publicationIds_36','Export S1000D compliant transfer package Copy'=>'publicationIds_41'}
CMS_PUBLISH_ERROR_COUNT='/html/body/div[4]/div[2]/div/table/tbody/tr/td[4]/a'

CMS_DM_SEARCH_PDF_CLICK=".//a/img[@title='View PDF'][1]"
CREATE_PDF_RESULT_NO_ERROR=".//tbody/tr/td[4]/a"


IETP_MANUAL_TAB_APPLIC_TABLE_HREF="javascript:setReturnFunction('setProductId');javascript:productsListPopup('act', 'ppia', 'ppiav');"