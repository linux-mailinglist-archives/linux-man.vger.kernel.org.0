Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17305758B1F
	for <lists+linux-man@lfdr.de>; Wed, 19 Jul 2023 04:05:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229506AbjGSCFx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Jul 2023 22:05:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229478AbjGSCFw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Jul 2023 22:05:52 -0400
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2074.outbound.protection.outlook.com [40.107.223.74])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CB72FC
        for <linux-man@vger.kernel.org>; Tue, 18 Jul 2023 19:05:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k12OpIf5N8DuzQ+oidWmlUn6DiHeroS9+MW9MPH3WBY6XiFplZQQEpMX3mAvkYE18qfuDZYaUVz0dkXUFv3k+cOyId8HOMJv8F82f+j2bDRQyy2bHFxY6v0KCJGPsVmAZL0U75+1bmHnmGwb++c/z80zP9llJMJihFFZENcG1Uok5cE/hLgGxGU+xh+w4MHvFy/18Ruv7rYmZystoMpk2eCdSkcn4JBgrPrlCBl+1H6qCYbpyLZt/FadQLE2wDAz7SBHNmWM5FB4Ppg1GKjEDOCyE7MT7DHPcfi8RuO8HiNX/YuQMyHpM3DxmibKSULOY3t5LPrD7OiPt7RpjNMx6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aVNb0HTSPHHS1m7w11gFIxObLdWX+1Vnb4QALZRXtXU=;
 b=dALohNCn8K5k1SdYS+nyooKb/zSuiM/VNmKqN2PPevMDKr2HYQ1g94xGw+wsSSaAZeFt2M6FlRFRNiWUDEqPOvdNgLfeJD6Mn4TmCn1QjZGUDHffSer+JLMT8jRu+5VVsLvynq/KTK23fPEVyDc5MLeiKGOa2h3/MBPh4qzaeayYN1mz0uMHgKTHWQ0DMH0auutK9camFWbxpj9kNETl/E5PIK9SOIAtbbnSaPHy1bRq1hmCG5+EZo+DvZyyAYVZpusDHh//OOErWKEGyWfcuLXpWLVJ25TIjOTEulqRO//B55WDJrkeijI95SDMiiw6zwqmkjqdkLZqj0SzAd1now==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=gmail.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aVNb0HTSPHHS1m7w11gFIxObLdWX+1Vnb4QALZRXtXU=;
 b=ousgwSGsHaHlnsIbDg2zaHOmwaqsewsvKdBZgk1mJfvsQJErd1rmgs9/GoTbK3ZavDBwvL2EetD3kAvrVJgx+SyrXGYBGthLD6JZAZl1zXkheMN4EsdnO1ZtZzdPLSuMtDzV7PsKu2tkJccwW+6oLN55q/veik+tepQ8tAav1oOHkYR25D4F9XoTFpHc1sF74DsmqgzTZsRGNKCzJirvNIhmBuMGFys/1MLkVNfIFJy7VD1gbU/f4lS/EnsXtMFMay7ZyekbibWZ/BgfwPunKt0595YP+mGke44JtGQugadVvU917soq123R9C9ylZHxi6EZlZhoNdUyyli2SB+uUA==
Received: from MW4PR03CA0259.namprd03.prod.outlook.com (2603:10b6:303:b4::24)
 by DS0PR12MB7778.namprd12.prod.outlook.com (2603:10b6:8:151::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Wed, 19 Jul
 2023 02:05:48 +0000
Received: from CO1NAM11FT083.eop-nam11.prod.protection.outlook.com
 (2603:10b6:303:b4:cafe::bd) by MW4PR03CA0259.outlook.office365.com
 (2603:10b6:303:b4::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.33 via Frontend
 Transport; Wed, 19 Jul 2023 02:05:48 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 CO1NAM11FT083.mail.protection.outlook.com (10.13.174.92) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6588.34 via Frontend Transport; Wed, 19 Jul 2023 02:05:48 +0000
Received: from rnnvmail202.nvidia.com (10.129.68.7) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.5; Tue, 18 Jul 2023
 19:05:35 -0700
Received: from rnnvmail203.nvidia.com (10.129.68.9) by rnnvmail202.nvidia.com
 (10.129.68.7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.37; Tue, 18 Jul
 2023 19:05:35 -0700
Received: from blueforge.nvidia.com (10.127.8.13) by mail.nvidia.com
 (10.129.68.9) with Microsoft SMTP Server id 15.2.986.37 via Frontend
 Transport; Tue, 18 Jul 2023 19:05:34 -0700
From:   John Hubbard <jhubbard@nvidia.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, <linux-mm@kvack.org>,
        John Hubbard <jhubbard@nvidia.com>,
        Vahid Noormofidi <vnoormof@nvidia.com>,
        Matthew Wilcox <willy@infradead.org>,
        "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Carsten Grohmann <carstengrohmann@gmx.de>,
        "Signed-off-by : Mike Frysinger" <vapier@gentoo.org>
Subject: [PATCH] man5/tmpfs.5: fix typo in reference to CONFIG_TRANSPARENT_HUGEPAGE
Date:   Tue, 18 Jul 2023 19:05:33 -0700
Message-ID: <20230719020533.1608867-1-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-NVConfidentiality: public
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-NV-OnPremToCloud: ExternallySecured
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1NAM11FT083:EE_|DS0PR12MB7778:EE_
X-MS-Office365-Filtering-Correlation-Id: 9179ea67-8a74-4d43-3ee6-08db87fcab9d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cCx51/1aFGVq5O0+64TSIvFi2408opv8V2gXOFAnqoWumvHp8stq+6ewCpfwClINJjdNPB3YsB28GJzwWKOMC257J76E/lCYFzt4ro69x5+e2vxjg3hEWNCGRIGhsJgBsOqv4I5DG5EsjhrzFUToR93MXmRCZeyuUxi2F+k7Edt/r2cYLUPWjcT8A08qfpJX9161GXl6guvrfCo3nnMY4PGBpy0v0oZBZpxS9QKJel9VPbzSGd2yb44GDXkqoVM0tDGqcoGcwgKMW7aF1RybaP1MOcLrvI0pS6Cnrusli6tXkCvRzSmAerQ7GX9Qwg0w4nIJwZErGMHt/Jaxle8RgZquKADLeiVvvP9nTRfpSwvJUadWClAOjIsmnGwZmAybYo1UT6RPIxKxxUcKEHROy98KOTz+pMRTRoesJpCqdBcH7JDj7+jhnD6UgT718lb/a8qlUGv0bAYHv8NKF/ul9zGiumVdqTcQs5AkMc84VoynYhzZ6ricl8QL0JvdMbdLw5kB3+Z/qVHqZdrIxjtnJMCKJDCeFlk3xKiA4MJGfUZwOacmvtd4+8uCbu9y/gQZuqfK0lviVqMrjHLHp+n5aAY/6I7JV2SZkivtWFDc9mE6C13q/Jw/hVywgqmmJUZucdYryPTAnvp0dwKSrOcU+lEdrqZOdOjXYUrJ/+eUu+voybX08FiSyFlxPeipkgpRr8YJy1qEltOfYKHaKmbv11HdcdsxnmwVnpp8K7+gmFmrGZZ4TYW1GXR4W7R6fgiL
X-Forefront-Antispam-Report: CIP:216.228.117.161;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge2.nvidia.com;CAT:NONE;SFS:(13230028)(4636009)(376002)(346002)(396003)(39860400002)(136003)(451199021)(82310400008)(46966006)(40470700004)(36840700001)(40480700001)(40460700003)(7696005)(4326008)(70586007)(70206006)(6916009)(478600001)(82740400003)(7636003)(54906003)(356005)(47076005)(336012)(186003)(1076003)(26005)(36860700001)(2616005)(83380400001)(426003)(36756003)(86362001)(2906002)(5660300002)(8676002)(41300700001)(8936002)(316002);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jul 2023 02:05:48.2212
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9179ea67-8a74-4d43-3ee6-08db87fcab9d
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.161];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT083.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB7778
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

In commit 462a385e9a2 ("tmpfs.5: Document current mount options"), there
is a reference to CONFIG_TRANSPARENT_HUGE_PAGECACHE. However, that
option was removed from the kernel via commit 396bcc5299c2 ("mm: remove
CONFIG_TRANSPARENT_HUGE_PAGECACHE"), a couple of years later.

The net effect is that CONFIG_TRANSPARENT_HUGEPAGE is now used in all
the remaining places in the kernel where
CONFIG_TRANSPARENT_HUGE_PAGECACHE had previously been used.

This has caused some minor confusion at the man page level, though. So
let's fix it by updating the man page to also refer to
CONFIG_TRANSPARENT_HUGEPAGE.

Reported-by: Vahid Noormofidi <vnoormof@nvidia.com>
Cc: Matthew Wilcox (Oracle) <willy@infradead.org>
Cc: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Carsten Grohmann <carstengrohmann@gmx.de>
Cc: Signed-off-by: Mike Frysinger <vapier@gentoo.org>
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 man5/tmpfs.5 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man5/tmpfs.5 b/man5/tmpfs.5
index 09d955898..cdd5f2fd8 100644
--- a/man5/tmpfs.5
+++ b/man5/tmpfs.5
@@ -115,7 +115,7 @@ Set the initial user ID of the root directory.
 .BR huge "=\fIhuge_option\fR (since Linux 4.7.0)"
 .\" commit 5a6e75f8110c97e2a5488894d4e922187e6cb343
 Set the huge table memory allocation policy for all files in this instance (if
-.B CONFIG_TRANSPARENT_HUGE_PAGECACHE
+.B CONFIG_TRANSPARENT_HUGEPAGE
 is enabled).
 .IP
 The

base-commit: c654cde5ec9e9fa975d5d041aa069489ab12a4ce
-- 
2.41.0

