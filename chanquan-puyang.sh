#!/bin/bash
################################################################################
#          FILE: chanquan.sh
#         USAGE:
#   DESCRIPTION:
#       OPTIONS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: niuzhiqiang, niuzhiqiang90@foxmail.com
#  ORGANIZATION:
#       CREATED: Tue 21 Aug 2018 08:23:39 PM CST
#      REVISION: 1.0.0
################################################################################
declare -r collections_names="puyang.app.auditLog \
        puyang.app.bid \
        puyang.app.certificate \
        puyang.app.demand \
        puyang.app.enrollment \
        puyang.app.intentionProject \
        puyang.app.land \
        puyang.app.landStatistics \
        puyang.app.news \
        puyang.app.phyAsset \
        puyang.app.process \
        puyang.app.project \
        puyang.app.projectDoc \
        puyang.app.publishment \
        puyang.app.qa \
        puyang.app.quoting \
        puyang.app.task \
        puyang.app.transaction \
        puyang.app.transferee \
        puyang.bid.tender \
        puyang.da.plant \
        puyang.mgt.mortgage \
        puyang.mgt.mortgageConfig \
        puyang.sys.admin \
        puyang.sys.assetType \
        puyang.sys.assignment \
        puyang.sys.department \
        puyang.sys.floatAd \
        puyang.sys.landIndex \
        puyang.sys.landType \
        puyang.sys.marketData \
        puyang.sys.msgTemplate \
        puyang.sys.organization \
        puyang.sys.partner \
        puyang.sys.portal \
        puyang.sys.procfg \
        puyang.sys.sequence \
        puyang.sys.staff \
        puyang.sys.template \
        puyang.sys.tenant \
        puyang.sys.tip \
        puyang.sys.tnews \
        puyang.sys.tproject \
        puyang.sys.tradeCenter \
        puyang.sys.user 
    "

for collections_name in $collections_names; do
    echo $collections_name
     #/home/chanquan/opt/mongodb-3.2.0/bin/mongoexport -d chanquan -c $collections_name -o /home/chanquan/tmp/puyang/$collections_name
    /home/wangwz/software/mongodb-linux-x86_64-ubuntu1604-3.2.13-20-gcd49568/bin/mongoimport -d chanquan -c $collections_name --drop /home/wangwz/Downloads/puyang/$collections_name
done
