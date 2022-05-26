Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D8E8D535324
	for <lists+linux-man@lfdr.de>; Thu, 26 May 2022 20:10:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237762AbiEZSKQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 May 2022 14:10:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233754AbiEZSKP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 May 2022 14:10:15 -0400
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com [205.220.165.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C44F6AF338
        for <linux-man@vger.kernel.org>; Thu, 26 May 2022 11:10:13 -0700 (PDT)
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
        by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 24QHNGBk021674;
        Thu, 26 May 2022 18:10:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : to : cc :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=corp-2021-07-09;
 bh=LglZHn96QLVw71TEGdziiRIVPTsRZ6o/t3paxvTDCKs=;
 b=vQCKeBnEDJbz/zXosZi6rt8EbYKLswW2oxptB/EJ8/gRmGOTe2Gt31FPvP831D+kjP4B
 xQEBa7BH2RQ4/AjARmygPEnrrv7sjD35rKTLuQqFngFtCY1K36UOmX6EfzfKr/j6XYpP
 N7KG5pnaVj6B5ZcYhejbC7P0Yf3IbO3YgmKn9l90jYB0pYJ07nwxjI43tZM5SmBQR2Jd
 Bve+HFmux8/AMs6UeWKwZVyVdQLObRfKNuCfteLWUgJfvcH/k5jlJMFZbJl4ubokbPc5
 rGwZNaE5pR1QRdVC3zG1wtFU73Nlg5AGUm4bDAOb2Jmjq6dbmteJwEXyMedHO3vQBLby AA== 
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
        by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3g93tbwj20-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Thu, 26 May 2022 18:10:06 +0000
Received: from pps.filterd (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
        by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.16.1.2/8.16.1.2) with SMTP id 24QI6QBL016254;
        Thu, 26 May 2022 18:10:04 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2171.outbound.protection.outlook.com [104.47.58.171])
        by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com with ESMTP id 3g93x6ytda-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Thu, 26 May 2022 18:10:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EsI3YAM2RyyRzFD0I0NXQBXjQbac50teQpUExlzc3zCcurMLk+Kw49uUo342HjJnVz+Z4uxFrMmWgrFf52y423GlsV0IjEHBu9aSyKzwQUu78uvAtlHgdKJVbNRfwvHGi9COWfkRaCl8ETcN8cZ7ickSP0mXi6Yg4PYrijDSGFVLOtK7/sudsmVYfHxWP3TlY09ggFOi+/F6oBoXVUAsLuYHTvezh1YRLTspm6yt21G72Dx1gYitJZULkw5gDDR5bV4jUTW1d+H6Y5B3LB1GW5m1gAfoSynTFb4s+f7HdYZplWI9tEojyjSRqRcXZcF5G1Gvs/9fZvP3K5ny5GngfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LglZHn96QLVw71TEGdziiRIVPTsRZ6o/t3paxvTDCKs=;
 b=AtWXUVQrLl3wTMU2mk+PNPYODPaYo3z9Ia4qq7afzhxxnxswLYAYhRLf52tdWVjgIFUYyga4w1KzMSu6Hi2PnTR/bEOM6ikDD6Jd/2KMfGJjMThrgZ8s/8F7QvJLUGx7EFKw6aRAiSQGv1AaGNTmfPDErBITiK1KKwknBNcdJeR75Gqv+cHXE6kKow2AiTUUZ++/lOj28la8eu7vlBdGVJV9iVw68zSCWi4b8cxReRWn4LOQGLw81SwIPFYaqQYBOu18RoNr4bN8h4oSEkFfN+Xk1R/XNjEnS1rabVVcDlxMGhK+Htdz4ddhdDZcAvOAys6TuoVAwZdV03kfofOigw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LglZHn96QLVw71TEGdziiRIVPTsRZ6o/t3paxvTDCKs=;
 b=Rb3esrQty0L29AVq4x5OWumEnjnUxVmh7gduXLrihBozQNZZkX5Oft3qbjZcSYnroWNA8n/tV1DhBZSZeCvTHx+4kUEXlVr2VXfSAwcweItQ75Xw49TXQq3Lg2rO/RY6abR6RHlKr9kUCcd2L+4cxSr/fOOaiavU4Ztkvs67x9s=
Received: from BY5PR10MB4196.namprd10.prod.outlook.com (2603:10b6:a03:20d::23)
 by CH2PR10MB3765.namprd10.prod.outlook.com (2603:10b6:610:d::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.13; Thu, 26 May
 2022 18:10:02 +0000
Received: from BY5PR10MB4196.namprd10.prod.outlook.com
 ([fe80::2125:9bb7:bfeb:81f9]) by BY5PR10MB4196.namprd10.prod.outlook.com
 ([fe80::2125:9bb7:bfeb:81f9%9]) with mapi id 15.20.5293.013; Thu, 26 May 2022
 18:10:02 +0000
From:   Mike Kravetz <mike.kravetz@oracle.com>
To:     linux-man@vger.kernel.org, linux-mm@kvack.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        David Hildenbrand <david@redhat.com>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Peter Xu <peterx@redhat.com>,
        Mike Kravetz <mike.kravetz@oracle.com>
Subject: [PATCH v2] madvise.2: Clarify addr/length and update hugetlb support
Date:   Thu, 26 May 2022 11:09:50 -0700
Message-Id: <20220526180950.13916-1-mike.kravetz@oracle.com>
X-Mailer: git-send-email 2.35.3
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: CO2PR04CA0152.namprd04.prod.outlook.com (2603:10b6:104::30)
 To BY5PR10MB4196.namprd10.prod.outlook.com (2603:10b6:a03:20d::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 864ec304-258c-4096-0c96-08da3f42f423
X-MS-TrafficTypeDiagnostic: CH2PR10MB3765:EE_
X-Microsoft-Antispam-PRVS: <CH2PR10MB376590934BCA9CB6068E4DFAE2D99@CH2PR10MB3765.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TkyrcbQeyg+pHB/FzoYNrJmuIEBZk3CBjbUoJuiMax3PKZjKMnep4CQwO39UojF8dgpNu3eQ157asmE2VEevAY1cm6TkAodSSwub0G3bmiJfkiCoezYF8eQHRb1uVQr8IqHs/Z+KvPs7lJWl285y8T/txCjy1ZfgsCkmYtMRJe5pWH8PccbWUdVdFjSnuYrQs7HwkqI0l+tQfxWsnEJ/D7eyNZ/2ikVIDVxfnLtXKeaUUN031H0Y48uUov6+aMGeUErRH5Z9JRDj1KFdyEN2uV/GcrZ/zI8V3mMlAPrIHS68fDUieKnSmHzVw+f8KxOlU5wUnan/KSpTXVAX46v/PtoTYCEKwDWzNJUUqA+KFd673MCmisyfin53SDsIaRCt87BhkBtrUNRO4F5b6+BiQz2bsL9bWmW/byjUj5BMX0diRdMWBsEdn8hk5IB4zGnxHJTVEIK7lvV2/Gcyu7NjkE3cuQaynEWJIQst6fo61N2zz9D55VLZ7VGmkh0C/lLuRen3Mc681gHc23Zs4omtvt9+BYwiNAz7LjpGv2MWWHNXKUqZQc4B5flSqMgrqm+8cQK7i9OlpxqeDZzfnUVQybU8OjwpNwx2FYORBerw73VJf0Z1C4TWzFZMLlQi0wuyIq0VWhW1qTwQa7fcN6RyjDmtxw7XUlntIlkwgmJFgBfTkAZeSd7x1u2FBRPqfcx6ivCorqiFGBfQmB+xcBEWqw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR10MB4196.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(44832011)(316002)(52116002)(54906003)(6506007)(15650500001)(26005)(6512007)(2616005)(86362001)(38350700002)(38100700002)(66476007)(66556008)(8676002)(4326008)(66946007)(6486002)(8936002)(508600001)(6666004)(5660300002)(83380400001)(186003)(36756003)(107886003)(1076003)(2906002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Ts9kpf6PxtLBHi1AulBWzuPU6S5sPDPko3tklM1rECS6FeYtJ8KIItJKaVyq?=
 =?us-ascii?Q?hCEiNnLwjUD4MVivkqnWqE+N7zVvECsfRHfBX2QFafOLouICIKEU/oEmwd5V?=
 =?us-ascii?Q?+jZ8HaWxkjR9cfXVffE+TZeu3G4fwy0/JLwUVn6onScNQDSvbbEQoEBSwLbM?=
 =?us-ascii?Q?jY0tpRFV83GyZ8tg513LtK9H1aPv7tyVkqzs7E6nd0OYcTqnkLzTynG/Ki2d?=
 =?us-ascii?Q?gg54XZRSdZlnYIaXj0MmB2dePSZ+GgG+Une2DoaWJbvWQKs6+/TQ4zCllIlL?=
 =?us-ascii?Q?F4irXnzuNSGfXTWUioLY0T9OD5uQ3JPZY+K+lhQMMtyFVn6Wr9VdH8ShP8zC?=
 =?us-ascii?Q?S7MfXTKPVxdLvgtpd3Z3yEziWo5XpQ+YKaKW7lVP1uKJE5s1C6SdGf2odhuX?=
 =?us-ascii?Q?rHq6xDsxPgGVhfTDLxtDuxYc4gXHnlqw57qanYDEI2RRq44RWaRXkU3CYN1r?=
 =?us-ascii?Q?DIVzKxcBsPUe5hEz7p5hx1hAkLQNLaoge7Blh7kFDZy16tB69g5ujXA9JA8i?=
 =?us-ascii?Q?TB7HPFF8QwcHaClmHceRJ7ODEynWah5CyCJbQ9AZATkS066x6iKZWoikBb6q?=
 =?us-ascii?Q?EKAr9kUOcVmrdCotRR6SPr1ESyVPz7MXcHaReFIERH6uL14qBeZisfIITMTB?=
 =?us-ascii?Q?r09U2O5B1jIZECNPOuq7elKUoFLT4GVs+Q4ul/t6XMOgMfAXmvYIjbfDwtkX?=
 =?us-ascii?Q?BARoWW17v1L8U54uOIfsQmeg4IRfou+chw+7lhT9aFOKRWMuUJebTovPDafv?=
 =?us-ascii?Q?9GTjREvt0kygv91EWFQW/kHCI2rOb53QbOglmury5SUpLa6olzY+Edh7NEg3?=
 =?us-ascii?Q?EcbpQT8To4mAEdpqpYr/Jgkn3gfYMlRlLZbnBaxm+WSUwXnlXLlSLgvAH+Cb?=
 =?us-ascii?Q?SP8MJ6R8+/k1eKnBDARuqSih33uCttZdOYRB2DKgUfA4B8ug7X1xO1L4wYHK?=
 =?us-ascii?Q?gO1iUPHgTc1IcmqLU68kD3U96VBnCilElDFjCS8IpUzhCIMvT/dLNXJBFwPG?=
 =?us-ascii?Q?+ypANFvqTyfsGiFpQIwZYTdMzu9ByxH+HBNY5VSdgkzglBEVtLyD3xzcEyca?=
 =?us-ascii?Q?049J4LADp7U6HTZWgQn78kasnO1GznAoX022qwHVtV+sHogclZcCD/8ROhVR?=
 =?us-ascii?Q?FjjZeboJDBEWLAvPI+DvUi36BtQAEIsFfV8Dzc4r0u5ROKubEoCytkAhTAq7?=
 =?us-ascii?Q?Cwf9Wghbe9NrRH5MEKorMjd1d3PDQLHjrLKc0gO2s137nKrRYeNMMnECZoiN?=
 =?us-ascii?Q?0gZKGOsGYXlxqjYharBmYYzYsBN2sFq/sNVKeRK20/ADVgJ/XXWgGhfvjvkQ?=
 =?us-ascii?Q?Tp7ctGM7bVciyQ8p5NUJA1O5RH4AwVt9Mx32uN7VNeYiK8EKpX5s3Mecxh1A?=
 =?us-ascii?Q?zTMl9HPkPlf0iwOJGG0Hf0e5/ub1++DVKoyKPNTiUODo1Ke/00QrVBiqwD82?=
 =?us-ascii?Q?yPgDEE45k5OwKh0wxbk4dE/6SuQsLzCk+Gs7f5jkBM9wJmiNNbbH/papuy0w?=
 =?us-ascii?Q?UIMxvVD3Py1i924AVNfVl077hewFhDLiMOkEIfZC1dp2WRo7u0etNxLai+mY?=
 =?us-ascii?Q?uGsRoqmUYikiC5D2+grmvXU9rsxQh5M+FHpIj3bmCM986vjbXPKXH4qxDd36?=
 =?us-ascii?Q?7ENQj4dxloj1LFb6GucGITC7bKB7TE/yia9uoNKFSa2VHGrGkDP9QI69ph0K?=
 =?us-ascii?Q?AvaOvDvjADQnHYBdxdvcA1jCXcUKuMt/nqYKWaOmbYRPpTZbfronVifQyNhe?=
 =?us-ascii?Q?L9od+RSZcZ8XMnUZUwrGqYIE1teBuIE=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 864ec304-258c-4096-0c96-08da3f42f423
X-MS-Exchange-CrossTenant-AuthSource: BY5PR10MB4196.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 May 2022 18:10:02.5331
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qn4ljc8eyBUeU2pCkq9fiAdSAYYFQgUSzjnSeemSeVrXkSFaLqCpMx8c5cDtjf/LXU/nnJpylz8YCPFzoSxz3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR10MB3765
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.486,18.0.874
 definitions=2022-05-26_07:2022-05-25,2022-05-26 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 mlxscore=0 bulkscore=0
 suspectscore=0 mlxlogscore=999 adultscore=0 spamscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2204290000
 definitions=main-2205260085
X-Proofpoint-GUID: 6KGyRnHOTHT9r2lr9PNV0suUHhB8x4Lk
X-Proofpoint-ORIG-GUID: 6KGyRnHOTHT9r2lr9PNV0suUHhB8x4Lk
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Clarify that madvise only works on full pages, and remove references
to 'bytes'.

Update MADV_DONTNEED and MADV_REMOVE sections to remove notes that
HugeTLB mappings are not supported.  Indicate the releases when they
were first supported as well as alignment restrictions.

Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>
---
v1 -> v2 Added releases when Huge TLB support was added and moved
	alignment requirements to corresponding section.  (Peter)

 man2/madvise.2 | 31 +++++++++++++++++++++----------
 1 file changed, 21 insertions(+), 10 deletions(-)

diff --git a/man2/madvise.2 b/man2/madvise.2
index f1f384c0c..50686e7e3 100644
--- a/man2/madvise.2
+++ b/man2/madvise.2
@@ -61,9 +61,13 @@ system call is used to give advice or directions to the kernel
 about the address range beginning at address
 .I addr
 and with size
+.IR length .
+.BR madvise ()
+only operates on whole pages, therefore
+.I addr
+must be page-aligned.  The value of
 .I length
-bytes
-In most cases,
+is rounded up to a multiple of page size.  In most cases,
 the goal of such advice is to improve system or application performance.
 .PP
 Initially, the system call supported a set of "conventional"
@@ -143,7 +147,7 @@ The resident set size (RSS) of the calling process will be immediately
 reduced however.
 .IP
 .B MADV_DONTNEED
-cannot be applied to locked pages, Huge TLB pages, or
+cannot be applied to locked pages, or
 .BR VM_PFNMAP
 pages.
 (Pages marked with the kernel-internal
@@ -153,6 +157,11 @@ flag are special memory areas that are not managed
 by the virtual memory subsystem.
 Such pages are typically created by device drivers that
 map the pages into user space.)
+.IP
+Support for Huge TLB pages was added in Linux v5.18.  Addresses within a
+mapping backed by Huge TLB pages must be aligned to the underlying Huge TLB
+page size, and the range length is rounded up to a multiple of the underlying
+Huge TLB page size.
 .\"
 .\" ======================================================================
 .\"
@@ -170,24 +179,24 @@ Note that some of these operations change the semantics of memory accesses.
 .\" commit f6b3ec238d12c8cc6cc71490c6e3127988460349
 Free up a given range of pages
 and its associated backing store.
-This is equivalent to punching a hole in the corresponding byte
+This is equivalent to punching a hole in the corresponding
 range of the backing store (see
 .BR fallocate (2)).
 Subsequent accesses in the specified address range will see
-bytes containing zero.
+pages containing zero.
 .\" Databases want to use this feature to drop a section of their
 .\" bufferpool (shared memory segments) - without writing back to
 .\" disk/swap space.  This feature is also useful for supporting
 .\" hot-plug memory on UML.
 .IP
 The specified address range must be mapped shared and writable.
-This flag cannot be applied to locked pages, Huge TLB pages, or
+This flag cannot be applied to locked pages, or
 .BR VM_PFNMAP
 pages.
 .IP
 In the initial implementation, only
 .BR tmpfs (5)
-was supported
+supported
 .BR MADV_REMOVE ;
 but since Linux 3.5,
 .\" commit 3f31d07571eeea18a7d34db9af21d2285b807a17
@@ -196,10 +205,12 @@ any filesystem which supports the
 .BR FALLOC_FL_PUNCH_HOLE
 mode also supports
 .BR MADV_REMOVE .
-Hugetlbfs fails with the error
-.BR EINVAL
-and other filesystems fail with the error
+Filesystems which do not support
+.BR MADV_REMOVE
+fail with the error
 .BR EOPNOTSUPP .
+.IP
+Support for Huge TLB filesystem was added in Linux v4.3.
 .TP
 .BR MADV_DONTFORK " (since Linux 2.6.16)"
 .\" commit f822566165dd46ff5de9bf895cfa6c51f53bb0c4
-- 
2.35.3

