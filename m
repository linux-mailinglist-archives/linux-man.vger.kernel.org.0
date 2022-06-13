Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 378EC549DEE
	for <lists+linux-man@lfdr.de>; Mon, 13 Jun 2022 21:44:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238656AbiFMToL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 13 Jun 2022 15:44:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238885AbiFMTn6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 13 Jun 2022 15:43:58 -0400
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com [205.220.177.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A88277983A
        for <linux-man@vger.kernel.org>; Mon, 13 Jun 2022 11:14:24 -0700 (PDT)
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
        by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25DHn97O017861;
        Mon, 13 Jun 2022 18:14:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : to : cc :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=corp-2021-07-09;
 bh=XSkdrm/wN9LKAU3s2RFaf2PquG5LUc993pRR5IHKgYE=;
 b=vsaUoOyrk+Ldmbsyd0rjuBtGdriIs1yabSycjfe0SFTalCaVjJkz5roEPWVwh+nftURt
 wAjG+/Aq+3wfWQKE9xgYlsuUNLPtXrXjMNWHCRbKiFEmqd1IrLIjttns6IKSwrvlyos0
 okyt/PyhrYVaQ0hylCpk1Kz1TMgyxL+Nwwo8264Hvo6TZr9Zw/4gZ3wjd2NWtb4hM5j2
 PwuNPcdCeX8ofpAQG152BJWY7o8YwYgpLsVQa3dY7oV7d2XZSssMZHxPfqLgo1nUSVgS
 2e4E3lq/M56PwQRs09eN217pyq+kGcKZXTew5UmeKuT2GmlsG7bvcLK2Vl0axKSKZ21/ Kw== 
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
        by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3gmhfcktk3-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Mon, 13 Jun 2022 18:14:08 +0000
Received: from pps.filterd (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
        by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.16.1.2/8.16.1.2) with SMTP id 25DI6FU6014720;
        Mon, 13 Jun 2022 18:14:08 GMT
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2171.outbound.protection.outlook.com [104.47.56.171])
        by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com with ESMTP id 3gpa7bg65q-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Mon, 13 Jun 2022 18:14:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oY20hrS5S+djNfklDEOsHanadB2fcmhA7MyKoTVUnttjZalEhkzGfBbXYwlBhSU5NwOHoVlsWgWan8V50laGvGd6UKb4ZBjXxKkiWnGruI6G8HZQxE6jDl0PS8Nc9gd3mcHDe1e6JXVspBHVhB+6W4M4bfOz3uNcQiWH1vwN8m2Tft25KQZ1uZ8i4rox93gZ8TLUK9LTuj07rlYQNzHu52y/9wMKdpoNV4tTR1ogXZ0wp586drr4Z2B78SNmZwiNQoPx3gKgjheeQyDjogY7HLyg3Psy4sFx5NtYmFdT7nl+65i/oJBI0VC4iq75Hv8Sgn5owoSpVfuMalkqvIEwqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XSkdrm/wN9LKAU3s2RFaf2PquG5LUc993pRR5IHKgYE=;
 b=RzY82QFlFs9/NrI7ajUwlxNa/MUIp9gP7LiiPB1hjKJ+K3C9fu+HoT/22Qc+Zs0fGfg/dvxgnBOn+ejCwWgeC+pnCBHpa/CBe0Nj6G/JPZuhXmcb30D32+cdny9wGskc5/FuA8Uj7FyjdVGZI8l2yQWXoMLDRmp91j/6s+1+AfNYs5/aJTaxEcR9P1ZNZstfEROl/RHvBWcIzdoawJOBOT7JHGMdROuSNGX069y+rwGvawXx1gtB0zMWG+qPBtgwsVb3qwsDOoNIu8Sf/egulok9Km1wu9mjENLFGcfdHhlUISLZfBdFy/CO4kU8f7K8cG0xSlz+qd+ayexZH5a3Ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XSkdrm/wN9LKAU3s2RFaf2PquG5LUc993pRR5IHKgYE=;
 b=XG3lwkSgl4dzimWm+wKvl5qoQq8a7GDARuSkhkMBfEwCEkbRKY3FPTNiTTL5hFKsyNDVIeLRbn2bIb2dswIHK6fjxpWn2PeNmhnqhdjODJyx+Xok42BooG8qOXHpu0QVu6pdz6Nx0oLl0b117RKGdd3hkYfk7Ik01RTQTHQNhPM=
Received: from BY5PR10MB4196.namprd10.prod.outlook.com (2603:10b6:a03:20d::23)
 by SJ0PR10MB4720.namprd10.prod.outlook.com (2603:10b6:a03:2d7::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.12; Mon, 13 Jun
 2022 18:09:03 +0000
Received: from BY5PR10MB4196.namprd10.prod.outlook.com
 ([fe80::2125:9bb7:bfeb:81f9]) by BY5PR10MB4196.namprd10.prod.outlook.com
 ([fe80::2125:9bb7:bfeb:81f9%8]) with mapi id 15.20.5332.022; Mon, 13 Jun 2022
 18:09:03 +0000
From:   Mike Kravetz <mike.kravetz@oracle.com>
To:     linux-man@vger.kernel.org, linux-mm@kvack.org
Cc:     David Hildenbrand <david@redhat.com>,
        Muchun Song <songmuchun@bytedance.com>,
        Naoya Horiguchi <naoya.horiguchi@linux.dev>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Dave Hansen <dave.hansen@intel.com>,
        Michal Hocko <mhocko@suse.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Mike Kravetz <mike.kravetz@oracle.com>
Subject: [PATCH] hugetlbfs: zero partial pages during fallocate hole punch
Date:   Mon, 13 Jun 2022 11:08:58 -0700
Message-Id: <20220613180858.15933-1-mike.kravetz@oracle.com>
X-Mailer: git-send-email 2.35.3
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR03CA0125.namprd03.prod.outlook.com
 (2603:10b6:303:8c::10) To BY5PR10MB4196.namprd10.prod.outlook.com
 (2603:10b6:a03:20d::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 735363a6-54c0-4223-9267-08da4d67cc2d
X-MS-TrafficTypeDiagnostic: SJ0PR10MB4720:EE_
X-Microsoft-Antispam-PRVS: <SJ0PR10MB4720F66CE359CF5153868474E2AB9@SJ0PR10MB4720.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +MliPzweLudMxgbfYKMbiSzcnWpLysRKYbxWsrIRDLdjajtEK1zpC8Vn2/93UBIu8u4yKDHIgfrHAWwoU7igyHskzQM/k4AekBvKjC9Qij1ARlOA73Vw0uaIz+FDXzOHMFGfnD+UeAR4pZeZG3rBD7zh6tuS/U4DcUHAwvtU0pt+ZF4QWniZGYc2PchyzkyhknwtXaki7PsCUMzHTLmruXOKQCCQZzXW1REVn20YmtxOdvgzMGi3GKAOsQD17qrXOYO0TISSC74C2ZiYrAAb8rclbWYCtCbPS+YWgvpBtgeTJRrULr4DNqAeABD3mswWPZMUhpMFZ15UVOUhjzztLkOJaR+Wwx2HoBf6hWwR2kOj+DbfdReUkLrcsOSVarz5iW7BaRx8Vu1JDpZk2hveHV4WQ9GwuydcqZXUWCi26/+AYWN9qC4SY+9dRpIkwyJ/yn9w2HRqanJ6UWarjFqYxsNq3vycz9XT05hmjUiMV4IdyF/Ko+QdH6I/z5Sn5jp+0J6DK/g71hXWx7+3NGzMgdPnkaC+8n/0IEcz/2En7/dZv7K7cP2iYBnudFe6duHiW9oUtDbhyPb5HhL7o979SlRNunWl2yNNH9S/UfsRjq/SIYzH8TsREXpM6RZFZX0wkh/dlgLGL/WUOpOGuZ9eFYaZmNahim+gRoDIzXkwqkqB1T7ArxKo+L0cWQK4xD5H0y13x4ViDMB50gPvMaomUL+1krcKFbPBW78dwzkCaWJPoqyJFq18cBDconnXOFoWoC+Ipkni2EndJr41IGdgng==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR10MB4196.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(366004)(6486002)(508600001)(316002)(966005)(66946007)(54906003)(6512007)(26005)(5660300002)(44832011)(107886003)(2616005)(66476007)(4326008)(8676002)(66556008)(2906002)(86362001)(36756003)(8936002)(186003)(1076003)(6506007)(6666004)(38100700002)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?yFmMznbMx9WTZRasc0t/98Lv5C10nyP/BMD4bUKV0l4ZHJuEhQIj9teno7PM?=
 =?us-ascii?Q?+QTpIBpxqcOpJ+oGpAGXfnvzLu8xkWNtxbBlFkHrOe8kmqmDlpEE8oidfY0S?=
 =?us-ascii?Q?hoF3e+irUIFQmOs+nMZtHJVWK5qbrq359i+ozyvb6MLzhUu7zic2SayL9HKG?=
 =?us-ascii?Q?npY0MBB4VwCGFVgd+5hiTuVAZBQvJDnAlIWEqrCTFZhLN5UZjYu5dMlRMhEw?=
 =?us-ascii?Q?/5k8lpIUrhCZ+MrnqeWmAojPwRGMoYEdt4LYj6FIdQVfYHyihB+8ObuF1LdL?=
 =?us-ascii?Q?zDhp6vGELVeprogZQcqgFo5Yat86SprZ3auIqfSIjKRvLdrsVmpnFzvvZMAD?=
 =?us-ascii?Q?5mvfnPr66WhBTpbqPF9zfj8ZzczTtwzLMbAkn5VgJpzHnKKI7ALzF2rYa+vg?=
 =?us-ascii?Q?Ek0YR8JRk9IirEYiLwyD7PuppHqTDNl5QBrNeHFF7VTyzRFez6zIjJ3VnLIh?=
 =?us-ascii?Q?NKcZYsrN7vxx+gKLYh0V/Pvgjx9aRLWd7lTZo7/jdCdTrvjC/q9Epp3bP9gZ?=
 =?us-ascii?Q?sjOVRDoyrCJEkNtfS2ECg5z+LyeOWbe5di9W9R930KIdYzWkLvEXH7ezEqkB?=
 =?us-ascii?Q?w6PS/E51yvkM6BNupgbQN2HzrQo+txmLDotOPyGjWxDoOqoY9OhdazAQTShi?=
 =?us-ascii?Q?8i477QqP6vtcov6THv63ecgoHBhqWI8Cdm9xykeN5XQN4+xSSZ00Yp0wHdaz?=
 =?us-ascii?Q?mt7PAnyedFjDtHZFnH5V5podCOGgfYm7UhIug5zw+Jjcdax9I/riqwJg/Gal?=
 =?us-ascii?Q?9G12fKmZt7GpEhouHykOMYEsTWja7cilKMwPWERW0b1N4GZfkuIu7X5SkyoT?=
 =?us-ascii?Q?5MaK8QX3E7M6AGKPEoaz+vEiCNJjAE8BBQ2Nr5VAK/Ac/EfkI3vKaATBqGVF?=
 =?us-ascii?Q?lMxVjVoRDCAgFdFPEjxWfmuguoaxFV7PbZQtibnsAmvdaw3vGA6Y9eH555Ih?=
 =?us-ascii?Q?3+MFra+COigaBgeLs2K32AMa0uNub/lmnx58eatwoD2J7Zz1bfxiJyFCYu60?=
 =?us-ascii?Q?fdNTrz/LArK9XBnMy8Un6Z8aNt9XB0x2Toxo5ltuQ5YSwT3Azm4hrosemzbZ?=
 =?us-ascii?Q?uaC6JpKTBNvdJXYV3BzUmr88j3XA2EbNb786E/cnMn7zDTHuH93LCCRnWfV3?=
 =?us-ascii?Q?Lx78O5f6bZSS+SXE2Fizx3Rryk9UPM2VUAEY5k2APYUEEHWcqFKLW7I63L7i?=
 =?us-ascii?Q?YWMRHBK82xa4pPaShSdUhTBMLRg4wy3OWXp7mrvgoQwBQ2dZRIiKyTaKVhPE?=
 =?us-ascii?Q?jpdPPv5YVvOdMlWtfagkwZC58ohEAiSFN0XkPkeTPB9ukScQjSq3+As+Ohbu?=
 =?us-ascii?Q?5jLOY0Wt9aU3AeNojS4uF174npVtz4tl6U2PB75FGoYiQqqa+L1Mxs7rlEGC?=
 =?us-ascii?Q?obwLsJjd9B7uagcBzVJEW+9BxZT1rB0NyCviXJzLSBkQ6Tc2K27syYY0auJ7?=
 =?us-ascii?Q?uRTRa2JvBWVGADzGq0nzjX5vBk6JMqgo+eQ3q0+WkJTpOQuV+WqdbF1jHEop?=
 =?us-ascii?Q?I+Z8omaf1cUYBdHzkmybW7xZf8Ici0lf0IpfQqSRu518KretWvODGCD8UioL?=
 =?us-ascii?Q?ytLY1TYoTH86XbcEag+FKnXFLPNS6M3IQ+ZlbLMOHB6qwbi8Ui/1MEAQ/L0Q?=
 =?us-ascii?Q?P2EmwIdQZ9jXUxiTidmZjq1gCqwvR6BG33BP80CH/onYIS7Vwl/ooonsGQuu?=
 =?us-ascii?Q?6fzmDuUbJK9UsiRfp74nYEJMFIVp4kQbpdv3rxsvMDC1jKfLN9nwJuXiqR1c?=
 =?us-ascii?Q?j3jZop7f+r3znX2Nptwq6vDdnFO5Nhc=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 735363a6-54c0-4223-9267-08da4d67cc2d
X-MS-Exchange-CrossTenant-AuthSource: BY5PR10MB4196.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2022 18:09:03.0261
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PO8VLO/nIC2qJUt/4i0yGrsVDPGmKOhF57+C08sxIIUjiOIIE9LmccoPn0AfidJRqgrowiSAFtNsr8JqdiY4/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB4720
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.517,18.0.874
 definitions=2022-06-13_07:2022-06-13,2022-06-13 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 phishscore=0 bulkscore=0
 adultscore=0 spamscore=0 mlxlogscore=999 mlxscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2204290000
 definitions=main-2206130077
X-Proofpoint-ORIG-GUID: eHCaD4Q8xjUl-4QwcYXNb8JVuAR-vu2S
X-Proofpoint-GUID: eHCaD4Q8xjUl-4QwcYXNb8JVuAR-vu2S
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

hugetlbfs fallocate support was originally added with commit 70c3547e36f5
("hugetlbfs: add hugetlbfs_fallocate()").  Initial support only operated
on whole hugetlb pages.  This makes sense for populating files as other
interfaces such as mmap and truncate require hugetlb page size alignment.
Only operating on whole hugetlb pages for the hole punch case was a
simplification and there was no compelling use case to zero partial pages.

In a recent discussion[1] it was assumed that hugetlbfs hole punch would
zero partial hugetlb pages as that is in line with the man page
description saying 'partial filesystem  blocks  are  zeroed'.  However,
the hugetlbfs hole punch code actually does this:

        hole_start = round_up(offset, hpage_size);
        hole_end = round_down(offset + len, hpage_size);

Modify code to zero partial hugetlb pages in hole punch range.  It is
possible that application code could note a change in behavior.  However,
that would imply the code is passing in an unaligned range and expecting
only whole pages be removed.  This is unlikely as the fallocate
documentation states the opposite.

The current hugetlbfs fallocate hole punch behavior is tested with the
libhugetlbfs test fallocate_align[2].  This test will be updated to
validate partial page zeroing.

[1] https://lore.kernel.org/linux-mm/20571829-9d3d-0b48-817c-b6b15565f651@redhat.com/
[2] https://github.com/libhugetlbfs/libhugetlbfs/blob/master/tests/fallocate_align.c

Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>
---
 fs/hugetlbfs/inode.c | 68 ++++++++++++++++++++++++++++++++++----------
 1 file changed, 53 insertions(+), 15 deletions(-)

diff --git a/fs/hugetlbfs/inode.c b/fs/hugetlbfs/inode.c
index eca1d0fabd7e..b0d0947a7e9b 100644
--- a/fs/hugetlbfs/inode.c
+++ b/fs/hugetlbfs/inode.c
@@ -584,41 +584,79 @@ static void hugetlb_vmtruncate(struct inode *inode, loff_t offset)
 	remove_inode_hugepages(inode, offset, LLONG_MAX);
 }
 
+static void hugetlbfs_zero_partial_page(struct hstate *h,
+					struct address_space *mapping,
+					unsigned long start,
+					unsigned long end)
+{
+	pgoff_t idx = start >> huge_page_shift(h);
+	struct page *page;
+
+	page = find_lock_page(mapping, idx);
+	if (!page)
+		return;
+
+	start = start & ~huge_page_mask(h);
+	end = end & ~huge_page_mask(h);
+	if (!end)
+		end = huge_page_size(h);
+
+	zero_user_segment(page, (unsigned int)start, (unsigned int)end);
+
+	unlock_page(page);
+	put_page(page);
+}
+
 static long hugetlbfs_punch_hole(struct inode *inode, loff_t offset, loff_t len)
 {
+	struct hugetlbfs_inode_info *info = HUGETLBFS_I(inode);
+	struct address_space *mapping = inode->i_mapping;
 	struct hstate *h = hstate_inode(inode);
 	loff_t hpage_size = huge_page_size(h);
 	loff_t hole_start, hole_end;
 
 	/*
-	 * For hole punch round up the beginning offset of the hole and
-	 * round down the end.
+	 * hole_start and hole_end indicate the full pages within the hole.
 	 */
 	hole_start = round_up(offset, hpage_size);
 	hole_end = round_down(offset + len, hpage_size);
 
-	if (hole_end > hole_start) {
-		struct address_space *mapping = inode->i_mapping;
-		struct hugetlbfs_inode_info *info = HUGETLBFS_I(inode);
+	inode_lock(inode);
 
-		inode_lock(inode);
+	/* protected by i_rwsem */
+	if (info->seals & (F_SEAL_WRITE | F_SEAL_FUTURE_WRITE)) {
+		inode_unlock(inode);
+		return -EPERM;
+	}
 
-		/* protected by i_rwsem */
-		if (info->seals & (F_SEAL_WRITE | F_SEAL_FUTURE_WRITE)) {
-			inode_unlock(inode);
-			return -EPERM;
-		}
+	i_mmap_lock_write(mapping);
+
+	/* If range starts before first full page, zero partial page. */
+	if (offset < hole_start)
+		hugetlbfs_zero_partial_page(h, mapping,
+				offset, min(offset + len, hole_start));
 
-		i_mmap_lock_write(mapping);
+	/* Unmap users of full pages in the hole. */
+	if (hole_end > hole_start) {
 		if (!RB_EMPTY_ROOT(&mapping->i_mmap.rb_root))
 			hugetlb_vmdelete_list(&mapping->i_mmap,
 					      hole_start >> PAGE_SHIFT,
 					      hole_end >> PAGE_SHIFT, 0);
-		i_mmap_unlock_write(mapping);
-		remove_inode_hugepages(inode, hole_start, hole_end);
-		inode_unlock(inode);
 	}
 
+	/* If range extends beyond last full page, zero partial page. */
+	if ((offset + len) > hole_end && (offset + len) > hole_start)
+		hugetlbfs_zero_partial_page(h, mapping,
+				hole_end, offset + len);
+
+	i_mmap_unlock_write(mapping);
+
+	/* Remove full pages from the file. */
+	if (hole_end > hole_start)
+		remove_inode_hugepages(inode, hole_start, hole_end);
+
+	inode_unlock(inode);
+
 	return 0;
 }
 
-- 
2.35.3

