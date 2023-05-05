Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BEDB56F89CC
	for <lists+linux-man@lfdr.de>; Fri,  5 May 2023 21:49:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232168AbjEETtZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 May 2023 15:49:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232137AbjEETtY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 May 2023 15:49:24 -0400
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com [205.220.165.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57B13E0
        for <linux-man@vger.kernel.org>; Fri,  5 May 2023 12:49:23 -0700 (PDT)
Received: from pps.filterd (m0333521.ppops.net [127.0.0.1])
        by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 345Hh6LF027907;
        Fri, 5 May 2023 19:49:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : to : cc :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=corp-2023-03-30;
 bh=nabRMOYXbxifeAUHIzPylCkae1tDhzOFlYPud5UIfhk=;
 b=eKZWtGtNUVH6C+SAQZkf2pebglQZ32oWGEA3rOOc0QAAraEumz51wpf3SoDeGuMv14OA
 T9yrWIpasOxma9pd87gSe3lKghnfPpOihgigKaS2UZDTekuWx1nDCcHsfRfvZ7sNRWut
 lK1AMn96FiJ5vnmgLpvPvSlI+vWsul11FB/QokxHFn1qGqeRrdWUJa7Jh+H35dKNH4cT
 LHNNa97q5x24ZXvygBQGlBGpUd7jXrBXYKPuOxJdaRAemtbO02nbzIZM1mR4NWTPhk0E
 1XwsKEps4Ce45YCfO32tDx1YNydU2c/Kx8AZuqp0CX5i95CvZg7Z/JBifgi1f9d1w2OO wA== 
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
        by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3q8t5fwnvc-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Fri, 05 May 2023 19:49:14 +0000
Received: from pps.filterd (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
        by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 345Jd9BG040511;
        Fri, 5 May 2023 19:49:12 GMT
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2102.outbound.protection.outlook.com [104.47.70.102])
        by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3q8spab7ta-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Fri, 05 May 2023 19:49:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aihBOU1/BiZMWMtHyCdTFj6nfO6cB8GmYJRjoXSfyj8Es07BEJ4w7DoFqOofglbOe7gOHvYES/s0Je0jtp2Sa9ZkqtrAPJT2JeV2kaWd9l59XweYCtTWSUTvbhBYgm1qGExaDOp1WBThs4IN/JvPqmw1sRoDdHFlkBCNQP7JER5GGtZDyDaaQ56vR3FENX+srYcAI2GrAcb/IcpVegFMJ1TOUO/30JcVzr82pIjYL8lf85wOgcQEXYSJtCW2zxtGYvIkSVJbP1hyP0Yhv1iEJU5WssQ0i9EYPfAZm7bsQOOFqNmyrPoZOSPBfmC6rA3nW9cqV3TJgSdUWezP5ABKTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nabRMOYXbxifeAUHIzPylCkae1tDhzOFlYPud5UIfhk=;
 b=FVNBHCvJvKW/OR8+c4st41ZFepThqXklG8S6wY/3ehCjwgJsgDUbEnNQj4GdHdaXiHDZJKC92pYBnYULCzGTGTEDMFGR5WURH/F8wqnpEi40bLwAIW9NoAG4CoRoqwam2zd41sCKwtouT/VwHtmSPKM3Hu8SVUOXTPY7K4P6MJAYw4fboUH0koTwMHal4irJlpMf28FH01DEPmD/98PjvMcCLEOU+eRwmTpJvWUGosHw/IU75YkUnhtSuzC1USUDkUGI+gGtuANni87rtXzf86pj6z1tOAiu0k9kI1RVsHnzFYXEk0akL2ZXcf/Fq3nDJehq8HMG/OixwTZLQCHS/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nabRMOYXbxifeAUHIzPylCkae1tDhzOFlYPud5UIfhk=;
 b=BrFbRN3v25bL8MMXOgP2EpCZNI89V1l65ir6yDLyTmamYwDiByDnrW1dmAldampLhXQsiu5yt32VNFYBqFThqFc93EoxvxkOFHyx4dx1v1mi+wM964X50EmiV8X0jfFxfcvzcfgJ3fKOOrU+iijwMGNHnvhSEvzqWOLvLg1c/0g=
Received: from BY5PR10MB4196.namprd10.prod.outlook.com (2603:10b6:a03:20d::23)
 by IA0PR10MB6723.namprd10.prod.outlook.com (2603:10b6:208:43f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.27; Fri, 5 May
 2023 19:49:10 +0000
Received: from BY5PR10MB4196.namprd10.prod.outlook.com
 ([fe80::ffb:de39:b76b:52eb]) by BY5PR10MB4196.namprd10.prod.outlook.com
 ([fe80::ffb:de39:b76b:52eb%3]) with mapi id 15.20.6363.027; Fri, 5 May 2023
 19:49:10 +0000
From:   Mike Kravetz <mike.kravetz@oracle.com>
To:     linux-man@vger.kernel.org, linux-mm@kvack.org,
        Alejandro Colomar <alx@kernel.org>
Cc:     Michal Hocko <mhocko@suse.com>, Vlastimil Babka <vbabka@suse.cz>,
        Lorenzo Stoakes <lstoakes@gmail.com>,
        Mike Kravetz <mike.kravetz@oracle.com>
Subject: [PATCH] mbind.2: Clarify MPOL_MF_MOVE with MPOL_INTERLEAVE policy
Date:   Fri,  5 May 2023 12:48:58 -0700
Message-Id: <20230505194858.23539-1-mike.kravetz@oracle.com>
X-Mailer: git-send-email 2.40.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR04CA0243.namprd04.prod.outlook.com
 (2603:10b6:303:88::8) To BY5PR10MB4196.namprd10.prod.outlook.com
 (2603:10b6:a03:20d::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR10MB4196:EE_|IA0PR10MB6723:EE_
X-MS-Office365-Filtering-Correlation-Id: f83c030b-cdce-4fcb-5d5d-08db4da1cb36
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wYldxzZXyz7UkxYv5MBV/QHep9ydonxEN/2U283hyqUM8gleBqBOhPvtpXvtuWQBibDKsTELH5ZMVDLplDIcCpqcXzGH4azwfz8A0soSUJxX4RoxlRjM8Vkmuqb5ERXmoBa3cHHsAbCFufZQ5l1QCguBAhDHRzaFU97ZcNdCoGqwciltow1jhM5OIjl3XrMRiISuRw/hJPye4DDf8jZ1ix6G4lnjliR9Z4EN3MmLKr/4/WuRIpH4n3HWB0z3s/b3nldG7HLCmXdJEGqyIhKeitIQGCOoLP5xKZ1P17Jp7YmmvDsSiYzD+Zdz+Iz81Sbgqabj1YGgzauExm8faeOiH4iIjr+XOjG0iRZpNRZBrflvOhp+VhPUiEO7G83EzXdXeVufxBuQwsv6esi+p5KNFwVWIvY/JQ9QQOb2EoK+ipVicdMjVr/svfWXTTah1HKnZ/FYv2F0nlpCDWOHZRYU2dzvk+3pOfFgL3lLle7Zg6fNLXQurkAknaCWIvncV2VejxPj3UPJFkRPsiMO+ek+dHjnwhmp63BnZmFUfn4dXtU=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR10MB4196.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(346002)(396003)(136003)(366004)(376002)(39860400002)(451199021)(36756003)(6666004)(86362001)(966005)(316002)(54906003)(4326008)(66556008)(6916009)(478600001)(66946007)(66476007)(6486002)(8676002)(5660300002)(8936002)(2906002)(44832011)(41300700001)(38100700002)(186003)(107886003)(26005)(6506007)(6512007)(1076003)(2616005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8NxakCrCnBHQE5EFW+K/9qOO2EAso0ogt+FISkD2zMddE9lHYoY3zgq06kEP?=
 =?us-ascii?Q?98u6pZe2N7PAGt6VjI5EErU551wAcmf6FTS/FppAlrLMTm3gbSQkYsIXFEUI?=
 =?us-ascii?Q?UcItpaypK25pH7dyFnoP/2lsJ8HUgkikEnTFoi5zvigHrtoa9svhZt7kWd4u?=
 =?us-ascii?Q?Tjmo6rAn5MW38+2tiDY5iBlA3nGicD/M4wJmgG8sB2U1FjEIwn72QwHwO7nS?=
 =?us-ascii?Q?KT/kMl2nb4SeQZ7n2sDzXJB7b5fJEEoz20+5HhQEQmZGDPfAuAEuYVkkXlWn?=
 =?us-ascii?Q?WZHXAXrirvwZeCwA198tgznrort7VBBT+MqJ6sP+gT6kfK56nV5tFWCAoV7Z?=
 =?us-ascii?Q?rMksXboMdogldZaEyID6T0GJA213QX2etAlZT8mKPXaUv2JeW9BcPpsYuO3X?=
 =?us-ascii?Q?Pe+GeLyYV+unMfgrEyz89s84gmNSt84IYvhkX0+ccArI+OPmyQE4uxeP2Rkt?=
 =?us-ascii?Q?oAegjbDQhva2h56xBfHPiNRkmKLHM6doY3x/vVyierAAXUqrZkfbelglAdfR?=
 =?us-ascii?Q?jJu81aSHviAAE74klg+4ux0LzxbOJM00siImCCbj4SXE2tQh/ihO0N8EIk90?=
 =?us-ascii?Q?MbVioySXk2mHG85EmlG+DkocnhUYS5xRD/+0ZCvqgp40jb96s9vNZg4niHCQ?=
 =?us-ascii?Q?H9WGtx3B5x9DK1G9lx7I1c744qKuhevK2+hv4N2feo7vzNE0LMF7asyRr6/5?=
 =?us-ascii?Q?F4mxZi5BZT+MFgJIDOMyPJn++TO30aLke5omvt0kwlzXq8Xx4SHQ8ePfQdHy?=
 =?us-ascii?Q?qG++mRvxly6SHcJNcf7evkQUEoGDNRPokpJs+OvAVnQOgWQ9qNZrnX+eujgs?=
 =?us-ascii?Q?YnXh6tFAhlXX6sH9zJATofYcelPwOR0sx5RUH1YXi7ii/yGaBzG9jQ4Hxgs+?=
 =?us-ascii?Q?hQc46WSkz9lzn0X7eyyfH+XgSeoYOCQZaj2WAy3FOKxAlyc4atczzqJPH34Z?=
 =?us-ascii?Q?rN3P48VpwcvBL06IeILg9KT2mOjnsUAU4YVQOf58YMFJXFhIX6AdHRx1YSVM?=
 =?us-ascii?Q?BqwlwtY6lGIY8iWO+Ws0TK9LEfSaSYiuWiVH6L9a6IuY98K7uefwvHdNSJVH?=
 =?us-ascii?Q?SeXi1Y1nmUHkanZupAlEZmlHsqsuwsZ1CBM7v19ooq5eGp2I9q+pXllE0dYV?=
 =?us-ascii?Q?SX1jfGqcT+RJKbdT1lpunJnUbeDoRHc/J7V4m5Lpl/Oty3DN6BDCKlYC82bz?=
 =?us-ascii?Q?WDY7uJ0QaSNJ6xIpbU0Bfl/TUfXw54ctXFJf+nC83OpV2idPgab5Uf+3xzFU?=
 =?us-ascii?Q?zG32PLVZ/i2EIykbnfuz1rKotPSbvC81W0Ao8vWO1lBishWsLT08gxojx19P?=
 =?us-ascii?Q?qWEn//sZuVNhKvJmNwos0iniyojZRSBFvXqly5EIckhXtQEj9ZzL50C4G3RV?=
 =?us-ascii?Q?wlzWgHWfIaW+YlxFj9II6jNHLsUNjzEpIdg20vkVLvsfIUvw3KSvw9R9DeoQ?=
 =?us-ascii?Q?/hcVbYoORXwuykL8uKNGP85Mj3ngdzNM0+WkIzI3+SFhP5zTeMxkGclXNzJa?=
 =?us-ascii?Q?TJoyZWKZKANXinziwtLmgsFYlWqHpHxjL9tyOtOWUJrgoFo9ODVJe+vqrnI3?=
 =?us-ascii?Q?HxQ1hschV7zBoNGdX7l0JednIv1D9be+OwR5x0ch?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: AFI2rbt20RBuF1iUmaR3uuiRYoRtI9fA+arx5loojjQPjPxEHuhxtaDotghv2t1NW8oGPutp+AQmYySQpGhyIwF83mAgCW0V5YySGvmu8evNi+Di4Oa5wxY1woKl7TQZkfYW//nUVBVsgYYreLagjQ9oLdYFkwRMQag+BnV+z3pk04iSD38+O2CCCaDyRB3bswNf/4ykP7URyqQx5wBkm77jlSM+Z/DUZn/GvE8nklNsJz37r2BpnJI1i5GC7Lcz6rTznu+qLUBL2Eipqs+/qw5R//xg7Z9xiQiDFlBAjW5+4yrtyVBr66Xb3k/uPjbEfGsm7KToDKAdgtjM+uIwik2HmwEBqCQp8K3ryLsaNi6neHG+hgn0j8BTTX48XkeOkzegJLJtM702iPFy2dHZaeaH19ullYIdmgWh25inV231vwxwH8iCc0wvw2GLcZ+2Q0GMfQBmEt/rZfJmoHrdm5ySHoFoLP9i02r8Z7O16lhTOV6kJxvuPZChFQ3zm1R4lNfnxbIjI3S9kRlpOEA79OtmNiXllrz76L1Q6KpRfCeAqG+6ixgXdbjKXHc1lHMNjns26h6xVvAKEtqlcAb4cCOVIdGr++tZdP8fzi8iOBZZ7o7/ke7A744POGymqGXfCRUt7Axv4T4YlJ23NA5VwbfFnFS+Labb5Cn9mgOWyrfF8M6zVox1hR23o/HeVsmZpxwXq0c9sl1QrnDwn1dy11a254Yj5GC/bLCULxgmS2FixMMq+1sXx7pyqgrUrHjrYq17o1ApXEhFHqsj1g/cfEkFYAKK5Aid8C6P+CE+azo0foporFJisA5auNgIKSUfxGXImd3M5JRDHlEsFciQOhC6JEqHh6DjHeGMcGRfa8sOPs+A9QFA1uH+AHAraY9D
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f83c030b-cdce-4fcb-5d5d-08db4da1cb36
X-MS-Exchange-CrossTenant-AuthSource: BY5PR10MB4196.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2023 19:49:09.9697
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Rmau1VwocXOK1HJn1hSbvTByle7Vg/tvjz88srrsU+n6VeZykNWh9CE170PMLDK34GGhfdm+EhrSZ0EEGGPbJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR10MB6723
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-05_26,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 mlxlogscore=999
 phishscore=0 bulkscore=0 suspectscore=0 mlxscore=0 spamscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2305050162
X-Proofpoint-GUID: LuF-J2TDtZPwzikmDKVzO-imgnN9oV1L
X-Proofpoint-ORIG-GUID: LuF-J2TDtZPwzikmDKVzO-imgnN9oV1L
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

There was user confusion about specifying MPOL_MF_MOVE* with
MPOL_INTERLEAVE policy [1].  Add clarification.

[1] https://lore.kernel.org/linux-mm/20230501185836.GA85110@monkey/

Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>
---
 man2/mbind.2 | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/man2/mbind.2 b/man2/mbind.2
index d540bbe23..e4a187106 100644
--- a/man2/mbind.2
+++ b/man2/mbind.2
@@ -311,6 +311,10 @@ If
 is also specified, then the call fails with the error
 .B EIO
 if some pages could not be moved.
+If the
+.B MPOL_INTERLEAVE
+policy was specified, pages already residing on the specified
+nodes will not be moved such that they are interleaved.
 .PP
 If
 .B MPOL_MF_MOVE_ALL
@@ -326,6 +330,10 @@ If
 is also specified, then the call fails with the error
 .B EIO
 if some pages could not be moved.
+If the
+.B MPOL_INTERLEAVE
+policy was specified, pages already residing on the specified
+nodes will not be moved such that they are interleaved.
 .\" ---------------------------------------------------------------
 .SH RETURN VALUE
 On success,
-- 
2.40.0

