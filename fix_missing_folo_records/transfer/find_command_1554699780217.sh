cd /var/lib/indy/storage/maven
echo "["
echo "{"
echo "\"path\":\"/org/apache/apache/7-redhat-2/apache-7-redhat-2.pom\","
echo "\"repo\":\"$(find hosted-*/org/apache/apache/7-redhat-2/apache-7-redhat-2.pom -name apache-7-redhat-2.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/server/apacheds-core/1.5.7.redhat-002/apacheds-core-1.5.7.redhat-002.jar\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/server/apacheds-core/1.5.7.redhat-002/apacheds-core-1.5.7.redhat-002.jar -name apacheds-core-1.5.7.redhat-002.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/server/apacheds-core/1.5.7.redhat-002/apacheds-core-1.5.7.redhat-002.pom\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/server/apacheds-core/1.5.7.redhat-002/apacheds-core-1.5.7.redhat-002.pom -name apacheds-core-1.5.7.redhat-002.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/server/apacheds-core-api/1.5.7.redhat-002/apacheds-core-api-1.5.7.redhat-002.jar\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/server/apacheds-core-api/1.5.7.redhat-002/apacheds-core-api-1.5.7.redhat-002.jar -name apacheds-core-api-1.5.7.redhat-002.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/server/apacheds-core-api/1.5.7.redhat-002/apacheds-core-api-1.5.7.redhat-002.pom\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/server/apacheds-core-api/1.5.7.redhat-002/apacheds-core-api-1.5.7.redhat-002.pom -name apacheds-core-api-1.5.7.redhat-002.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/server/apacheds-core-constants/1.5.7.redhat-002/apacheds-core-constants-1.5.7.redhat-002.jar\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/server/apacheds-core-constants/1.5.7.redhat-002/apacheds-core-constants-1.5.7.redhat-002.jar -name apacheds-core-constants-1.5.7.redhat-002.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/server/apacheds-core-constants/1.5.7.redhat-002/apacheds-core-constants-1.5.7.redhat-002.pom\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/server/apacheds-core-constants/1.5.7.redhat-002/apacheds-core-constants-1.5.7.redhat-002.pom -name apacheds-core-constants-1.5.7.redhat-002.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/server/apacheds-core-entry/1.5.7.redhat-002/apacheds-core-entry-1.5.7.redhat-002.jar\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/server/apacheds-core-entry/1.5.7.redhat-002/apacheds-core-entry-1.5.7.redhat-002.jar -name apacheds-core-entry-1.5.7.redhat-002.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/server/apacheds-core-entry/1.5.7.redhat-002/apacheds-core-entry-1.5.7.redhat-002.pom\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/server/apacheds-core-entry/1.5.7.redhat-002/apacheds-core-entry-1.5.7.redhat-002.pom -name apacheds-core-entry-1.5.7.redhat-002.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/server/apacheds-core-jndi/1.5.7.redhat-002/apacheds-core-jndi-1.5.7.redhat-002.jar\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/server/apacheds-core-jndi/1.5.7.redhat-002/apacheds-core-jndi-1.5.7.redhat-002.jar -name apacheds-core-jndi-1.5.7.redhat-002.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/server/apacheds-core-jndi/1.5.7.redhat-002/apacheds-core-jndi-1.5.7.redhat-002.pom\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/server/apacheds-core-jndi/1.5.7.redhat-002/apacheds-core-jndi-1.5.7.redhat-002.pom -name apacheds-core-jndi-1.5.7.redhat-002.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/server/apacheds-i18n/1.5.7.redhat-002/apacheds-i18n-1.5.7.redhat-002.jar\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/server/apacheds-i18n/1.5.7.redhat-002/apacheds-i18n-1.5.7.redhat-002.jar -name apacheds-i18n-1.5.7.redhat-002.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/server/apacheds-i18n/1.5.7.redhat-002/apacheds-i18n-1.5.7.redhat-002.pom\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/server/apacheds-i18n/1.5.7.redhat-002/apacheds-i18n-1.5.7.redhat-002.pom -name apacheds-i18n-1.5.7.redhat-002.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/server/apacheds-parent/1.5.7.redhat-002/apacheds-parent-1.5.7.redhat-002.pom\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/server/apacheds-parent/1.5.7.redhat-002/apacheds-parent-1.5.7.redhat-002.pom -name apacheds-parent-1.5.7.redhat-002.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/server/apacheds-protocol-dns/1.5.7.redhat-002/apacheds-protocol-dns-1.5.7.redhat-002.jar\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/server/apacheds-protocol-dns/1.5.7.redhat-002/apacheds-protocol-dns-1.5.7.redhat-002.jar -name apacheds-protocol-dns-1.5.7.redhat-002.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/server/apacheds-protocol-dns/1.5.7.redhat-002/apacheds-protocol-dns-1.5.7.redhat-002.pom\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/server/apacheds-protocol-dns/1.5.7.redhat-002/apacheds-protocol-dns-1.5.7.redhat-002.pom -name apacheds-protocol-dns-1.5.7.redhat-002.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/server/apacheds-protocol-shared/1.5.7.redhat-002/apacheds-protocol-shared-1.5.7.redhat-002.jar\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/server/apacheds-protocol-shared/1.5.7.redhat-002/apacheds-protocol-shared-1.5.7.redhat-002.jar -name apacheds-protocol-shared-1.5.7.redhat-002.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/server/apacheds-protocol-shared/1.5.7.redhat-002/apacheds-protocol-shared-1.5.7.redhat-002.pom\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/server/apacheds-protocol-shared/1.5.7.redhat-002/apacheds-protocol-shared-1.5.7.redhat-002.pom -name apacheds-protocol-shared-1.5.7.redhat-002.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/server/apacheds-utils/1.5.7.redhat-002/apacheds-utils-1.5.7.redhat-002.jar\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/server/apacheds-utils/1.5.7.redhat-002/apacheds-utils-1.5.7.redhat-002.jar -name apacheds-utils-1.5.7.redhat-002.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/server/apacheds-utils/1.5.7.redhat-002/apacheds-utils-1.5.7.redhat-002.pom\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/server/apacheds-utils/1.5.7.redhat-002/apacheds-utils-1.5.7.redhat-002.pom -name apacheds-utils-1.5.7.redhat-002.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/shared/shared-asn1/0.9.19.redhat-002/shared-asn1-0.9.19.redhat-002.jar\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/shared/shared-asn1/0.9.19.redhat-002/shared-asn1-0.9.19.redhat-002.jar -name shared-asn1-0.9.19.redhat-002.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/shared/shared-asn1/0.9.19.redhat-002/shared-asn1-0.9.19.redhat-002.pom\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/shared/shared-asn1/0.9.19.redhat-002/shared-asn1-0.9.19.redhat-002.pom -name shared-asn1-0.9.19.redhat-002.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/shared/shared-asn1-codec/0.9.19.redhat-002/shared-asn1-codec-0.9.19.redhat-002.jar\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/shared/shared-asn1-codec/0.9.19.redhat-002/shared-asn1-codec-0.9.19.redhat-002.jar -name shared-asn1-codec-0.9.19.redhat-002.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/shared/shared-asn1-codec/0.9.19.redhat-002/shared-asn1-codec-0.9.19.redhat-002.pom\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/shared/shared-asn1-codec/0.9.19.redhat-002/shared-asn1-codec-0.9.19.redhat-002.pom -name shared-asn1-codec-0.9.19.redhat-002.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/shared/shared-cursor/0.9.19.redhat-002/shared-cursor-0.9.19.redhat-002.jar\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/shared/shared-cursor/0.9.19.redhat-002/shared-cursor-0.9.19.redhat-002.jar -name shared-cursor-0.9.19.redhat-002.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/shared/shared-cursor/0.9.19.redhat-002/shared-cursor-0.9.19.redhat-002.pom\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/shared/shared-cursor/0.9.19.redhat-002/shared-cursor-0.9.19.redhat-002.pom -name shared-cursor-0.9.19.redhat-002.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/shared/shared-dsml-parser/0.9.19.redhat-002/shared-dsml-parser-0.9.19.redhat-002.jar\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/shared/shared-dsml-parser/0.9.19.redhat-002/shared-dsml-parser-0.9.19.redhat-002.jar -name shared-dsml-parser-0.9.19.redhat-002.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/shared/shared-dsml-parser/0.9.19.redhat-002/shared-dsml-parser-0.9.19.redhat-002.pom\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/shared/shared-dsml-parser/0.9.19.redhat-002/shared-dsml-parser-0.9.19.redhat-002.pom -name shared-dsml-parser-0.9.19.redhat-002.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/shared/shared-i18n/0.9.19.redhat-002/shared-i18n-0.9.19.redhat-002.jar\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/shared/shared-i18n/0.9.19.redhat-002/shared-i18n-0.9.19.redhat-002.jar -name shared-i18n-0.9.19.redhat-002.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/shared/shared-i18n/0.9.19.redhat-002/shared-i18n-0.9.19.redhat-002.pom\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/shared/shared-i18n/0.9.19.redhat-002/shared-i18n-0.9.19.redhat-002.pom -name shared-i18n-0.9.19.redhat-002.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/shared/shared-ldap/0.9.19.redhat-002/shared-ldap-0.9.19.redhat-002.jar\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/shared/shared-ldap/0.9.19.redhat-002/shared-ldap-0.9.19.redhat-002.jar -name shared-ldap-0.9.19.redhat-002.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/shared/shared-ldap/0.9.19.redhat-002/shared-ldap-0.9.19.redhat-002.pom\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/shared/shared-ldap/0.9.19.redhat-002/shared-ldap-0.9.19.redhat-002.pom -name shared-ldap-0.9.19.redhat-002.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/shared/shared-ldap-constants/0.9.19.redhat-002/shared-ldap-constants-0.9.19.redhat-002.jar\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/shared/shared-ldap-constants/0.9.19.redhat-002/shared-ldap-constants-0.9.19.redhat-002.jar -name shared-ldap-constants-0.9.19.redhat-002.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/shared/shared-ldap-constants/0.9.19.redhat-002/shared-ldap-constants-0.9.19.redhat-002.pom\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/shared/shared-ldap-constants/0.9.19.redhat-002/shared-ldap-constants-0.9.19.redhat-002.pom -name shared-ldap-constants-0.9.19.redhat-002.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/shared/shared-ldap-converter/0.9.19.redhat-002/shared-ldap-converter-0.9.19.redhat-002.jar\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/shared/shared-ldap-converter/0.9.19.redhat-002/shared-ldap-converter-0.9.19.redhat-002.jar -name shared-ldap-converter-0.9.19.redhat-002.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/shared/shared-ldap-converter/0.9.19.redhat-002/shared-ldap-converter-0.9.19.redhat-002.pom\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/shared/shared-ldap-converter/0.9.19.redhat-002/shared-ldap-converter-0.9.19.redhat-002.pom -name shared-ldap-converter-0.9.19.redhat-002.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/shared/shared-ldap-jndi/0.9.19.redhat-002/shared-ldap-jndi-0.9.19.redhat-002.jar\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/shared/shared-ldap-jndi/0.9.19.redhat-002/shared-ldap-jndi-0.9.19.redhat-002.jar -name shared-ldap-jndi-0.9.19.redhat-002.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/shared/shared-ldap-jndi/0.9.19.redhat-002/shared-ldap-jndi-0.9.19.redhat-002.pom\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/shared/shared-ldap-jndi/0.9.19.redhat-002/shared-ldap-jndi-0.9.19.redhat-002.pom -name shared-ldap-jndi-0.9.19.redhat-002.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/shared/shared-ldap-schema/0.9.19.redhat-002/shared-ldap-schema-0.9.19.redhat-002.jar\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/shared/shared-ldap-schema/0.9.19.redhat-002/shared-ldap-schema-0.9.19.redhat-002.jar -name shared-ldap-schema-0.9.19.redhat-002.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/shared/shared-ldap-schema/0.9.19.redhat-002/shared-ldap-schema-0.9.19.redhat-002.pom\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/shared/shared-ldap-schema/0.9.19.redhat-002/shared-ldap-schema-0.9.19.redhat-002.pom -name shared-ldap-schema-0.9.19.redhat-002.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/shared/shared-ldap-schema-dao/0.9.19.redhat-002/shared-ldap-schema-dao-0.9.19.redhat-002.jar\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/shared/shared-ldap-schema-dao/0.9.19.redhat-002/shared-ldap-schema-dao-0.9.19.redhat-002.jar -name shared-ldap-schema-dao-0.9.19.redhat-002.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/shared/shared-ldap-schema-dao/0.9.19.redhat-002/shared-ldap-schema-dao-0.9.19.redhat-002.pom\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/shared/shared-ldap-schema-dao/0.9.19.redhat-002/shared-ldap-schema-dao-0.9.19.redhat-002.pom -name shared-ldap-schema-dao-0.9.19.redhat-002.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/shared/shared-ldap-schema-loader/0.9.19.redhat-002/shared-ldap-schema-loader-0.9.19.redhat-002.jar\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/shared/shared-ldap-schema-loader/0.9.19.redhat-002/shared-ldap-schema-loader-0.9.19.redhat-002.jar -name shared-ldap-schema-loader-0.9.19.redhat-002.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/shared/shared-ldap-schema-loader/0.9.19.redhat-002/shared-ldap-schema-loader-0.9.19.redhat-002.pom\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/shared/shared-ldap-schema-loader/0.9.19.redhat-002/shared-ldap-schema-loader-0.9.19.redhat-002.pom -name shared-ldap-schema-loader-0.9.19.redhat-002.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/shared/shared-ldap-schema-manager/0.9.19.redhat-002/shared-ldap-schema-manager-0.9.19.redhat-002.jar\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/shared/shared-ldap-schema-manager/0.9.19.redhat-002/shared-ldap-schema-manager-0.9.19.redhat-002.jar -name shared-ldap-schema-manager-0.9.19.redhat-002.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/shared/shared-ldap-schema-manager/0.9.19.redhat-002/shared-ldap-schema-manager-0.9.19.redhat-002.pom\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/shared/shared-ldap-schema-manager/0.9.19.redhat-002/shared-ldap-schema-manager-0.9.19.redhat-002.pom -name shared-ldap-schema-manager-0.9.19.redhat-002.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/shared/shared-ldif/0.9.19.redhat-002/shared-ldif-0.9.19.redhat-002.jar\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/shared/shared-ldif/0.9.19.redhat-002/shared-ldif-0.9.19.redhat-002.jar -name shared-ldif-0.9.19.redhat-002.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/shared/shared-ldif/0.9.19.redhat-002/shared-ldif-0.9.19.redhat-002.pom\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/shared/shared-ldif/0.9.19.redhat-002/shared-ldif-0.9.19.redhat-002.pom -name shared-ldif-0.9.19.redhat-002.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/directory/shared/shared-parent/0.9.19.redhat-002/shared-parent-0.9.19.redhat-002.pom\","
echo "\"repo\":\"$(find hosted-*/org/apache/directory/shared/shared-parent/0.9.19.redhat-002/shared-parent-0.9.19.redhat-002.pom -name shared-parent-0.9.19.redhat-002.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/com/fasterxml/jackson/core/jackson-annotations/2.9.8.redhat-00004/jackson-annotations-2.9.8.redhat-00004.jar\","
echo "\"repo\":\"$(find hosted-*/com/fasterxml/jackson/core/jackson-annotations/2.9.8.redhat-00004/jackson-annotations-2.9.8.redhat-00004.jar -name jackson-annotations-2.9.8.redhat-00004.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/com/fasterxml/jackson/core/jackson-annotations/2.9.8.redhat-00004/jackson-annotations-2.9.8.redhat-00004.pom\","
echo "\"repo\":\"$(find hosted-*/com/fasterxml/jackson/core/jackson-annotations/2.9.8.redhat-00004/jackson-annotations-2.9.8.redhat-00004.pom -name jackson-annotations-2.9.8.redhat-00004.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/com/fasterxml/jackson/core/jackson-core/2.9.8.redhat-00004/jackson-core-2.9.8.redhat-00004.jar\","
echo "\"repo\":\"$(find hosted-*/com/fasterxml/jackson/core/jackson-core/2.9.8.redhat-00004/jackson-core-2.9.8.redhat-00004.jar -name jackson-core-2.9.8.redhat-00004.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/com/fasterxml/jackson/core/jackson-core/2.9.8.redhat-00004/jackson-core-2.9.8.redhat-00004.pom\","
echo "\"repo\":\"$(find hosted-*/com/fasterxml/jackson/core/jackson-core/2.9.8.redhat-00004/jackson-core-2.9.8.redhat-00004.pom -name jackson-core-2.9.8.redhat-00004.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/com/fasterxml/jackson/core/jackson-databind/2.9.8.redhat-00004/jackson-databind-2.9.8.redhat-00004.jar\","
echo "\"repo\":\"$(find hosted-*/com/fasterxml/jackson/core/jackson-databind/2.9.8.redhat-00004/jackson-databind-2.9.8.redhat-00004.jar -name jackson-databind-2.9.8.redhat-00004.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/com/fasterxml/jackson/core/jackson-databind/2.9.8.redhat-00004/jackson-databind-2.9.8.redhat-00004.pom\","
echo "\"repo\":\"$(find hosted-*/com/fasterxml/jackson/core/jackson-databind/2.9.8.redhat-00004/jackson-databind-2.9.8.redhat-00004.pom -name jackson-databind-2.9.8.redhat-00004.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/com/fasterxml/jackson/jackson-base/2.9.8.redhat-00004/jackson-base-2.9.8.redhat-00004.pom\","
echo "\"repo\":\"$(find hosted-*/com/fasterxml/jackson/jackson-base/2.9.8.redhat-00004/jackson-base-2.9.8.redhat-00004.pom -name jackson-base-2.9.8.redhat-00004.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/com/fasterxml/jackson/jackson-bom/2.9.8.redhat-00004/jackson-bom-2.9.8.redhat-00004.pom\","
echo "\"repo\":\"$(find hosted-*/com/fasterxml/jackson/jackson-bom/2.9.8.redhat-00004/jackson-bom-2.9.8.redhat-00004.pom -name jackson-bom-2.9.8.redhat-00004.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/com/fasterxml/jackson/jackson-parent/2.9.1.2-redhat-00001/jackson-parent-2.9.1.2-redhat-00001.pom\","
echo "\"repo\":\"$(find hosted-*/com/fasterxml/jackson/jackson-parent/2.9.1.2-redhat-00001/jackson-parent-2.9.1.2-redhat-00001.pom -name jackson-parent-2.9.1.2-redhat-00001.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/com/fasterxml/oss-parent/34.0.0.redhat-00001/oss-parent-34.0.0.redhat-00001.pom\","
echo "\"repo\":\"$(find hosted-*/com/fasterxml/oss-parent/34.0.0.redhat-00001/oss-parent-34.0.0.redhat-00001.pom -name oss-parent-34.0.0.redhat-00001.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/jsonwebtoken/jjwt/0.7.0.redhat-00001/jjwt-0.7.0.redhat-00001.jar\","
echo "\"repo\":\"$(find hosted-*/io/jsonwebtoken/jjwt/0.7.0.redhat-00001/jjwt-0.7.0.redhat-00001.jar -name jjwt-0.7.0.redhat-00001.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/jsonwebtoken/jjwt/0.7.0.redhat-00001/jjwt-0.7.0.redhat-00001.pom\","
echo "\"repo\":\"$(find hosted-*/io/jsonwebtoken/jjwt/0.7.0.redhat-00001/jjwt-0.7.0.redhat-00001.pom -name jjwt-0.7.0.redhat-00001.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/micrometer/micrometer-core/1.1.0.redhat-00002/micrometer-core-1.1.0.redhat-00002.jar\","
echo "\"repo\":\"$(find hosted-*/io/micrometer/micrometer-core/1.1.0.redhat-00002/micrometer-core-1.1.0.redhat-00002.jar -name micrometer-core-1.1.0.redhat-00002.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/micrometer/micrometer-core/1.1.0.redhat-00002/micrometer-core-1.1.0.redhat-00002.pom\","
echo "\"repo\":\"$(find hosted-*/io/micrometer/micrometer-core/1.1.0.redhat-00002/micrometer-core-1.1.0.redhat-00002.pom -name micrometer-core-1.1.0.redhat-00002.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/micrometer/micrometer-parent/1.1.0.redhat-00002/micrometer-parent-1.1.0.redhat-00002.pom\","
echo "\"repo\":\"$(find hosted-*/io/micrometer/micrometer-parent/1.1.0.redhat-00002/micrometer-parent-1.1.0.redhat-00002.pom -name micrometer-parent-1.1.0.redhat-00002.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/micrometer/micrometer-registry-graphite/1.1.0.redhat-00002/micrometer-registry-graphite-1.1.0.redhat-00002.jar\","
echo "\"repo\":\"$(find hosted-*/io/micrometer/micrometer-registry-graphite/1.1.0.redhat-00002/micrometer-registry-graphite-1.1.0.redhat-00002.jar -name micrometer-registry-graphite-1.1.0.redhat-00002.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/micrometer/micrometer-registry-graphite/1.1.0.redhat-00002/micrometer-registry-graphite-1.1.0.redhat-00002.pom\","
echo "\"repo\":\"$(find hosted-*/io/micrometer/micrometer-registry-graphite/1.1.0.redhat-00002/micrometer-registry-graphite-1.1.0.redhat-00002.pom -name micrometer-registry-graphite-1.1.0.redhat-00002.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/micrometer/micrometer-registry-prometheus/1.1.0.redhat-00002/micrometer-registry-prometheus-1.1.0.redhat-00002.jar\","
echo "\"repo\":\"$(find hosted-*/io/micrometer/micrometer-registry-prometheus/1.1.0.redhat-00002/micrometer-registry-prometheus-1.1.0.redhat-00002.jar -name micrometer-registry-prometheus-1.1.0.redhat-00002.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/micrometer/micrometer-registry-prometheus/1.1.0.redhat-00002/micrometer-registry-prometheus-1.1.0.redhat-00002.pom\","
echo "\"repo\":\"$(find hosted-*/io/micrometer/micrometer-registry-prometheus/1.1.0.redhat-00002/micrometer-registry-prometheus-1.1.0.redhat-00002.pom -name micrometer-registry-prometheus-1.1.0.redhat-00002.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/micrometer/micrometer-spring-legacy/1.1.0.redhat-00002/micrometer-spring-legacy-1.1.0.redhat-00002.jar\","
echo "\"repo\":\"$(find hosted-*/io/micrometer/micrometer-spring-legacy/1.1.0.redhat-00002/micrometer-spring-legacy-1.1.0.redhat-00002.jar -name micrometer-spring-legacy-1.1.0.redhat-00002.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/micrometer/micrometer-spring-legacy/1.1.0.redhat-00002/micrometer-spring-legacy-1.1.0.redhat-00002.pom\","
echo "\"repo\":\"$(find hosted-*/io/micrometer/micrometer-spring-legacy/1.1.0.redhat-00002/micrometer-spring-legacy-1.1.0.redhat-00002.pom -name micrometer-spring-legacy-1.1.0.redhat-00002.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-buffer/4.1.30.Final-redhat-00001/netty-buffer-4.1.30.Final-redhat-00001.jar\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-buffer/4.1.30.Final-redhat-00001/netty-buffer-4.1.30.Final-redhat-00001.jar -name netty-buffer-4.1.30.Final-redhat-00001.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-buffer/4.1.30.Final-redhat-00001/netty-buffer-4.1.30.Final-redhat-00001.pom\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-buffer/4.1.30.Final-redhat-00001/netty-buffer-4.1.30.Final-redhat-00001.pom -name netty-buffer-4.1.30.Final-redhat-00001.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-buffer/4.1.32.Final-redhat-00001/netty-buffer-4.1.32.Final-redhat-00001.jar\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-buffer/4.1.32.Final-redhat-00001/netty-buffer-4.1.32.Final-redhat-00001.jar -name netty-buffer-4.1.32.Final-redhat-00001.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-buffer/4.1.32.Final-redhat-00001/netty-buffer-4.1.32.Final-redhat-00001.pom\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-buffer/4.1.32.Final-redhat-00001/netty-buffer-4.1.32.Final-redhat-00001.pom -name netty-buffer-4.1.32.Final-redhat-00001.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-codec/4.1.30.Final-redhat-00001/netty-codec-4.1.30.Final-redhat-00001.jar\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-codec/4.1.30.Final-redhat-00001/netty-codec-4.1.30.Final-redhat-00001.jar -name netty-codec-4.1.30.Final-redhat-00001.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-codec/4.1.30.Final-redhat-00001/netty-codec-4.1.30.Final-redhat-00001.pom\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-codec/4.1.30.Final-redhat-00001/netty-codec-4.1.30.Final-redhat-00001.pom -name netty-codec-4.1.30.Final-redhat-00001.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-codec-dns/4.1.30.Final-redhat-00001/netty-codec-dns-4.1.30.Final-redhat-00001.jar\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-codec-dns/4.1.30.Final-redhat-00001/netty-codec-dns-4.1.30.Final-redhat-00001.jar -name netty-codec-dns-4.1.30.Final-redhat-00001.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-codec-dns/4.1.30.Final-redhat-00001/netty-codec-dns-4.1.30.Final-redhat-00001.pom\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-codec-dns/4.1.30.Final-redhat-00001/netty-codec-dns-4.1.30.Final-redhat-00001.pom -name netty-codec-dns-4.1.30.Final-redhat-00001.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-codec-http2/4.1.30.Final-redhat-00001/netty-codec-http2-4.1.30.Final-redhat-00001.jar\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-codec-http2/4.1.30.Final-redhat-00001/netty-codec-http2-4.1.30.Final-redhat-00001.jar -name netty-codec-http2-4.1.30.Final-redhat-00001.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-codec-http2/4.1.30.Final-redhat-00001/netty-codec-http2-4.1.30.Final-redhat-00001.pom\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-codec-http2/4.1.30.Final-redhat-00001/netty-codec-http2-4.1.30.Final-redhat-00001.pom -name netty-codec-http2-4.1.30.Final-redhat-00001.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-codec-http/4.1.30.Final-redhat-00001/netty-codec-http-4.1.30.Final-redhat-00001.jar\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-codec-http/4.1.30.Final-redhat-00001/netty-codec-http-4.1.30.Final-redhat-00001.jar -name netty-codec-http-4.1.30.Final-redhat-00001.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-codec-http/4.1.30.Final-redhat-00001/netty-codec-http-4.1.30.Final-redhat-00001.pom\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-codec-http/4.1.30.Final-redhat-00001/netty-codec-http-4.1.30.Final-redhat-00001.pom -name netty-codec-http-4.1.30.Final-redhat-00001.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-codec-mqtt/4.1.30.Final-redhat-00001/netty-codec-mqtt-4.1.30.Final-redhat-00001.jar\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-codec-mqtt/4.1.30.Final-redhat-00001/netty-codec-mqtt-4.1.30.Final-redhat-00001.jar -name netty-codec-mqtt-4.1.30.Final-redhat-00001.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-codec-mqtt/4.1.30.Final-redhat-00001/netty-codec-mqtt-4.1.30.Final-redhat-00001.pom\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-codec-mqtt/4.1.30.Final-redhat-00001/netty-codec-mqtt-4.1.30.Final-redhat-00001.pom -name netty-codec-mqtt-4.1.30.Final-redhat-00001.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-codec-socks/4.1.30.Final-redhat-00001/netty-codec-socks-4.1.30.Final-redhat-00001.jar\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-codec-socks/4.1.30.Final-redhat-00001/netty-codec-socks-4.1.30.Final-redhat-00001.jar -name netty-codec-socks-4.1.30.Final-redhat-00001.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-codec-socks/4.1.30.Final-redhat-00001/netty-codec-socks-4.1.30.Final-redhat-00001.pom\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-codec-socks/4.1.30.Final-redhat-00001/netty-codec-socks-4.1.30.Final-redhat-00001.pom -name netty-codec-socks-4.1.30.Final-redhat-00001.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-common/4.1.30.Final-redhat-00001/netty-common-4.1.30.Final-redhat-00001.jar\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-common/4.1.30.Final-redhat-00001/netty-common-4.1.30.Final-redhat-00001.jar -name netty-common-4.1.30.Final-redhat-00001.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-common/4.1.30.Final-redhat-00001/netty-common-4.1.30.Final-redhat-00001.pom\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-common/4.1.30.Final-redhat-00001/netty-common-4.1.30.Final-redhat-00001.pom -name netty-common-4.1.30.Final-redhat-00001.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-common/4.1.32.Final-redhat-00001/netty-common-4.1.32.Final-redhat-00001.jar\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-common/4.1.32.Final-redhat-00001/netty-common-4.1.32.Final-redhat-00001.jar -name netty-common-4.1.32.Final-redhat-00001.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-common/4.1.32.Final-redhat-00001/netty-common-4.1.32.Final-redhat-00001.pom\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-common/4.1.32.Final-redhat-00001/netty-common-4.1.32.Final-redhat-00001.pom -name netty-common-4.1.32.Final-redhat-00001.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-handler/4.1.30.Final-redhat-00001/netty-handler-4.1.30.Final-redhat-00001.jar\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-handler/4.1.30.Final-redhat-00001/netty-handler-4.1.30.Final-redhat-00001.jar -name netty-handler-4.1.30.Final-redhat-00001.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-handler/4.1.30.Final-redhat-00001/netty-handler-4.1.30.Final-redhat-00001.pom\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-handler/4.1.30.Final-redhat-00001/netty-handler-4.1.30.Final-redhat-00001.pom -name netty-handler-4.1.30.Final-redhat-00001.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-handler-proxy/4.1.30.Final-redhat-00001/netty-handler-proxy-4.1.30.Final-redhat-00001.jar\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-handler-proxy/4.1.30.Final-redhat-00001/netty-handler-proxy-4.1.30.Final-redhat-00001.jar -name netty-handler-proxy-4.1.30.Final-redhat-00001.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-handler-proxy/4.1.30.Final-redhat-00001/netty-handler-proxy-4.1.30.Final-redhat-00001.pom\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-handler-proxy/4.1.30.Final-redhat-00001/netty-handler-proxy-4.1.30.Final-redhat-00001.pom -name netty-handler-proxy-4.1.30.Final-redhat-00001.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-parent/4.1.30.Final-redhat-00001/netty-parent-4.1.30.Final-redhat-00001.pom\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-parent/4.1.30.Final-redhat-00001/netty-parent-4.1.30.Final-redhat-00001.pom -name netty-parent-4.1.30.Final-redhat-00001.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-parent/4.1.32.Final-redhat-00001/netty-parent-4.1.32.Final-redhat-00001.pom\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-parent/4.1.32.Final-redhat-00001/netty-parent-4.1.32.Final-redhat-00001.pom -name netty-parent-4.1.32.Final-redhat-00001.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-resolver/4.1.30.Final-redhat-00001/netty-resolver-4.1.30.Final-redhat-00001.jar\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-resolver/4.1.30.Final-redhat-00001/netty-resolver-4.1.30.Final-redhat-00001.jar -name netty-resolver-4.1.30.Final-redhat-00001.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-resolver/4.1.30.Final-redhat-00001/netty-resolver-4.1.30.Final-redhat-00001.pom\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-resolver/4.1.30.Final-redhat-00001/netty-resolver-4.1.30.Final-redhat-00001.pom -name netty-resolver-4.1.30.Final-redhat-00001.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-resolver/4.1.32.Final-redhat-00001/netty-resolver-4.1.32.Final-redhat-00001.pom\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-resolver/4.1.32.Final-redhat-00001/netty-resolver-4.1.32.Final-redhat-00001.pom -name netty-resolver-4.1.32.Final-redhat-00001.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-resolver-dns/4.1.30.Final-redhat-00001/netty-resolver-dns-4.1.30.Final-redhat-00001.jar\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-resolver-dns/4.1.30.Final-redhat-00001/netty-resolver-dns-4.1.30.Final-redhat-00001.jar -name netty-resolver-dns-4.1.30.Final-redhat-00001.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-resolver-dns/4.1.30.Final-redhat-00001/netty-resolver-dns-4.1.30.Final-redhat-00001.pom\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-resolver-dns/4.1.30.Final-redhat-00001/netty-resolver-dns-4.1.30.Final-redhat-00001.pom -name netty-resolver-dns-4.1.30.Final-redhat-00001.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-transport/4.1.30.Final-redhat-00001/netty-transport-4.1.30.Final-redhat-00001.jar\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-transport/4.1.30.Final-redhat-00001/netty-transport-4.1.30.Final-redhat-00001.jar -name netty-transport-4.1.30.Final-redhat-00001.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-transport/4.1.30.Final-redhat-00001/netty-transport-4.1.30.Final-redhat-00001.pom\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-transport/4.1.30.Final-redhat-00001/netty-transport-4.1.30.Final-redhat-00001.pom -name netty-transport-4.1.30.Final-redhat-00001.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-transport/4.1.32.Final-redhat-00001/netty-transport-4.1.32.Final-redhat-00001.jar\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-transport/4.1.32.Final-redhat-00001/netty-transport-4.1.32.Final-redhat-00001.jar -name netty-transport-4.1.32.Final-redhat-00001.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-transport/4.1.32.Final-redhat-00001/netty-transport-4.1.32.Final-redhat-00001.pom\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-transport/4.1.32.Final-redhat-00001/netty-transport-4.1.32.Final-redhat-00001.pom -name netty-transport-4.1.32.Final-redhat-00001.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-transport-native-epoll/4.1.32.Final-redhat-00001/netty-transport-native-epoll-4.1.32.Final-redhat-00001-linux-x86_64.jar\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-transport-native-epoll/4.1.32.Final-redhat-00001/netty-transport-native-epoll-4.1.32.Final-redhat-00001-linux-x86_64.jar -name netty-transport-native-epoll-4.1.32.Final-redhat-00001-linux-x86_64.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-transport-native-epoll/4.1.32.Final-redhat-00001/netty-transport-native-epoll-4.1.32.Final-redhat-00001.pom\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-transport-native-epoll/4.1.32.Final-redhat-00001/netty-transport-native-epoll-4.1.32.Final-redhat-00001.pom -name netty-transport-native-epoll-4.1.32.Final-redhat-00001.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-transport-native-unix-common/4.1.32.Final-redhat-00001/netty-transport-native-unix-common-4.1.32.Final-redhat-00001.jar\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-transport-native-unix-common/4.1.32.Final-redhat-00001/netty-transport-native-unix-common-4.1.32.Final-redhat-00001.jar -name netty-transport-native-unix-common-4.1.32.Final-redhat-00001.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/netty/netty-transport-native-unix-common/4.1.32.Final-redhat-00001/netty-transport-native-unix-common-4.1.32.Final-redhat-00001.pom\","
echo "\"repo\":\"$(find hosted-*/io/netty/netty-transport-native-unix-common/4.1.32.Final-redhat-00001/netty-transport-native-unix-common-4.1.32.Final-redhat-00001.pom -name netty-transport-native-unix-common-4.1.32.Final-redhat-00001.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/opentracing/contrib/opentracing-vertx-web/0.1.0.redhat-00001/opentracing-vertx-web-0.1.0.redhat-00001.jar\","
echo "\"repo\":\"$(find hosted-*/io/opentracing/contrib/opentracing-vertx-web/0.1.0.redhat-00001/opentracing-vertx-web-0.1.0.redhat-00001.jar -name opentracing-vertx-web-0.1.0.redhat-00001.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/opentracing/contrib/opentracing-vertx-web/0.1.0.redhat-00001/opentracing-vertx-web-0.1.0.redhat-00001.pom\","
echo "\"repo\":\"$(find hosted-*/io/opentracing/contrib/opentracing-vertx-web/0.1.0.redhat-00001/opentracing-vertx-web-0.1.0.redhat-00001.pom -name opentracing-vertx-web-0.1.0.redhat-00001.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/opentracing/contrib/opentracing-vertx-web-parent/0.1.0.redhat-00001/opentracing-vertx-web-parent-0.1.0.redhat-00001.pom\","
echo "\"repo\":\"$(find hosted-*/io/opentracing/contrib/opentracing-vertx-web-parent/0.1.0.redhat-00001/opentracing-vertx-web-parent-0.1.0.redhat-00001.pom -name opentracing-vertx-web-parent-0.1.0.redhat-00001.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/vertx/vertx-auth/3.6.3.redhat-00010/vertx-auth-3.6.3.redhat-00010.pom\","
echo "\"repo\":\"$(find hosted-*/io/vertx/vertx-auth/3.6.3.redhat-00010/vertx-auth-3.6.3.redhat-00010.pom -name vertx-auth-3.6.3.redhat-00010.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/vertx/vertx-auth-common/3.6.3.redhat-00010/vertx-auth-common-3.6.3.redhat-00010.jar\","
echo "\"repo\":\"$(find hosted-*/io/vertx/vertx-auth-common/3.6.3.redhat-00010/vertx-auth-common-3.6.3.redhat-00010.jar -name vertx-auth-common-3.6.3.redhat-00010.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/vertx/vertx-auth-common/3.6.3.redhat-00010/vertx-auth-common-3.6.3.redhat-00010.pom\","
echo "\"repo\":\"$(find hosted-*/io/vertx/vertx-auth-common/3.6.3.redhat-00010/vertx-auth-common-3.6.3.redhat-00010.pom -name vertx-auth-common-3.6.3.redhat-00010.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/vertx/vertx-bridge-common/3.6.3.redhat-00011/vertx-bridge-common-3.6.3.redhat-00011.jar\","
echo "\"repo\":\"$(find hosted-*/io/vertx/vertx-bridge-common/3.6.3.redhat-00011/vertx-bridge-common-3.6.3.redhat-00011.jar -name vertx-bridge-common-3.6.3.redhat-00011.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/vertx/vertx-bridge-common/3.6.3.redhat-00011/vertx-bridge-common-3.6.3.redhat-00011.pom\","
echo "\"repo\":\"$(find hosted-*/io/vertx/vertx-bridge-common/3.6.3.redhat-00011/vertx-bridge-common-3.6.3.redhat-00011.pom -name vertx-bridge-common-3.6.3.redhat-00011.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/vertx/vertx-core/3.6.3.redhat-00010/vertx-core-3.6.3.redhat-00010.jar\","
echo "\"repo\":\"$(find hosted-*/io/vertx/vertx-core/3.6.3.redhat-00010/vertx-core-3.6.3.redhat-00010.jar -name vertx-core-3.6.3.redhat-00010.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/vertx/vertx-core/3.6.3.redhat-00010/vertx-core-3.6.3.redhat-00010.pom\","
echo "\"repo\":\"$(find hosted-*/io/vertx/vertx-core/3.6.3.redhat-00010/vertx-core-3.6.3.redhat-00010.pom -name vertx-core-3.6.3.redhat-00010.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/vertx/vertx-ext/34.0.0.redhat-00015/vertx-ext-34.0.0.redhat-00015.pom\","
echo "\"repo\":\"$(find hosted-*/io/vertx/vertx-ext/34.0.0.redhat-00015/vertx-ext-34.0.0.redhat-00015.pom -name vertx-ext-34.0.0.redhat-00015.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/vertx/vertx-ext/34.0.0.redhat-00016/vertx-ext-34.0.0.redhat-00016.pom\","
echo "\"repo\":\"$(find hosted-*/io/vertx/vertx-ext/34.0.0.redhat-00016/vertx-ext-34.0.0.redhat-00016.pom -name vertx-ext-34.0.0.redhat-00016.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/vertx/vertx-ext/34.0.0.redhat-00017/vertx-ext-34.0.0.redhat-00017.pom\","
echo "\"repo\":\"$(find hosted-*/io/vertx/vertx-ext/34.0.0.redhat-00017/vertx-ext-34.0.0.redhat-00017.pom -name vertx-ext-34.0.0.redhat-00017.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/vertx/vertx-ext-parent/34.0.0.redhat-00015/vertx-ext-parent-34.0.0.redhat-00015.pom\","
echo "\"repo\":\"$(find hosted-*/io/vertx/vertx-ext-parent/34.0.0.redhat-00015/vertx-ext-parent-34.0.0.redhat-00015.pom -name vertx-ext-parent-34.0.0.redhat-00015.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/vertx/vertx-ext-parent/34.0.0.redhat-00016/vertx-ext-parent-34.0.0.redhat-00016.pom\","
echo "\"repo\":\"$(find hosted-*/io/vertx/vertx-ext-parent/34.0.0.redhat-00016/vertx-ext-parent-34.0.0.redhat-00016.pom -name vertx-ext-parent-34.0.0.redhat-00016.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/vertx/vertx-ext-parent/34.0.0.redhat-00017/vertx-ext-parent-34.0.0.redhat-00017.pom\","
echo "\"repo\":\"$(find hosted-*/io/vertx/vertx-ext-parent/34.0.0.redhat-00017/vertx-ext-parent-34.0.0.redhat-00017.pom -name vertx-ext-parent-34.0.0.redhat-00017.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/vertx/vertx-health-check/3.6.3.redhat-00010/vertx-health-check-3.6.3.redhat-00010.jar\","
echo "\"repo\":\"$(find hosted-*/io/vertx/vertx-health-check/3.6.3.redhat-00010/vertx-health-check-3.6.3.redhat-00010.jar -name vertx-health-check-3.6.3.redhat-00010.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/vertx/vertx-health-check/3.6.3.redhat-00010/vertx-health-check-3.6.3.redhat-00010.pom\","
echo "\"repo\":\"$(find hosted-*/io/vertx/vertx-health-check/3.6.3.redhat-00010/vertx-health-check-3.6.3.redhat-00010.pom -name vertx-health-check-3.6.3.redhat-00010.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/vertx/vertx-micrometer-metrics/3.6.3.redhat-00010/vertx-micrometer-metrics-3.6.3.redhat-00010.jar\","
echo "\"repo\":\"$(find hosted-*/io/vertx/vertx-micrometer-metrics/3.6.3.redhat-00010/vertx-micrometer-metrics-3.6.3.redhat-00010.jar -name vertx-micrometer-metrics-3.6.3.redhat-00010.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/vertx/vertx-micrometer-metrics/3.6.3.redhat-00010/vertx-micrometer-metrics-3.6.3.redhat-00010.pom\","
echo "\"repo\":\"$(find hosted-*/io/vertx/vertx-micrometer-metrics/3.6.3.redhat-00010/vertx-micrometer-metrics-3.6.3.redhat-00010.pom -name vertx-micrometer-metrics-3.6.3.redhat-00010.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/vertx/vertx-mqtt/3.6.3.redhat-00010/vertx-mqtt-3.6.3.redhat-00010.jar\","
echo "\"repo\":\"$(find hosted-*/io/vertx/vertx-mqtt/3.6.3.redhat-00010/vertx-mqtt-3.6.3.redhat-00010.jar -name vertx-mqtt-3.6.3.redhat-00010.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/vertx/vertx-mqtt/3.6.3.redhat-00010/vertx-mqtt-3.6.3.redhat-00010.pom\","
echo "\"repo\":\"$(find hosted-*/io/vertx/vertx-mqtt/3.6.3.redhat-00010/vertx-mqtt-3.6.3.redhat-00010.pom -name vertx-mqtt-3.6.3.redhat-00010.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/vertx/vertx-parent/14.0.0.redhat-00015/vertx-parent-14.0.0.redhat-00015.pom\","
echo "\"repo\":\"$(find hosted-*/io/vertx/vertx-parent/14.0.0.redhat-00015/vertx-parent-14.0.0.redhat-00015.pom -name vertx-parent-14.0.0.redhat-00015.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/vertx/vertx-parent/14.0.0.redhat-00016/vertx-parent-14.0.0.redhat-00016.pom\","
echo "\"repo\":\"$(find hosted-*/io/vertx/vertx-parent/14.0.0.redhat-00016/vertx-parent-14.0.0.redhat-00016.pom -name vertx-parent-14.0.0.redhat-00016.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/vertx/vertx-parent/14.0.0.redhat-00017/vertx-parent-14.0.0.redhat-00017.pom\","
echo "\"repo\":\"$(find hosted-*/io/vertx/vertx-parent/14.0.0.redhat-00017/vertx-parent-14.0.0.redhat-00017.pom -name vertx-parent-14.0.0.redhat-00017.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/vertx/vertx-proton/3.6.3.redhat-00010/vertx-proton-3.6.3.redhat-00010.jar\","
echo "\"repo\":\"$(find hosted-*/io/vertx/vertx-proton/3.6.3.redhat-00010/vertx-proton-3.6.3.redhat-00010.jar -name vertx-proton-3.6.3.redhat-00010.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/vertx/vertx-proton/3.6.3.redhat-00010/vertx-proton-3.6.3.redhat-00010.pom\","
echo "\"repo\":\"$(find hosted-*/io/vertx/vertx-proton/3.6.3.redhat-00010/vertx-proton-3.6.3.redhat-00010.pom -name vertx-proton-3.6.3.redhat-00010.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/vertx/vertx-unit/3.6.3.redhat-00010/vertx-unit-3.6.3.redhat-00010.jar\","
echo "\"repo\":\"$(find hosted-*/io/vertx/vertx-unit/3.6.3.redhat-00010/vertx-unit-3.6.3.redhat-00010.jar -name vertx-unit-3.6.3.redhat-00010.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/vertx/vertx-unit/3.6.3.redhat-00010/vertx-unit-3.6.3.redhat-00010.pom\","
echo "\"repo\":\"$(find hosted-*/io/vertx/vertx-unit/3.6.3.redhat-00010/vertx-unit-3.6.3.redhat-00010.pom -name vertx-unit-3.6.3.redhat-00010.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/vertx/vertx-web/3.6.3.redhat-00010/vertx-web-3.6.3.redhat-00010.jar\","
echo "\"repo\":\"$(find hosted-*/io/vertx/vertx-web/3.6.3.redhat-00010/vertx-web-3.6.3.redhat-00010.jar -name vertx-web-3.6.3.redhat-00010.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/vertx/vertx-web/3.6.3.redhat-00010/vertx-web-3.6.3.redhat-00010.pom\","
echo "\"repo\":\"$(find hosted-*/io/vertx/vertx-web/3.6.3.redhat-00010/vertx-web-3.6.3.redhat-00010.pom -name vertx-web-3.6.3.redhat-00010.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/vertx/vertx-web-common/3.6.3.redhat-00010/vertx-web-common-3.6.3.redhat-00010.jar\","
echo "\"repo\":\"$(find hosted-*/io/vertx/vertx-web-common/3.6.3.redhat-00010/vertx-web-common-3.6.3.redhat-00010.jar -name vertx-web-common-3.6.3.redhat-00010.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/vertx/vertx-web-common/3.6.3.redhat-00010/vertx-web-common-3.6.3.redhat-00010.pom\","
echo "\"repo\":\"$(find hosted-*/io/vertx/vertx-web-common/3.6.3.redhat-00010/vertx-web-common-3.6.3.redhat-00010.pom -name vertx-web-common-3.6.3.redhat-00010.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/io/vertx/vertx-web-parent/3.6.3.redhat-00010/vertx-web-parent-3.6.3.redhat-00010.pom\","
echo "\"repo\":\"$(find hosted-*/io/vertx/vertx-web-parent/3.6.3.redhat-00010/vertx-web-parent-3.6.3.redhat-00010.pom -name vertx-web-parent-3.6.3.redhat-00010.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/qpid/proton-j/0.31.0.redhat-00001/proton-j-0.31.0.redhat-00001.jar\","
echo "\"repo\":\"$(find hosted-*/org/apache/qpid/proton-j/0.31.0.redhat-00001/proton-j-0.31.0.redhat-00001.jar -name proton-j-0.31.0.redhat-00001.jar| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/qpid/proton-j/0.31.0.redhat-00001/proton-j-0.31.0.redhat-00001.pom\","
echo "\"repo\":\"$(find hosted-*/org/apache/qpid/proton-j/0.31.0.redhat-00001/proton-j-0.31.0.redhat-00001.pom -name proton-j-0.31.0.redhat-00001.pom| head -n 1)\""
echo "}",
echo "{"
echo "\"path\":\"/org/apache/qpid/proton-j-parent/0.31.0.redhat-00001/proton-j-parent-0.31.0.redhat-00001.pom\","
echo "\"repo\":\"$(find hosted-*/org/apache/qpid/proton-j-parent/0.31.0.redhat-00001/proton-j-parent-0.31.0.redhat-00001.pom -name proton-j-parent-0.31.0.redhat-00001.pom| head -n 1)\""
echo "}",
echo "]"
