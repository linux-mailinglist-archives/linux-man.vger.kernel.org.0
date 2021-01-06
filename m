Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E56602EB9AA
	for <lists+linux-man@lfdr.de>; Wed,  6 Jan 2021 06:53:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725944AbhAFFxb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 6 Jan 2021 00:53:31 -0500
Received: from mail-dm6nam11on2064.outbound.protection.outlook.com ([40.107.223.64]:2625
        "EHLO NAM11-DM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1725896AbhAFFxa (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 6 Jan 2021 00:53:30 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YVSLoTgh+59VT/iSR//nJmsuzzcfQ/GK8TJSfKgAxV/YXNCMGGNQoeI+vMHKuh8Rz6258PbWhZSyPZjpiHKIrwOKukpLn7T8tipK95MlkSHK8B3HsDoYc/K44g4EGA/ju2MmghtF5ZlpmOBdYQTVMWVEMsvEG9f7zKTM3dvHO3dx1z17OZPl3ZI2uEazSpYnPWGm9vSKRWzKVXxKLQspXdyJs/oTLnvbvi3tk0P6BeyHfW6FquoMPcP41pG4qQ4iKRygKExomjBAgAyTKvbAB2+s6OIGIKkwSqXeykgUMk0Gesw1QzxsRJ6ZyOyVDJ6plgCsv/Zu/+bKJYaJFP7/aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HeFPm4zuMHwTRR8EDpcx8XDFw/i6fcP4zb5rLch4fZM=;
 b=kRdFlXYfeK4HEHl82bibXL1GZhgTkVpxdKIa6v+9WyztUZkhFxaR3444fjfdexHCmfMrbt4r9r3ccL9z/rJVRLCfCVLzTmHp4lMmyrhipSl7sDgwepArhPyFf3VKCjBSIdwWwianGQrKjkZhJAPG93kJdSSPCqYXnG1vCVQaZNEYLbuYPhNheCUMsIVb533jkVNwHOZgOgB0MHhGrfix/zPYMFQ9v6V2D+qVa7LNAFh08jjlHsmUifh0Vs1+wcez0w9Tc5cVUDKiGX8KPvDSTwdIe+SDB0dl74x7hL6ZhMlS/sxMpH43dJaosxZsS2WkCPsqWPD8odc4JAvDCMc1YA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dovetail-automata.com; dmarc=pass action=none
 header.from=zultron.com; dkim=pass header.d=zultron.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dovetailautomata.onmicrosoft.com;
 s=selector2-dovetailautomata-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HeFPm4zuMHwTRR8EDpcx8XDFw/i6fcP4zb5rLch4fZM=;
 b=pebrM+evnfdJNz6q2VyfXDkoBhTPlOzXdQh9w5Fr4RmugtFU6BdLEfUQKMv3iNiDyPtm4nGCn2dWPaBMW0bO+L+NYOwqWrgsC8CuzhtYm8uzBRvI/X7EpHj6SoC0AwizcvCJGj4oat00GEh+n/wnrIsFgG8T7JUtkB/pImjS2ck=
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=zultron.com;
Received: from BYAPR12MB3589.namprd12.prod.outlook.com (2603:10b6:a03:df::29)
 by BYAPR12MB4791.namprd12.prod.outlook.com (2603:10b6:a03:10a::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3721.23; Wed, 6 Jan
 2021 05:52:35 +0000
Received: from BYAPR12MB3589.namprd12.prod.outlook.com
 ([fe80::744c:cc68:9667:7593]) by BYAPR12MB3589.namprd12.prod.outlook.com
 ([fe80::744c:cc68:9667:7593%6]) with mapi id 15.20.3721.024; Wed, 6 Jan 2021
 05:52:35 +0000
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
From:   John Morris <john@zultron.com>
Subject: [patch] resolv.conf.5: tfix
Message-ID: <a016d1d9-2905-3e0b-f1a5-0b40a0115cc3@zultron.com>
Date:   Tue, 5 Jan 2021 23:52:33 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
Content-Type: multipart/mixed;
 boundary="------------A06A857560D79C74F23A9630"
Content-Language: en-US
X-Originating-IP: [2605:a601:ab40:4005:321:9b4f:43ff:7493]
X-ClientProxiedBy: DM6PR13CA0046.namprd13.prod.outlook.com
 (2603:10b6:5:134::23) To BYAPR12MB3589.namprd12.prod.outlook.com
 (2603:10b6:a03:df::29)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2605:a601:ab40:4005:321:9b4f:43ff:7493] (2605:a601:ab40:4005:321:9b4f:43ff:7493) by DM6PR13CA0046.namprd13.prod.outlook.com (2603:10b6:5:134::23) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.2 via Frontend Transport; Wed, 6 Jan 2021 05:52:35 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e24f9cf3-fc26-439a-3760-08d8b207449b
X-MS-TrafficTypeDiagnostic: BYAPR12MB4791:
X-Microsoft-Antispam-PRVS: <BYAPR12MB4791DF2E6A12C7B1570DD3E985D00@BYAPR12MB4791.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UorOviEKnDX2+KyVcDyb+k238n2y63gDdFGq5GMZdfSHRqW1mVWR0RAuR+JUs5H+wF7a/t3ctMfssRIpteOIEAGKXiD5EXhPvrItmMVpLqO91u81KIGVHknQ9xIk/oXHbWK2mFMYlcJ+9qkL7HCZsx2DNIkZ2sO1knpoalTSOcWZwNrffzQQDL56/SUF52w3IFk7ydXAI2uvnVXSh8owQi2C5rqPioSm2+a93KBtGIcaDBluOC7iglILFmOFcHl+ePsUz4ojBIyqT5fR/BGGYQc2TG5BDzdxyek6yFp1P/PhlADr88oL5pLkQluTLiNH0VVmqTrrs1YphtiltisVRO1czmKmO5QFixGCHWBDsgfYtUk/Zz2RBv74yt3Ex6aLzk3oqXxi+GrlCQHVl4CgJA4cfgEbtJnZ+Xbduzn7jiLPhxrSxQJeOwhAKhMrp9hHw3zJZrtr3aHLlDaHm4v8anB93g19p5+JUnzXk+M1o3c=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR12MB3589.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(39830400003)(366004)(396003)(376002)(346002)(136003)(2906002)(235185007)(16526019)(186003)(8936002)(36756003)(110136005)(5660300002)(66476007)(33964004)(42882007)(53546011)(31696002)(6486002)(316002)(8676002)(31686004)(66946007)(83380400001)(66574015)(83170400001)(2616005)(66556008)(66616009)(478600001)(52116002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?Q2dQNkE5QW40U0hFQSswM0orMHplWndNL3NtZ3dhM1pkd2RKaExPRUpPKzNo?=
 =?utf-8?B?VnhtK1JtU2Rzc0pGcTF2ekVrQWNmcytjNXc3dmdTMTM0UUlkVFlhUUlGeExQ?=
 =?utf-8?B?QUdhNG9RSFRDaXZvRHljT0sxZnFyd0JzTTBZTEViWEdnaXVwQWZ1SER4M21k?=
 =?utf-8?B?MXlHdElEUmtwRWkvaFU1NUR5WStBUStkVWF1Y01mUHBwdmxzVDd4OFY4alN5?=
 =?utf-8?B?bi9KNXV1QkhTOXQyVS8reXlzOENJTTFZSHUxbzF5NVR4eHQvVlhwTnlRS01l?=
 =?utf-8?B?aTIxQlBmWnZOWHlKQi8yaDlFa1pRam0zU0UzSkxEVVVYUXBXSUZIR3NSaXBS?=
 =?utf-8?B?MVQ2b3pSU3FRcU1jaFlZa1dOMHM1c2lxQmNmdE5YL2NoZWhSaXRrQ3haQ0w3?=
 =?utf-8?B?WmtTYjZvVkFOMDhmendha3F2d1czbzBrYTVhZkhnSEdWNjRFRVVIYnJOeEhW?=
 =?utf-8?B?Y1JlUlpWRFVYTmh0dkRXNzExQWF0ZHZLU3NuTXBmZi9xdzhCSG1mRkV1bEdF?=
 =?utf-8?B?aHUvOHJlZU50L295V1c3Skl6SC9iTCtXcW5Zb0JsQ2FlYk5MaGtQNy9lZEJj?=
 =?utf-8?B?UFkyVW1WWXVXZ1ZOYlF3MlNETFR0QkZHRDRyZHRNN3VaZkZ4RjVEd3NLcWlH?=
 =?utf-8?B?eEMvdUszT3JQM0cycU5sR0dhLy9VUlpWam02YjRkM2F1a01CN1RQd1hibXR1?=
 =?utf-8?B?OTI3NW9RWURVWEc4ZUUzZUIyOHJGc2NycDdxd2RiM1UxTGdXdVM2RGhaWlVT?=
 =?utf-8?B?MVJvaENjQThReFBXTjhQSjRiZFlYdUV5UkpjelpCUjAzWTR5LzlBby9JK0tv?=
 =?utf-8?B?ZHp6NGJNN2V0VEZmdnI5eHNqMnIvYkQwZDZPN0ZGR1pJWUlwQXpKMVF6U1dN?=
 =?utf-8?B?WlBONWZzcG1aK0FseEtneUVXejZJRVlyVk9pUjhSRHg4YlNEOFhwWFJRS040?=
 =?utf-8?B?Y085cjBxOStvSmo0blhXSFlBL2JuSUxNc3VoeFNMNUJBWjZVblREdWxoN2U1?=
 =?utf-8?B?SW5NbzNpK3BhZ0F3cDBLQ1RnWEJSRnJ2b0pYMHZmT2haTzNtbFlnbEZMUVlP?=
 =?utf-8?B?STdhMEQycW5BNnJOOXdTaUhyV1RmdjR5bHZZZlQ2SHpGbnlROE8yUEEwN2Zv?=
 =?utf-8?B?S0Evbm5PMUtZcTJVVDAxdHZlZ0hBd1JZVXBQWERwYXFXS01kUVlxS29IWnVk?=
 =?utf-8?B?cDZSNGRuKzgyRVNSMXRUM21kVkQ3dHBjWG13OStzc3J5Rlk1TWozM09hYkZl?=
 =?utf-8?B?ZDNubllFVHZGb015dXMxeTdjNzF1RndOMTR4QVJIVlJJNGtTekNzS01FM2V0?=
 =?utf-8?B?SWprbEozaUlkQ2FocnlENWJtbmtTVzIzd3pVaEJ0KzJqMW9xSkZjQmZQMGgz?=
 =?utf-8?B?eThXQkRsdjV4RFhFdVZxNHNIMW1BbGJ3YUhOT0VHM2krbnZkZVRwamF5akxT?=
 =?utf-8?Q?omA9HDp7?=
X-OriginatorOrg: zultron.com
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB3589.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2021 05:52:35.7024
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 1ec155af-ed9d-4878-92e8-f864588a984c
X-MS-Exchange-CrossTenant-Network-Message-Id: e24f9cf3-fc26-439a-3760-08d8b207449b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wS6VjIXipgWz10ffftP0Uq2jcWmsw+ra6T/ab/dutmbqqwtmEr71eDXMV+aWILm2AoYJkl1DfumTiyDNSK1YFCNwsHhq5ZeBtkGdlLsdm4c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB4791
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--------------A06A857560D79C74F23A9630
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

 From 20b6c1a6cfe2d2a3b199bf1e869db256355bbeb1 Mon Sep 17 00:00:00 2001
From: John Morris <john@zultron.com>
Date: Tue, 5 Jan 2021 23:30:10 -0600
Subject: [PATCH] resolv.conf.5:  tfix

Change `RES_USE_EDNSO` to `RES_USE_EDNS0`, defined in
`resolv.h`.  (This is written correctly in `man3/resolver.3` in this
same repo.)  Helps with grepping and internet searches!

Signed-off-by: John Morris <john@zultron.com>
---
  man5/resolv.conf.5 | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man5/resolv.conf.5 b/man5/resolv.conf.5
index c1b3d017a..8ed958932 100644
--- a/man5/resolv.conf.5
+++ b/man5/resolv.conf.5
@@ -264,7 +264,7 @@ these options were removed in glibc 2.25.
  .TP
  .BR edns0 " (since glibc 2.6)"
  Sets
-.BR RES_USE_EDNSO
+.BR RES_USE_EDNS0
  in
  .IR _res.options .
  This enables support for the DNS extensions described in RFC\ 2671.
-- 
2.25.1


--------------A06A857560D79C74F23A9630
Content-Type: text/x-patch; charset=UTF-8;
 name="0001-resolv.conf.5-tfix.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="0001-resolv.conf.5-tfix.patch"

From 20b6c1a6cfe2d2a3b199bf1e869db256355bbeb1 Mon Sep 17 00:00:00 2001
From: John Morris <john@zultron.com>
Date: Tue, 5 Jan 2021 23:30:10 -0600
Subject: [PATCH] resolv.conf.5:  tfix

Change `RES_USE_EDNSO` to `RES_USE_EDNS0`, defined in
`resolv.h`.  (This is written correctly in `man3/resolver.3` in this
same repo.)  Helps with grepping and internet searches!

Signed-off-by: John Morris <john@zultron.com>
---
 man5/resolv.conf.5 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man5/resolv.conf.5 b/man5/resolv.conf.5
index c1b3d017a..8ed958932 100644
--- a/man5/resolv.conf.5
+++ b/man5/resolv.conf.5
@@ -264,7 +264,7 @@ these options were removed in glibc 2.25.
 .TP
 .BR edns0 " (since glibc 2.6)"
 Sets
-.BR RES_USE_EDNSO
+.BR RES_USE_EDNS0
 in
 .IR _res.options .
 This enables support for the DNS extensions described in RFC\ 2671.
-- 
2.25.1


--------------A06A857560D79C74F23A9630--
