Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B52B5333E8
	for <lists+linux-man@lfdr.de>; Wed, 25 May 2022 01:29:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239312AbiEXX3J (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 May 2022 19:29:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235916AbiEXX3H (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 May 2022 19:29:07 -0400
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com [205.220.165.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9CCD377C8
        for <linux-man@vger.kernel.org>; Tue, 24 May 2022 16:29:06 -0700 (PDT)
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
        by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 24OJTBvs018271;
        Tue, 24 May 2022 23:28:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : to : cc :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=corp-2021-07-09;
 bh=7YHnkbodzJgtA9WZa2Wk0en5C5j93X2/shhW+gzpe1w=;
 b=Q1BMogoIul1gwEuVqbX4xnFzQ1VwGaMzOhbEZobPcDPke/n4G1X7IiCzEH5Ra9qSSBjE
 Dz0tqXgbnPhnMFPYpkCBC2r6fJQKLzhmAoosdRDgJNKE19C7CfSt2c5JKzpiZ+CJNE0M
 XHeHDfnPM8gBosqz7omuxV4Ltzdi3hUqquZyU2dYPap0cynk2unKsgdUJ16Jf/hxumP7
 hMa9WDLrLW3bTKCo+QDZ3nDt71qqHLJ0AeMouX/+gW7c0bgthSajoF6RQS7y9U/dlPqU
 7xfdlbADH59UiyLWaRdYTIQH1mG268XIINk+t1/WUCSZxbmE6utmNafCspB0RZcwM0IU /g== 
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
        by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3g93tarqd9-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Tue, 24 May 2022 23:28:57 +0000
Received: from pps.filterd (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
        by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.16.1.2/8.16.1.2) with SMTP id 24ONSJCf026846;
        Tue, 24 May 2022 23:28:57 GMT
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2171.outbound.protection.outlook.com [104.47.55.171])
        by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com with ESMTP id 3g93x000ar-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Tue, 24 May 2022 23:28:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dr9Zq6A24dgQvhKOznPk5XFeGIA0JvYtVStEkzO49KC5Qe90nYzc907AKLlDmbFyAiN1gYlOhN39Wk1zJ1k4hHTfshy35SDjSr9YSlhmhkSZAF6Q5QTsA6HNqJmIAtznv6ScIZxRynv47iAQFPFO0kh8XQqUyhzXNbcvZ6xIIkycHueQrzDK3BoQXT9LOIMVVLHAdvIDh/FMoggdyfUjOzy3TFXgQqpgAIpO88JGLeIItXWdaj/8N2fWXV4pbsz+WCMb2UL6yA1V1YvKr46R2Tc2/+mMvw3/5cSVGgkM/WV+vgDMUgFZiprSP7IIr6RkfPOKd0Zmhv2u8kKA7qJVOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7YHnkbodzJgtA9WZa2Wk0en5C5j93X2/shhW+gzpe1w=;
 b=HJU5UR22KfFPcv5tCNiWOayx7lIjj/B6wQICVZSGkUyFmmEPuh/t/3FyWNebKjkg4YnVSKNQ1CGl2Gp9ys452OLLIyvtyXZ94t982w4vA8IaJ9i1smh4Wpl66bFHr+qFXINpyv6Bd/DvCMi+cv+3X5kyQeFi6Fzx91wvk2nHeUWbh/dTlnHRrciLALp69WsE7ElbD5yeP2W6Fkumzx9P+F5yYfb9jx0IXcxRIQLk0ySCsSToNtXral9RzseSByTuRmtEyWV7QEL54IUovJ1pfSd1WYw1NSOHWFtyLSNkUD/FZ8mvRnr+FmqwdhTEk9pOCC15qIBLECbaJIbNCahfHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7YHnkbodzJgtA9WZa2Wk0en5C5j93X2/shhW+gzpe1w=;
 b=V8ehCmdwYlo+WzleyFK1s+KtuUEcxJCVFWqNxqvT3rqV5G7BOKbND5rpIsqUkaM1HMc5JeGR/JlWFAFyzru9+JtrkdsxavIYjeO+YqV9Axr/bnx5i3eDNbicQt1TF2NxQaZDuiQOcQhqT/zr30ucWg4dUCaqGBQ4tfNWAKRRapw=
Received: from BY5PR10MB4196.namprd10.prod.outlook.com (2603:10b6:a03:20d::23)
 by BN6PR1001MB2163.namprd10.prod.outlook.com (2603:10b6:405:2e::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.13; Tue, 24 May
 2022 23:28:55 +0000
Received: from BY5PR10MB4196.namprd10.prod.outlook.com
 ([fe80::2125:9bb7:bfeb:81f9]) by BY5PR10MB4196.namprd10.prod.outlook.com
 ([fe80::2125:9bb7:bfeb:81f9%9]) with mapi id 15.20.5273.023; Tue, 24 May 2022
 23:28:55 +0000
From:   Mike Kravetz <mike.kravetz@oracle.com>
To:     linux-man@vger.kernel.org, linux-mm@kvack.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        David Hildenbrand <david@redhat.com>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Peter Xu <peterx@redhat.com>,
        Mike Kravetz <mike.kravetz@oracle.com>
Subject: [PATCH] madvise.2: Clarify addr/length and update hugetlb support
Date:   Tue, 24 May 2022 16:28:44 -0700
Message-Id: <20220524232844.169332-1-mike.kravetz@oracle.com>
X-Mailer: git-send-email 2.35.3
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4P223CA0010.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::15) To BY5PR10MB4196.namprd10.prod.outlook.com
 (2603:10b6:a03:20d::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 499f85c8-301c-475d-ffa4-08da3ddd2b21
X-MS-TrafficTypeDiagnostic: BN6PR1001MB2163:EE_
X-Microsoft-Antispam-PRVS: <BN6PR1001MB2163CD265222A70456E1867CE2D79@BN6PR1001MB2163.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hWU0QAws74rJHGTKPb4hYEdhBNVsel+thhgFhI7WvI9IApZ2/RKJj2EFn1vF8DzHMzzaIM2OkYAuI9TV3Gz99JimStyVMEcUuiQk0mRevTBPaEGj8ID0NJNco/XrpPOJIiej4jLhYeQ5k2RpSs4W2l0U+zC34SF56TkWeu1zttnxhADjj4oVBPj19+GKw8kg57+7h5d+QktD7+viAE/LxvdYbLEdxKmArYDhxzJU8XMuxJWJqF1EQaDaknJjzNmwtJU60F2NO7WHlF0PsaonbiZ+ReyuwEIHREQ84hvp7lICqYe4CTtF78Ex3zp6OKtEQNTKs+p398xi7V1Y7YvRuyrCaMqWw+oiWZXL8N3UAsbFK0FH4TjZ2TJA0ssQlZdzCQjGRqCCq7pe7eQT81QYFJqgXodn6lcRSTfDbS6ibyCj+yzyV/swoQyihm24wpFd6N/O82AqoD2znXx4OnbKIexFXdsZJQBXkRd0f7s46oUPA41KB468bS7DSdfE+Wc+HPJNcWiysQHVreemmR0Lhc4JXVYckqp/s3yPipQYC0tRA+0J+Edw+j+o68cbCqT+vFrOruMKuwCg14FhvEZ/8mcNvqEuNuwpO7YYwYvL8CxnDsKlsNIPgRh5A+AGnxZ00w61XckQcG3Bp1Kdm7kcu5o6w2UI6/k29AcU644cZkxtO6YqvRo3ITT2AWtBWkcsS4Wvad9dplBAPf8P73ZPbQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR10MB4196.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(2616005)(1076003)(6666004)(26005)(52116002)(186003)(6486002)(107886003)(6512007)(6506007)(38100700002)(36756003)(508600001)(54906003)(316002)(44832011)(83380400001)(5660300002)(15650500001)(66476007)(66556008)(4326008)(86362001)(38350700002)(2906002)(8936002)(66946007)(8676002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?20U+xsI8oUBbSkOGRt89LEHGCnOHdkR67hs0MdYKmBKC1zTh1ED7BSYmEKgP?=
 =?us-ascii?Q?a0dP+Idpdc/6J4kIqKvoUjVGOr53zKBYOP18I4mKdCUQ6vUbdnmhc3vksTE8?=
 =?us-ascii?Q?iqUoDppoJ+rwka2la+ELGWseEtv10KsyWmxL0BilIWxfOk2E+kLA/HH3diGW?=
 =?us-ascii?Q?kFvPmGdS7p9fUHjP32Vw2K7qnHheL/9WsQe1RQ6IKLlcp8ytJX7EZ3jR9lWF?=
 =?us-ascii?Q?JVWbJsxk57W8J8buAWM8BesgKeCOiV5wDH1WOmYferKYoTEQ6QcKeCewozpv?=
 =?us-ascii?Q?zmI3zYO6biAtwS1CQyMdtWQej9EaFEug7hQ9xKUoBc0Rf/XWvb59jlKal1my?=
 =?us-ascii?Q?/BBKWP2ncw6XKkdNYABYqtnSxqkvuVJrVM4M/4Q5gTrLk8GdC3FaMd30vm6S?=
 =?us-ascii?Q?3FvCCe7Jhg8wBjGQzcHoUmVzoav8/Xg/RVpY6Q+o1T4j5iR+KUhJgm7bxx23?=
 =?us-ascii?Q?YwwIHzYVlHPGP/h0c3ctuuaaLZYi1B0xnyTmG7yKeFjG/4KSM63l618mOvxe?=
 =?us-ascii?Q?5jsYNODXeP6HHBONjCOTCxprNXlVfX7yXs8M6HxeJh/25pvAzCw33bg3Gqzu?=
 =?us-ascii?Q?tC+X7UWrP5x1/dWNngaU8Z5s1PyWNWvxe85DeBe3QmY3ZWhWNE4CgPn8xxIx?=
 =?us-ascii?Q?V9YUxEry4tfcnPUQOZtf1xdhb16CwV7AO6H5D5afztufXG2SbzPtPZRluzQQ?=
 =?us-ascii?Q?A5/7jI1wh61zCBMnlAit/9nj6ISZJDyr9ayOa3BsazIdh/UrTA4jRt9GXbmE?=
 =?us-ascii?Q?UwhYvUcK9AUwDZ/WZBSXv17FmfRpUpnJtLYHX/CPMCT9+EmAYIhaRggaOBHj?=
 =?us-ascii?Q?0P8Y/8qSQfTcILioa+SGmQVt/ZNxkdum8qdcTSoVV7KEqN8yuz5JCmyasMIF?=
 =?us-ascii?Q?g+IGYTY/ir8xbZSpdspOWxA+eHoqV3fXuR/an6DctospsrmAqCpSw7/1wR8y?=
 =?us-ascii?Q?BS5nsHTunBL+zc6AfN3TWR+fjBVrGL++FGYjOVb2gbNyLrUsTtTdHwJXCYjs?=
 =?us-ascii?Q?Vd5KxnUaDaULTBy75jRjemGuF83iyOuRHF8zx5TwBWTFvvCDOXT4ag6yPXxr?=
 =?us-ascii?Q?trOYvs6AMebV3+xounPZ/54CKYkDxGnKi/ESC2VByZR12AElvv7ZzsZdoeOh?=
 =?us-ascii?Q?6KtphhAkA0PhTMW46UpXqeanFVIa01rDgZAKVg7kIk7uQqKy83+PPxU5b0hy?=
 =?us-ascii?Q?bxxtkEwjgoUtRQeecYttQZd2Af7vjCokLu1IXvsNxzz4Jvo6PUTzqiW+yGW8?=
 =?us-ascii?Q?4zqe16Oo4rQqSrt79iBm7DyYSf7WzDNH54D5BtIEYhAaVoMb+lPNv1rePBor?=
 =?us-ascii?Q?CrjFDUAaBKncLxdiz1HxtuNJpjz3BH6DLY0P7h8dcjBkhiu+oWKQ0DiHdjQq?=
 =?us-ascii?Q?YP5S51bLrUdFUFq6J65ogU5OBxW7YEDXZuazhA4UmNJbSIlrLS/LC+oonUaY?=
 =?us-ascii?Q?GrJXyaaNWZA7cgrSAvAo3Ro575d+I0amNnqe9vVk2IdH0K6Pq1Gy4Fm3HVLk?=
 =?us-ascii?Q?t0QU77Yz9PHeEnGQwmp0jjnR/yZfGIU4+XIBjvhIIY5bXhwweKO5/vLAiFrv?=
 =?us-ascii?Q?Du+JGESurpwMmOPrumzszl5eVeTFE2XZQuWdfm5NUnAnPxkZ/4X8cQ4AdTGP?=
 =?us-ascii?Q?TmDKWTyKfXZoOEfdvFrdiO0JKCtN4n/M8W0yYqX8wdRod1zobexsJ5BqhrWB?=
 =?us-ascii?Q?eB8O8qUPYI8qPxNEkWRETGUODNpDQkExmYqjeNu2E6HB93hhK2305NzHzerZ?=
 =?us-ascii?Q?vom8bFDiZrGG7GvaQjY8JBtJuy8QlrI=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 499f85c8-301c-475d-ffa4-08da3ddd2b21
X-MS-Exchange-CrossTenant-AuthSource: BY5PR10MB4196.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 May 2022 23:28:54.9248
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KzCkyMa+wAAduqGYHbviaVI+q/wY1l0ETiNsCXf/2cUEIBxr5dn36twGCc14G2ysUVO89O3bfPzOhRIQfGkrgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1001MB2163
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.486,18.0.874
 definitions=2022-05-24_09:2022-05-23,2022-05-24 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 mlxscore=0 mlxlogscore=999
 spamscore=0 suspectscore=0 adultscore=0 bulkscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2204290000
 definitions=main-2205240116
X-Proofpoint-GUID: vNl16qRhxUMmMQmAuEPxJXZrb1MiSw9G
X-Proofpoint-ORIG-GUID: vNl16qRhxUMmMQmAuEPxJXZrb1MiSw9G
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Clarify that madvise only works on full pages, and remove references
to 'bytes'.

Update MADV_DONTNEED and MADV_REMOVE sections to remove notes that
HugeTLB mappings are not supported.  They now are supported.

Under 'Linux notes' describe addr requirements and length handling
for ranges in HugeTLB mappings.

Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>
---
 man2/madvise.2 | 36 ++++++++++++++++++++++++++----------
 1 file changed, 26 insertions(+), 10 deletions(-)

diff --git a/man2/madvise.2 b/man2/madvise.2
index f1f384c0c..c3b0615cb 100644
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
@@ -170,24 +174,24 @@ Note that some of these operations change the semantics of memory accesses.
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
@@ -196,9 +200,9 @@ any filesystem which supports the
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
 .TP
 .BR MADV_DONTFORK " (since Linux 2.6.16)"
@@ -596,6 +600,18 @@ that are not mapped, the Linux version of
 ignores them and applies the call to the rest (but returns
 .B ENOMEM
 from the system call, as it should).
+.PP
+If the specified address
+.I addr
+is within a mapping backed by Huge TLB pages, then
+.I addr
+must be aligned to the underlying Huge TLB page size.  If the range
+specified by
+.I addr
+and
+.I length
+ends in a mapping backed by Huge TLB pages, then the end of the range
+will be rounded up to a multiple of the underlying Huge TLB page size.
 .\" .SH HISTORY
 .\" The
 .\" .BR madvise ()
-- 
2.35.3

