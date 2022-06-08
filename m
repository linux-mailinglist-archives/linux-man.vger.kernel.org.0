Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC33254400D
	for <lists+linux-man@lfdr.de>; Thu,  9 Jun 2022 01:46:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235049AbiFHXoW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Jun 2022 19:44:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234812AbiFHXoS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Jun 2022 19:44:18 -0400
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com [205.220.165.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0C9B176D40
        for <linux-man@vger.kernel.org>; Wed,  8 Jun 2022 16:45:56 -0700 (PDT)
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
        by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 258LP7Wx007728;
        Wed, 8 Jun 2022 23:45:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : to : cc :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=corp-2021-07-09;
 bh=4oaXctuiLzV5q5mOlkaGSJn5FlsJtXkVBk2/i7lWo30=;
 b=cuHDli0GTy4ZYnp0RQxPGwIAO9xdc8lykozu7VuGP0Zv2QsQV4w/yVp0P+Uu9lhjyRiH
 633lGvh5wrpy9yUxetNakD5phUQAUimBMAPV8JHqezwGS1GQSLH1BdSiEI5ElhSnnKxn
 ljCRLTcRv18rExU/xHYPIgihNqAITyTUQJpJvYrHX8FG3rp7z+zr6cxrB7F5to3g9cyy
 JC7wuw2DgQkB0ZzdjGDWJgF7t9nOnyicitiZTagdOlf2qjmQWSbEX+Gpn4ekJWl5RRif
 IkXnPU291BPkjWoICglCe+TNmIuSEzmTOSqud2J+7WxmeKa/urYypI5nynlSH46sQ5QG Hg== 
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
        by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3gfyxshxnt-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Wed, 08 Jun 2022 23:45:48 +0000
Received: from pps.filterd (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
        by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.16.1.2/8.16.1.2) with SMTP id 258NPEnU031188;
        Wed, 8 Jun 2022 23:45:47 GMT
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2171.outbound.protection.outlook.com [104.47.57.171])
        by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com with ESMTP id 3gfwub5ys7-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Wed, 08 Jun 2022 23:45:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aAYNJxQoChgMqAC4m9pz0Pl/3jap+8L00ThBQIU1bY6FmH8Y1UnL4goZ4fi14o6yjpc4qfvYCVkgnJsTR0MNszwREdw+sGnEJ6lFX0jtxqpMxoFGaJVjxrL2PqupblRqGVz9QWcg9b3RvwefT2IoTD/g2nf3KAEYHEjDGzO6Yuq6oj1n2WeR3KDAkNjEiksj1v20qzt0gKCJuo8AMff6X/wetm5EQ3gPlW1eoxt1ahZ/RFnMMEnRc9BEpOcHox2YksReTpqE1WCW6C7vxjfdxThPFxUgYSyNYYSn9pjpwn0JRJ4zUOmUCCocRIxNcGQisXPh1eNvFri3MaF2HHFUVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4oaXctuiLzV5q5mOlkaGSJn5FlsJtXkVBk2/i7lWo30=;
 b=UDdlrvh/frYU/5tsOhVWDjfpgVbHIKgLv40MJi6zJevD0lmo4nbuF/FMnLvbivpVI+6clI8+PK4e5KlJ0T9B0RZkqOBNU9VlUDfVZPrUADeQP6ocSrzZkcsE1NTciaFaSTcOH/ZmjMbK1sgCG3Q8LC/2X2qiS2CBy3L+wrI28/zou1AE2CpbtgegTUiG57ZfXRyDfFpgCuv7Tua5z8htMkFsbRZLmj3StWnmwlZF0DNyqkYHziQVY+5jSJEtf7boepu1Z08BiiO2PBdqPuAPENYYWIlledY6xuCyM1BmwxrtBU4FkKFqe3hOtYJn0mIYfO3X7lc1VaicszbBXX7eyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4oaXctuiLzV5q5mOlkaGSJn5FlsJtXkVBk2/i7lWo30=;
 b=dAsyINys+RQB+JClN2GRxuq4I7+rG/hWArCtrcZ+tw2LYq0qC4Pwsh13lDEAJkLbm5K6eq4oPpNDUb1+2jF4EvEEfezetNjoeQsxWF/FQHT0lkEdjP2U2krZh2CvLVLEoj+zBBZQYz5lXMv4zN5pzHruAWspvhfCWXS+SN1PQoo=
Received: from BY5PR10MB4196.namprd10.prod.outlook.com (2603:10b6:a03:20d::23)
 by BYAPR10MB3142.namprd10.prod.outlook.com (2603:10b6:a03:14e::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.17; Wed, 8 Jun
 2022 23:45:45 +0000
Received: from BY5PR10MB4196.namprd10.prod.outlook.com
 ([fe80::2125:9bb7:bfeb:81f9]) by BY5PR10MB4196.namprd10.prod.outlook.com
 ([fe80::2125:9bb7:bfeb:81f9%8]) with mapi id 15.20.5332.012; Wed, 8 Jun 2022
 23:45:45 +0000
From:   Mike Kravetz <mike.kravetz@oracle.com>
To:     linux-man@vger.kernel.org, linux-mm@kvack.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        David Hildenbrand <david@redhat.com>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Peter Xu <peterx@redhat.com>,
        Mike Kravetz <mike.kravetz@oracle.com>
Subject: [PATCH v3] madvise.2: Clarify addr/length and update hugetlb support
Date:   Wed,  8 Jun 2022 16:45:17 -0700
Message-Id: <20220608234517.117295-1-mike.kravetz@oracle.com>
X-Mailer: git-send-email 2.35.3
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MWHPR1601CA0020.namprd16.prod.outlook.com
 (2603:10b6:300:da::30) To BY5PR10MB4196.namprd10.prod.outlook.com
 (2603:10b6:a03:20d::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: da9a269a-13a1-42a6-a337-08da49a9017c
X-MS-TrafficTypeDiagnostic: BYAPR10MB3142:EE_
X-Microsoft-Antispam-PRVS: <BYAPR10MB314215DBEEB66A4B7F966EC8E2A49@BYAPR10MB3142.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cwTz63D7CS6bksapLLOxfzkXQfJapFpvkhAoYXsnYibrf2P2leRFnplNKBslHQ0XyvCsr+bkhscBE1NQm8AaAGfpyZtzDEhP5jtQHeA92yLBtSZxNfSME4atArQ5+zwF7Qw4dHYewT1glmdr/BzfBXqE9T/99y4qgaVoQEWzbn0Ugihetl9GKje35FSoC81dIhfoQoaIoA/Bl2ghjonrmyGi7Zna2qzn5zflHzbVIaDDfSXDe20IkA0wSg8mXpuBN2nyRilUxQw+XAjj3FOr0jYR3kJbHvosjDPQKoDTF/MrhpetfqyxA+UOBU4e0+YI8mKOe/DhTV1H/5biL+7VgScR+IFy1OgFBg9fhj/avdv4vWUgA2jDmZwCH7smv4XIZoUlJS6CRHnyjTLfcjL6hzsto2bh7wP4pTkXv2pGK/3a4G5MMmPhBr3feOuFApYgObHE+eDyLXA2vhwOBEpJM/JG9+39TVkoWp0X618Hm8wr8RkA5jIie3qtkGloLNrIZw54UVXqiOtbA0antMhDRy8gB0HSbsm/dS9+j6YXS+dbeNtv9vu713Lq95APD1apovgiuX7+A3R80kyylHHIe383pviuycywtu/Z2PHgrg6WGIOXqppha990+Tbc9vFOAsuWRqh08cd4DGx71Wd7Ng==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR10MB4196.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(66476007)(66946007)(66556008)(4326008)(1076003)(8676002)(107886003)(5660300002)(186003)(8936002)(83380400001)(2616005)(26005)(6506007)(6512007)(2906002)(6666004)(44832011)(36756003)(508600001)(316002)(86362001)(6486002)(54906003)(15650500001)(38100700002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ZsQUFv2Dbs6CQlzH9Suv7yxIgJvZBxJre/mcHrLysqV5cguUDxP4p3AkdcdM?=
 =?us-ascii?Q?35vgnxxIQ5jD51DNAaQPYGUOCYXP5EGJAdln+2WeBxDDGzQ61aSgrlrKyfJk?=
 =?us-ascii?Q?nRQGux2XicVSZ1+B+YmK44zmpbLNDp2DhIoFANJPTm2JG1Fdt2Gwv1iwx7sU?=
 =?us-ascii?Q?WuCKpJaquxFYD2ueKx5bhjpiFF5OkgClYhXUerf0Ltb5qLHqOJgKiHawW4by?=
 =?us-ascii?Q?NNupplkGoAQnyP5CaM0eDkoYyLMqxm/IHkyvC9ueqdNskL1507HjPiWmLbIV?=
 =?us-ascii?Q?rsQgQEbNI8whmEiJ172W8EE0ereOmxRxFMfSnLiVW94ZOloPhTjVF2Jus7U0?=
 =?us-ascii?Q?3Bv2ei5A5IxyPnNPeVe+nr/eMyAHrSijM1BBEjukq1ExjGg4aSuchXEEyw1F?=
 =?us-ascii?Q?DhmbfE4yAVKYui8DjfIJadwlDhyb7kg2NS6plIBHXHQtlVH5TSyw4vIgoSk/?=
 =?us-ascii?Q?v5/+AnR5Tmw4kQe463d+R8cDIwBBrkltCjXv7q0TVk4q7WdyO6Bi6ZOQIVwE?=
 =?us-ascii?Q?pzNUfCE2cRtj9AL3kiJCFz+6pYSyf0PAoBpuQ59I+47iNZ1B3RbrvLhRAo9o?=
 =?us-ascii?Q?42Cxe0jGEpL7SoeAGQF9AWzSFAukXIPbmvpAYB4m8gQNdynMlXyOFm0DNCoZ?=
 =?us-ascii?Q?X7MlpiteUlntFi4P1Ta5Lg330lAknqg4epNCgILd4PIaNNDxfbQ/SdguxGFY?=
 =?us-ascii?Q?ORZ+Fe4z9VCAWFJPZjzEDsKqyaLHKU1kndnH1bDH8nNl5ct+2vHUzTd25BQS?=
 =?us-ascii?Q?usECdyk9S8skQQ9yp4lkt+MLuc/5mf+13b6C7JBiScmnMlcM0F/9+fddQBxY?=
 =?us-ascii?Q?Y5gTrUqzX8PeLuckjYqu2UCCxXO+KNpNIuulFioAYmNzEcsgkuEmz2cYhtmS?=
 =?us-ascii?Q?h9BSRlLiOcvP5Sh63oYClfUwTMMCleESTP/EKk2KRZduabDTFzjRb7PI4oGH?=
 =?us-ascii?Q?JgMnmPGoaICES6A/lx+/wdVbBUipi9Oj08B92TsPuo/s4fp8vhyGJteKUeHW?=
 =?us-ascii?Q?lm6ZAzaOP19GzS1+MfO5OiUx/qEMA2nJORx8sApxRrsJjj5+WFCOe0205ybZ?=
 =?us-ascii?Q?rnPHAP2IwaNLZF6iIOj532el47Mg/Ibm/tdin0bS216kbHN+L8P3U11tmy8m?=
 =?us-ascii?Q?0ZdsKRtHOiTnimL27WxvF3+2ZmEt+HQ6M8I9gMsbrV/3ELFqnEj33ug2waiH?=
 =?us-ascii?Q?iBdAqH9qk0c8I7DMiYUftcYN2+4GhFXZIrbpQl8yp3H61Oi2LKR1qu+NT6Kx?=
 =?us-ascii?Q?DwK7fwuhJ3VRWKFb5lyhZ02v2JKeeXju0OxBW4h5hXeRGYkb8grtL4vJ7H41?=
 =?us-ascii?Q?1SaqMmkXb7bwOBhsYoFUx5bJqBY0JA+MOPyNroNTtRmBT1Ft4BmC501wxnaP?=
 =?us-ascii?Q?h98GdeFvIMHiYCUAo3kQdgvFBfD7JiyHw8lYMUUPjjgrNihpHtPwOOZhMKyo?=
 =?us-ascii?Q?sO3bXN5w8fEUOd0zwzFDSNekyjghG/O/BlzS3SMCGQjgMpurHXOLAJTAsm45?=
 =?us-ascii?Q?K6jzsNqj75aURGlK+vbNw3iCIphp63ashlpH6TUri1/rkOYbVCSVNIyu4nYC?=
 =?us-ascii?Q?EIv/w73zgzeXLQkVLRhEFJ78UNXyQrJhnipy0P8+hYs8c8M61DF1qAcVVMeO?=
 =?us-ascii?Q?l2F6O80c8OGz0RWMdoiS2Q/Vy6HiFGqLo0vcOess0Q7MuWzbhT1Y7zdKzuXi?=
 =?us-ascii?Q?yd3TNenYDk8rxipv6iY+uY267bxXIBow+REHDProooY7x/6FvlNRPDtSP8HZ?=
 =?us-ascii?Q?A8mtUryAY9xwISPj1SaZwXZFwO1XThc=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da9a269a-13a1-42a6-a337-08da49a9017c
X-MS-Exchange-CrossTenant-AuthSource: BY5PR10MB4196.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2022 23:45:45.0218
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y5p0FEbBVS4f0z48ivLJ3wSZSrvu8+hhUyRcpJyOiTQLkwYNn0N61pMAzUfxFhDLEk4rF4zuIbSjuooiPIWKKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR10MB3142
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.517,18.0.874
 definitions=2022-06-08_04:2022-06-07,2022-06-08 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 bulkscore=0
 malwarescore=0 mlxlogscore=999 adultscore=0 mlxscore=0 phishscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2204290000 definitions=main-2206080086
X-Proofpoint-ORIG-GUID: xOJhQ_3sWme5qwTlwV7cMyLk6CUm1CVN
X-Proofpoint-GUID: xOJhQ_3sWme5qwTlwV7cMyLk6CUm1CVN
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
Acked-by: Peter Xu <peterx@redhat.com>
---
v2 -> v3 Rebased on man-pages-5.19-rc1.  Minor change to wording for
	sunsequent access of data after MADV_REMOVE.
v1 -> v2 Added releases when Huge TLB support was added and moved
	alignment requirements to corresponding section.  (Peter)
 man2/madvise.2 | 31 +++++++++++++++++++++----------
 1 file changed, 21 insertions(+), 10 deletions(-)

diff --git a/man2/madvise.2 b/man2/madvise.2
index 2a8f1cd0a..becddce93 100644
--- a/man2/madvise.2
+++ b/man2/madvise.2
@@ -44,9 +44,13 @@ system call is used to give advice or directions to the kernel
 about the address range beginning at address
 .I addr
 and with size
+.IR length .
+.BR madvise ()
+only operates on whole pages, therefore
+.I addr
+must be page-aligned.  The value of
 .I length
-bytes.
-In most cases,
+is rounded up to a multiple of page size.  In most cases,
 the goal of such advice is to improve system or application performance.
 .PP
 Initially, the system call supported a set of "conventional"
@@ -126,7 +130,7 @@ The resident set size (RSS) of the calling process will be immediately
 reduced however.
 .IP
 .B MADV_DONTNEED
-cannot be applied to locked pages, Huge TLB pages, or
+cannot be applied to locked pages, or
 .B VM_PFNMAP
 pages.
 (Pages marked with the kernel-internal
@@ -136,6 +140,11 @@ flag are special memory areas that are not managed
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
@@ -153,24 +162,24 @@ Note that some of these operations change the semantics of memory accesses.
 .\" commit f6b3ec238d12c8cc6cc71490c6e3127988460349
 Free up a given range of pages
 and its associated backing store.
-This is equivalent to punching a hole in the corresponding byte
+This is equivalent to punching a hole in the corresponding
 range of the backing store (see
 .BR fallocate (2)).
 Subsequent accesses in the specified address range will see
-bytes containing zero.
+data with a value of zero.
 .\" Databases want to use this feature to drop a section of their
 .\" bufferpool (shared memory segments) - without writing back to
 .\" disk/swap space.  This feature is also useful for supporting
 .\" hot-plug memory on UML.
 .IP
 The specified address range must be mapped shared and writable.
-This flag cannot be applied to locked pages, Huge TLB pages, or
+This flag cannot be applied to locked pages, or
 .B VM_PFNMAP
 pages.
 .IP
 In the initial implementation, only
 .BR tmpfs (5)
-was supported
+supported
 .BR MADV_REMOVE ;
 but since Linux 3.5,
 .\" commit 3f31d07571eeea18a7d34db9af21d2285b807a17
@@ -179,10 +188,12 @@ any filesystem which supports the
 .B FALLOC_FL_PUNCH_HOLE
 mode also supports
 .BR MADV_REMOVE .
-Hugetlbfs fails with the error
-.B EINVAL
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

