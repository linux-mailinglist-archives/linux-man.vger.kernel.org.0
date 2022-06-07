Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A4247540038
	for <lists+linux-man@lfdr.de>; Tue,  7 Jun 2022 15:38:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243635AbiFGNil (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Jun 2022 09:38:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235395AbiFGNik (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Jun 2022 09:38:40 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0172D5EDC7
        for <linux-man@vger.kernel.org>; Tue,  7 Jun 2022 06:38:39 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 8B73A61423
        for <linux-man@vger.kernel.org>; Tue,  7 Jun 2022 13:38:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A4DFC34114;
        Tue,  7 Jun 2022 13:38:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1654609119;
        bh=Bwe9C9fpm5/wa5CCHHa81FzHD4CCFtaHv1J8Q4DvtGA=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=qRmO/ydHplieCTQd95U3kXRkKzwWTBbNgku65SX60HMe5iTm5eKRtSBRDHlftUO8R
         hKZ3Pft4peeKScyQ8wqHRBbQC/6RTo8v9ZWvovNil+qSuu5vpE7+c7EMICnOE1GoYO
         aN0dTFKCGwsA1Pr2W+d/OFb0TPMpifYhjR+vgayGWWeCH54UwB+5XnkPnsjE5iBjud
         UPN+5wtIjW/dD6NWWp4Nobt6FaXrcXYt2jXMwq/KwaLvucdvtRQG4yqS2URgEmOh+0
         cJyjNoSssVKmwrOoc+erNikoEJXhzILs8bk4WcJTaXHandaT8/IUtUvnOOnFtwFsCh
         Xh//sSHNEE9yw==
From:   Christian Brauner <brauner@kernel.org>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Christian Brauner <brauner@kernel.org>,
        Christoph Hellwig <hch@infradead.org>,
        Aleksa Sarai <cyphar@cyphar.com>
Subject: [PATCH 2/4] mount_setattr.2: update conditions to create ID-mapped mounts
Date:   Tue,  7 Jun 2022 15:38:18 +0200
Message-Id: <20220607133820.1721352-3-brauner@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220607133820.1721352-1-brauner@kernel.org>
References: <20220607133820.1721352-1-brauner@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1237; h=from:subject; bh=Bwe9C9fpm5/wa5CCHHa81FzHD4CCFtaHv1J8Q4DvtGA=; b=owGbwMvMwCU28Zj0gdSKO4sYT6slMSTNDzn+2cvHlXWFwKOdkjr5d8Td2g8Gia2S1XrwlGXuZLvu w73xHaUsDGJcDLJiiiwO7Sbhcst5KjYbZWrAzGFlAhnCwMUpABOZpcXwz7j9qPNM+dvr32ksec4zpa E6SLv/eWXECl/T+RkSy+VXqjAyzDSKDdltHGgaVeJ4cn6d8yKJXXxm2j8W5vPvW8NSYiXLAAA=
X-Developer-Key: i=brauner@kernel.org; a=openpgp; fpr=4880B8C9BD0E5106FC070F4F7B3C391EFEA93624
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-8.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Newer kernels in principle support the creation of ID-mapped mounts for
filesystems mountable in non-initial user namespaces. Currently, no such
filesystem has been ported to support this though. But we should
nonetheless update the conditions.

Signed-off-by: Christian Brauner (Microsoft) <brauner@kernel.org>
---
 man2/mount_setattr.2 | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/man2/mount_setattr.2 b/man2/mount_setattr.2
index 2bf1b24da..0999373d6 100644
--- a/man2/mount_setattr.2
+++ b/man2/mount_setattr.2
@@ -649,10 +649,11 @@ The following conditions must be met in order to create an ID-mapped mount:
 .IP \(bu 3
 The caller must have the
 .B CAP_SYS_ADMIN
-capability in the initial user namespace.
-.IP \(bu
-The filesystem must be mounted in a mount namespace
-that is owned by the initial user namespace.
+capability in the user namespace the filesystem was mounted in.
+.\" commit bd303368b776eead1c29e6cdda82bde7128b82a7
+.\" Christian Brauner
+.\"     Note, currently no filesystems mountable in non-initial user namespaces
+.\"     support ID-mapped mounts.
 .IP \(bu
 The underlying filesystem must support ID-mapped mounts.
 Currently, the
-- 
2.34.1

