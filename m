Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 781AF545472
	for <lists+linux-man@lfdr.de>; Thu,  9 Jun 2022 20:52:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344616AbiFISwg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Jun 2022 14:52:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234151AbiFISwf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Jun 2022 14:52:35 -0400
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com [205.220.165.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 515B927F8A6
        for <linux-man@vger.kernel.org>; Thu,  9 Jun 2022 11:52:34 -0700 (PDT)
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
        by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 259IkDxf002958;
        Thu, 9 Jun 2022 18:52:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : to : cc :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=corp-2021-07-09;
 bh=QqQ/+a2BIgUkhHktdIK6+AYDEvtnNkj3ksE4fGkEt9E=;
 b=YJNczaq5Da8D42s0PrTpXyyObroPPuBqb1uHRBxZAL3nDt2DU85T3jLHdOQDiX9XcOVo
 w4XH03rq8EC6sE6Zy8B1GbgJEC1cjTCDC4pUQ1O6ZKHu0CZAbvDka0IsjgNSLA3LzyJn
 T6xOtl63ksKFjAVhH2khRKkiIwWtBkXyfQkiv/NVBTEUYsolNeXkgKDobfP9/oiBeY69
 vsSBwmip8U6mG215tUQtP5saT/SjIXibtKn0mDi5AYi3MZ1V2rBrO5wnLrpuGoDV0s1L
 Mt9Xee7jtll0MZ7BjDCCECWPi41TvLl6XLJ6FxdqsCkV5Lw5r6y8PeDwctWBXFC2X8fG hA== 
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
        by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3gfyxsm7c9-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Thu, 09 Jun 2022 18:52:27 +0000
Received: from pps.filterd (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
        by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.16.1.2/8.16.1.2) with SMTP id 259IZLRj016055;
        Thu, 9 Jun 2022 18:52:25 GMT
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2104.outbound.protection.outlook.com [104.47.70.104])
        by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com with ESMTP id 3gfwuc3mu6-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Thu, 09 Jun 2022 18:52:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PVAJEP87px/RWLo7icTbGntF2PM3PX9xiZfrRH0B6E7a/OEaTHTNhYNKLnHPOL4UGLg/3kYRhrleeNdpBZ8PxuOYnX52GCxOfbFbe+/PrS/t6DWXL8zxv5hI6NabQiRXDdpVi9euD8KbcTyJGTPNYUV+XQ710v0Fn0y7FPGkJ1YsKs4nAp9A7PSlsL7aMYmhtMzv0Vv+3vJC3/W8Z6jvMDo0SKvnH12Kv5J5LQmv+22FXuq8p5nqrCEkq8IhtaZU9iObuxa+cF8+mP5dabApJ/lvTAZUQYa1cybYIgxZh/uokZSV/azqHn1lvw4sKirSo6I3VdGK0dt29YloRWSFqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QqQ/+a2BIgUkhHktdIK6+AYDEvtnNkj3ksE4fGkEt9E=;
 b=fv0Lv1f8pfdZ9OD4bqLNezFVh1WYqqQ3CB4yDastPzQ613DMow1VN13ZCoLcTtU+ZmFd0PrNHjUieg4e6Go7THmS4QTFdeLKuuQUZ+i6E6sy1yaLoivogiXX1sR3vBlhlbKDS5Yc9uJi6f009ZegPlElS+Sa4FR02hFW5Am0KZjU2T5592Z4RqvKL6CQRgpMEbEgBYbo9Uoe2aphMHTUE7ApOFJjllOk+yWElB0k3RrAWWkdfJ0TRtDJLcA0r18TEq286n6ILRfDOY+7xDV7TUejHtYbsIfygbTZCvzlY/P0/GuENnAAr5FmMEuIfFBWdYZf+EMkcY0HbAXSZtJrdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QqQ/+a2BIgUkhHktdIK6+AYDEvtnNkj3ksE4fGkEt9E=;
 b=ifnZ37Ty4CbMa22ym6qDcMXz8LwmdugAc8DuHjz71Iw6esBpEm82kGJQGWioBKFd0CvEAYI7T/irinxLmLSlC4cGdgyWXiJV2l8v+B5uMpQ9ySPT8emC+DASjLKG5JQkuzAK6Kzf0PhRSoTachf3gl3BcYy5pSMhZI4UQhQsrp0=
Received: from BY5PR10MB4196.namprd10.prod.outlook.com (2603:10b6:a03:20d::23)
 by CY4PR1001MB2309.namprd10.prod.outlook.com (2603:10b6:910:3f::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.13; Thu, 9 Jun
 2022 18:52:18 +0000
Received: from BY5PR10MB4196.namprd10.prod.outlook.com
 ([fe80::2125:9bb7:bfeb:81f9]) by BY5PR10MB4196.namprd10.prod.outlook.com
 ([fe80::2125:9bb7:bfeb:81f9%8]) with mapi id 15.20.5332.012; Thu, 9 Jun 2022
 18:52:18 +0000
From:   Mike Kravetz <mike.kravetz@oracle.com>
To:     linux-man@vger.kernel.org, linux-mm@kvack.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        David Hildenbrand <david@redhat.com>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Peter Xu <peterx@redhat.com>,
        Mike Kravetz <mike.kravetz@oracle.com>
Subject: [PATCH v4] madvise.2: Clarify addr/length and update hugetlb support
Date:   Thu,  9 Jun 2022 11:52:01 -0700
Message-Id: <20220609185201.19932-1-mike.kravetz@oracle.com>
X-Mailer: git-send-email 2.35.3
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MWHPR1601CA0016.namprd16.prod.outlook.com
 (2603:10b6:300:da::26) To BY5PR10MB4196.namprd10.prod.outlook.com
 (2603:10b6:a03:20d::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a15e35d7-488a-45ea-de2a-08da4a492d4c
X-MS-TrafficTypeDiagnostic: CY4PR1001MB2309:EE_
X-Microsoft-Antispam-PRVS: <CY4PR1001MB2309AC398477E5B73CED21A9E2A79@CY4PR1001MB2309.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: C41mVNtQIw93VROPhpXDnLB+laqZMZtWP4yvSdNuiOk4Soh7RQV/UN33ClTV2olkxytJ3yFQlu7Qm28ailinMYZeLVX87ja7aijaiALv6O8TuYVNUaNpRXLsKVUkVqIWOrHiQgUD1r149ky7uKVtzJ5C71R4K1hfGLBrSSz5bLB/XaXBt94fudJY7xsvl9b9nMN4S6Fit0Dq+5uZ9HPrVEaBRk8S+hYRR1S4Jz+kc0eQWmb4NaY66EYB0VL7wXrBHadEkQxN9iqtvEK5ppJ/vvTyJ2P09SamoKqSyn2ooHeJxnpdIbmZZX71e2lMCbaxfe1eku82vbhfv+hLvaZenT8O6z+byozG/Qq0z7Xw/Esp1rlhWS7zgUP4vfIGG2z16Zdwo6EUl8HXXJpIOSrhym2ImoVMce+jrN4QCjhQ2DTEUIn0XPyIExifdEMJsklSMKhYKjjyom7fKt4nnU37MV5cOkHsG/TRG2/lWFpHMxorY9p9dYyYOT30NgdeyYvH+kk8a8MWFoNH4ICFTowXjLmEzhVV3qiiWVw3UD6i8K9EO/z6xlIwPByV8IT9zV5/FH3/g5N7SqKg+yo19uoJWAJaJOUkzYuDgXi37Zaew/QLP/qczd1HmNFqb6nCAusoQH1BykVpseuV+l2Uai/Kbw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR10MB4196.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(36756003)(26005)(186003)(6506007)(316002)(6512007)(4326008)(1076003)(86362001)(2616005)(15650500001)(2906002)(8676002)(6666004)(107886003)(6486002)(44832011)(38100700002)(54906003)(5660300002)(66556008)(66946007)(66476007)(83380400001)(508600001)(8936002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GhioqCxYfLVWbrtcnFQxG0wSoJwCfwp6PbCz9BUl/Xu3rzjTqWAUBB06nh7u?=
 =?us-ascii?Q?70nFUUHDyDfXB1n9qGDiLdrfF85YyIzGwkvOwb/lShW8l2JUEtGc14uz343f?=
 =?us-ascii?Q?WxpA4ojIL/bZMFP8rZ4Hvf3v3okatEc97Arlgtyg4HbyT5qaPxUBU5yheYHS?=
 =?us-ascii?Q?w7NcLsX+GeDmQsXLxxTIghGL1kqIww9+QH+wUtTBZ9Ld39ZU4RMumHGEWL6F?=
 =?us-ascii?Q?40PodnKQad5seU2Zf+e/X/t8mz9DQNh9KmzaZW+zJNTrR8PyOYSSi5vQHYLh?=
 =?us-ascii?Q?LDw3XArUuVoJL0E4LJ1WKARQ1MF1qEs5gJ5Owi60NcbSCnawQMuMTKYQrCqP?=
 =?us-ascii?Q?4KRmpd4RC3ldXuULh4zuGNkIQYqW3d3vWEvEdDgn3zL6lm0j/7LurOLqRb74?=
 =?us-ascii?Q?5ycHF8kU3TsbeDu6873cpVGZFzsZBz6yDuDuzrnxSX1sLa6J5UmSOPketa9E?=
 =?us-ascii?Q?S+LE138mD0expLExGAjRCwUVFMK2JEuHZYD5+O0BkO7VJVXFWTHX3kyBOE8S?=
 =?us-ascii?Q?0enIjrqvbio4kbMrdknVmNc36745sV9z/C5YIylSmxFicJsAZx6V6J+xw6nG?=
 =?us-ascii?Q?2ShoP3o0h4ix081tpuH1/oU8TCSiVUCgqu0EZ9frgov356xopefMucGAu6BL?=
 =?us-ascii?Q?lE3ReuNql7RhFapKK5GgXY0EY0hsgzR1LjT7nDsc+vavlSuXcERGv6Nhe/9P?=
 =?us-ascii?Q?k8kBXTZWAgIqImwTVM/0MDIQcg22hXP7BBs9dQT05t9y2gSWtrUDcrR4+QbO?=
 =?us-ascii?Q?nIGuSbHXQ4z5R70HYWSJf7dpDiTR1r9TsKAP+3Vv8OwbOmeBoA/QlNs929p1?=
 =?us-ascii?Q?u8md0aqwM+AdvKnN3+KdUcSjlaB6yqr7n84yv/0p3U6k1NxTBUGofeNHjUi5?=
 =?us-ascii?Q?ruRgQTEZaHfpB93J/MSHOAAoVCs2t0FfeWjlMVihqgy0fu44AqyzwhIVNcV+?=
 =?us-ascii?Q?IocAldRQ4N/a54vJ/y/3S1i7kILPnGI0AZCMPsrhEhyrCplUdGz7f8e8/MC2?=
 =?us-ascii?Q?a9LqiP8duRXWWA1fPPsC+dIsbIjruEstchPThXntN1zFS7/7fvVolna2VupG?=
 =?us-ascii?Q?dZz0wLjwnMWG2AhdGNrFZ2ZRAY8m7hZWcsgdBBy+JJ27BTmkBGd3wqVhvbfQ?=
 =?us-ascii?Q?znc1I0E2oAeNwmJibAM0qATElA34yEzv0EEj7iiX9m5lJx1zq/gYOMvM40y3?=
 =?us-ascii?Q?XGBcpadAWhAen7D6FKWMRcyKI9eh89+tGOAzcDDqk3ij+ZmmCYSiRiRmsj3E?=
 =?us-ascii?Q?xX0PJVFyu09lTpcoQXJzdjWmu2cgARFzn20fSwR+FpsPd3xGlW0Ji7k+1B61?=
 =?us-ascii?Q?YMNS9Dg8swYPb9cfacte1ooHYm9jQmwEeIsyK34wpW9qBNrveBrqIj/8rMJ1?=
 =?us-ascii?Q?dZ0a8Uh+vIXPFLic+BfURWv0VvFkXfQCshk6tEbc8Ty7chwYa7I2WqJpC7uV?=
 =?us-ascii?Q?d8kPZJ3KZ/cQAn/b9Oc+97uRKpu5Jac6+5WAExz3QyYmQTcriUErtEkOvYku?=
 =?us-ascii?Q?alLNFnzfVQ+5z0VsPVmr66X3PnXnnzRxpIMaOke64QQYA/EONwekhpGbIYdP?=
 =?us-ascii?Q?ZCeewkvkBz7MV3DLi/EF6uO6dpyPVM189s70dvTfKLKLAtDes1Nk3XZcBgA0?=
 =?us-ascii?Q?FNirzMWDV4EDVRj2elKrXnJ6cf0+C5JDx4r6IHb1tJU+UWI8FfH5/Rtb1PeH?=
 =?us-ascii?Q?NAPN/RYPWFX9Ar6Q6lcMAEwm87IXye4JxLzOLDKd2oo5AX/YvpObsPOoxvmH?=
 =?us-ascii?Q?HC/2DRfUQE8N4aqh+34Cnz6h+CzsyyA=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a15e35d7-488a-45ea-de2a-08da4a492d4c
X-MS-Exchange-CrossTenant-AuthSource: BY5PR10MB4196.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2022 18:52:18.1145
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: R8wzXxQRjPzO4wjkIEir34olOSuuhkGYYjPdLPwpSegJucbz3CmY1emWaYyhlVTRs73aYRzsN24JeZsbBR3O5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1001MB2309
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.517,18.0.874
 definitions=2022-06-09_14:2022-06-09,2022-06-09 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 bulkscore=0
 malwarescore=0 mlxlogscore=999 adultscore=0 mlxscore=0 phishscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2204290000 definitions=main-2206090068
X-Proofpoint-ORIG-GUID: qvFkVvQbvW2T7LdjU4KT3TlN7Ly4b8mO
X-Proofpoint-GUID: qvFkVvQbvW2T7LdjU4KT3TlN7Ly4b8mO
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
v3 -> v4 Formatting updates (Alex)
v2 -> v3 Rebased on man-pages-5.19-rc1.  Minor change to wording for
        sunsequent access of data after MADV_REMOVE.
v1 -> v2 Added releases when Huge TLB support was added and moved
        alignment requirements to corresponding section.  (Peter)
 man2/madvise.2 | 33 +++++++++++++++++++++++----------
 1 file changed, 23 insertions(+), 10 deletions(-)

diff --git a/man2/madvise.2 b/man2/madvise.2
index 2a8f1cd0a..7fc184e20 100644
--- a/man2/madvise.2
+++ b/man2/madvise.2
@@ -44,9 +44,14 @@ system call is used to give advice or directions to the kernel
 about the address range beginning at address
 .I addr
 and with size
+.IR length .
+.BR madvise ()
+only operates on whole pages, therefore
+.I addr
+must be page-aligned.
+The value of
 .I length
-bytes.
-In most cases,
+is rounded up to a multiple of page size.  In most cases,
 the goal of such advice is to improve system or application performance.
 .PP
 Initially, the system call supported a set of "conventional"
@@ -126,7 +131,7 @@ The resident set size (RSS) of the calling process will be immediately
 reduced however.
 .IP
 .B MADV_DONTNEED
-cannot be applied to locked pages, Huge TLB pages, or
+cannot be applied to locked pages, or
 .B VM_PFNMAP
 pages.
 (Pages marked with the kernel-internal
@@ -136,6 +141,12 @@ flag are special memory areas that are not managed
 by the virtual memory subsystem.
 Such pages are typically created by device drivers that
 map the pages into user space.)
+.IP
+Support for Huge TLB pages was added in Linux v5.18.
+Addresses within a mapping backed by Huge TLB pages must be aligned
+to the underlying Huge TLB page size,
+and the range length is rounded up
+to a multiple of the underlying Huge TLB page size.
 .\"
 .\" ======================================================================
 .\"
@@ -153,24 +164,24 @@ Note that some of these operations change the semantics of memory accesses.
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
@@ -179,10 +190,12 @@ any filesystem which supports the
 .B FALLOC_FL_PUNCH_HOLE
 mode also supports
 .BR MADV_REMOVE .
-Hugetlbfs fails with the error
-.B EINVAL
-and other filesystems fail with the error
+Filesystems which do not support
+.B MADV_REMOVE
+fail with the error
 .BR EOPNOTSUPP .
+.IP
+Support for the Huge TLB filesystem was added in Linux v4.3.
 .TP
 .BR MADV_DONTFORK " (since Linux 2.6.16)"
 .\" commit f822566165dd46ff5de9bf895cfa6c51f53bb0c4
-- 
2.35.3

