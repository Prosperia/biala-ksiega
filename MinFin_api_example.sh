#! /bin/sh
#==========================================================
#
#	Ministerstwo Finansów RP - Biala Ksiega api example
#	M.Kotas		%20200120T1824%
#
# "https://wl-api.mf.gov.pl/api/search/nip/NIP?date=YYYY-MM-DD"
#==========================================================
NOW=`date +%s`;
DATE=`date +%Y-%m-%d`;
OutFILE=`echo "obase=16;ibase=10; $NOW" | bc`;
URI="https://wl-api.mf.gov.pl/api/search/nip/5260250274?date=$DATE";
#--------------------
clear;
echo $DATE;
#
curl -k -X GET $URI -H "cache-control: no-cache" -H "Content-Type: application/json" > $OutFILE-$DATE.json;
#
#
#######
exit 0;


