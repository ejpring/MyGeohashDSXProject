#!/bin/bash

directory=whois.ibm.com_json_$( date '+%Y-%m-%d' )

[[ -d $directory ]] || mkdir -p $directory || die 'sorry, could not create directory $directory'

#curl 'http://whois.ibm.com:8080/whois/search.json?inverse-attribute=org&type-filter=inetnum&query-string=ORG-IBM1-IGA' > $directory/ibm.inetnum.json
#curl 'http://whois.ibm.com:8080/whois/search.json?inverse-attribute=org&type-filter=inet6num&query-string=ORG-IBM1-IGA' > $directory/ibm.inet6num.json
curl 'http://whois.ibm.com:8080/whois/search.json?inverse-attribute=org&type-filter=domain&query-string=ORG-IBM1-IGA' > $directory/ibm.domain.json

exit 0
