Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8AE1743D3B2
	for <lists+linux-man@lfdr.de>; Wed, 27 Oct 2021 23:16:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244268AbhJ0VTC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 27 Oct 2021 17:19:02 -0400
Received: from mail.python.org ([188.166.95.178]:52090 "EHLO mail.python.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S244273AbhJ0VSz (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 27 Oct 2021 17:18:55 -0400
X-Greylist: delayed 528 seconds by postgrey-1.27 at vger.kernel.org; Wed, 27 Oct 2021 17:18:55 EDT
Received: from auth2-smtp.messagingengine.com (auth2-smtp.messagingengine.com [66.111.4.228])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by mail.python.org (Postfix) with ESMTPSA id 4Hfh954j8dzpG9j;
        Wed, 27 Oct 2021 17:07:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=python.org; s=200901;
        t=1635368857; bh=P+djIUM6/mDOpSBRgxW2P4hDGQwY8oCCyOpi8sKBU7E=;
        h=From:To:Cc:Subject:Date:From;
        b=dtFKpBIR+iX//scPkFmU8cKMxIOsplC5nJ32YyR0DcoN1VMFRsCtvyrbN5DNtO1Ua
         yHsYblLJ1AbTYa5bSmA13LnTW9R20ifx7/7l3fPTJg3PMdVe0Ewdro8stUHUJG1XSo
         o0ns3qwO/R8ZhEwkB8i1ZAulXw3qOd84KcpxrcIw=
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailauth.nyi.internal (Postfix) with ESMTP id 0017E27C005B;
        Wed, 27 Oct 2021 17:07:35 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Wed, 27 Oct 2021 17:07:36 -0400
X-ME-Sender: <xms:l795YThTFLgsleS0_Gs_CpavTH8ScVHCj4BRL-Cnxau4i7g6_pd3Fg>
    <xme:l795YQDbATNllSLIbEWDDhvBu0us9GE-O8wqzRZQRl-0MxBLO6ky3i_j0SrpTqey7
    fI8NXjn4AjTGRVVEg>
X-ME-Received: <xmr:l795YTGX7D3821jJOqTKIE-3Pbf2B5zpQiYKRvgmIdIK9cC10HCCOx4s0OdZOLtaopAB5xGYndfqDfAT3lpj1Japt4XbZv6KNrMbig>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrvdegtddgheefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
    dttdenucfhrhhomhepuegvnhhjrghmihhnucfrvghtvghrshhonhcuoegsvghnjhgrmhhi
    nhesphihthhhohhnrdhorhhgqeenucggtffrrghtthgvrhhnpedtjeevveetffejvdfhle
    efteduvdehieegieduuefhjedukeetueevfeetheekkeenucevlhhushhtvghrufhiiigv
    pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegstghpodhmvghsmhhtphgruhhthhhpvg
    hrshhonhgrlhhithihqddvtdduieekfeefjedqudduleeitdeiheefqdgsvghnjhgrmhhi
    nheppehphihthhhonhdrohhrghesfhgrshhtmhgrihhlrdgtohhm
X-ME-Proxy: <xmx:l795YQTSoRFb4vGYSF21AIT66_bR3T1agsNeJqdUFrbq_-TmxfnM1g>
    <xmx:l795YQzIiTRvxNzqrzhRcl1DiwZSQfiCmdnNMoiZWEs22AwrV4WYaA>
    <xmx:l795YW6RW3w7hJYdQYLtOaM5hVXzOga8TLBCMd2w6vjyzaxoZlcGrg>
    <xmx:l795YdqZN7kn6DVZN8G56HRiXC0nPYVRNti66x9c5soUohZDwM3DWw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 27 Oct 2021 17:07:34 -0400 (EDT)
From:   Benjamin Peterson <benjamin@python.org>
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com, mtk.manpages@gmail.com
Subject: [PATCH] ioctl.2: SEE ALSO: Add ioctl_ficlone
Date:   Wed, 27 Oct 2021 14:07:32 -0700
Message-Id: <20211027210732.454713-1-benjamin@python.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Benjamin Peterson <benjamin@python.org>
---
 man2/ioctl.2 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man2/ioctl.2 b/man2/ioctl.2
index 85a9d2351..28d985a68 100644
--- a/man2/ioctl.2
+++ b/man2/ioctl.2
@@ -196,6 +196,7 @@ for the various architectures.
 .BR fcntl (2),
 .BR ioctl_console (2),
 .BR ioctl_fat (2),
+.BR ioctl_ficlone (2),
 .BR ioctl_ficlonerange (2),
 .BR ioctl_fideduperange (2),
 .BR ioctl_fslabel (2),
-- 
2.32.0

