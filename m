Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A95D1316D11
	for <lists+linux-man@lfdr.de>; Wed, 10 Feb 2021 18:44:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232192AbhBJRoK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Feb 2021 12:44:10 -0500
Received: from out1-smtp.messagingengine.com ([66.111.4.25]:49839 "EHLO
        out1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232891AbhBJRns (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Feb 2021 12:43:48 -0500
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.nyi.internal (Postfix) with ESMTP id BC9285C01AA;
        Wed, 10 Feb 2021 12:42:58 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Wed, 10 Feb 2021 12:42:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alyssa.is; h=
        from:to:cc:subject:date:message-id:mime-version
        :content-transfer-encoding; s=fm2; bh=E5Ozh9/1om322txAOTr/CT0KcM
        pbQJhqLN+HcoHUVro=; b=h8PXhuSFmooWREb4op02wSDTv9nEXzBCRJVFoXQaqs
        HnJa8/RBnBCppEBE7M9WrsW/GSQwP3O6ZiDk3r9ieKNKVRCBQlEJ5FNwHTvH67e8
        a5ZHK3ztDU8o1GMZq7aR++Zltyw8XkXSQjigz701iEJXv4y+vMytd5Q/mJggiS6J
        kYRVYJzG+upthHXqS9O6XVdxeGYbtg52p91naYKfs3sl3G5sLkr/JhrHqfjESezu
        s8ObKi2shkm+l91sksbPc2avEVPClymlYwtw/colRHQwOaYy3lQvlphLA6BV+nF9
        tQrwd09SFa4u5DWHkpGtQRI31JDMv9wOBd8H2S7UQ9yw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=E5Ozh9/1om322txAO
        Tr/CT0KcMpbQJhqLN+HcoHUVro=; b=aepQaniTYZyuLJ++WiJSyZKnoT1bs9XLP
        2y70iA9TikAtyMln+K5YwcR3bycN4iSlztal+05kzS17gUVttVqqlnMvHehqgO7Z
        xtS2aGV2Y7kS1B2TdaXMLO9r5FUm46D9g0tXOXcoXxh5Y6dPlMc4LpwYsy4pT8BS
        GpQ3MeBhp799XPjYFFc0HW5Y0x7Zg8xdhcMaoqMLzwLXrVHLxD6haZu+DWH2B4BB
        ySVbZtoz5oQIJ0T1UH9gaOS88UMQxaG1/nMurTSM7N26eBCU606aFb7HUxJHOgkG
        NRIBhYb+2feQTRGlHqW64XZ/75UH1TA8kUYJV/+I/FirMTa8TXeSw==
X-ME-Sender: <xms:IhskYAQQB-J4kdKcgO-iqSMwP0SvMFVJz6MhsumEtOtAKJuIJolw3Q>
    <xme:IhskYNyFCxmc0905A8c2vrINMgqJh3ses7QgXV3dcOxatuMB4n05Y9l73-GBCEYLG
    1fnAnTRyBRJ3hINog>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrheejgddutddvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
    dttdenucfhrhhomheptehlhihsshgrucftohhsshcuoehhihesrghlhihsshgrrdhisheq
    necuggftrfgrthhtvghrnhephedvfffghfetieejgfetfedtgffhvdehueehvdejudfgge
    fgleejgfelfeevgfefnecukfhppeekgedrudekuddrvdeguddrudefnecuvehluhhsthgv
    rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepqhihlhhishhssegvvhgvrd
    hqhihlihhsshdrnhgvth
X-ME-Proxy: <xmx:IhskYN3-Wyrt_cLwpUjW0UNp-z1ErLW888fl8VXR3EJHK76suVuwAw>
    <xmx:IhskYEB-xY5pT6CAIq8aKNxCllZfeldE4alPev3xcQJHTOrtpcR2Ng>
    <xmx:IhskYJgFyFjN863-0ZN7oCidRReq6IiLZ5ayBDK5ang1muLEUBnAqw>
    <xmx:IhskYJI6Zdp-xlF3av_EVAr-yoY6kMEkH4yIH4eK9q12QVSi0yYDHg>
Received: from eve.qyliss.net (p54b5f10d.dip0.t-ipconnect.de [84.181.241.13])
        by mail.messagingengine.com (Postfix) with ESMTPA id 3FD0B24005B;
        Wed, 10 Feb 2021 12:42:58 -0500 (EST)
Received: by eve.qyliss.net (Postfix, from userid 1000)
        id C7D4CECC; Wed, 10 Feb 2021 17:42:55 +0000 (UTC)
From:   Alyssa Ross <hi@alyssa.is>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Alyssa Ross <hi@alyssa.is>
Subject: [PATCH] open.2, rename.2: refer to tmpfs rather than shmem
Date:   Wed, 10 Feb 2021 17:42:45 +0000
Message-Id: <20210210174245.17027-1-hi@alyssa.is>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Skimming open(2), I was surprised not to see tmpfs mentioned as a
filesystem supported by O_TMPFILE.

If I'm understanding correctly (I'm very possibly not!), tmpfs is a
filesystem built on shmem, so I think it's more correct (and probably
much more widely understandable) to refer to tmpfs here.
---
 man2/open.2   | 2 +-
 man2/rename.2 | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/man2/open.2 b/man2/open.2
index b30dc1532..03fff1b65 100644
--- a/man2/open.2
+++ b/man2/open.2
@@ -885,7 +885,7 @@ as described above).
 requires support by the underlying filesystem;
 only a subset of Linux filesystems provide that support.
 In the initial implementation, support was provided in
-the ext2, ext3, ext4, UDF, Minix, and shmem filesystems.
+the ext2, ext3, ext4, UDF, Minix, and tmpfs filesystems.
 .\" To check for support, grep for "tmpfile" in kernel sources
 Support for other filesystems has subsequently been added as follows:
 XFS (Linux 3.15);
diff --git a/man2/rename.2 b/man2/rename.2
index 527bafacf..cb36405fe 100644
--- a/man2/rename.2
+++ b/man2/rename.2
@@ -208,11 +208,11 @@ Support for various filesystems was added as follows:
 ext4 (Linux 3.15);
 .\" ext4: commit 0a7c3937a1f23f8cb5fc77ae01661e9968a51d0c
 .IP *
-btrfs, shmem, and cifs (Linux 3.17);
+btrfs, tmpfs, and cifs (Linux 3.17);
 .IP *
 xfs (Linux 4.0);
 .\" btrfs: commit 80ace85c915d0f41016f82917218997b72431258
-.\" shmem: commit 3b69ff51d087d265aa4af3a532fc4f20bf33e718
+.\" tmpfs: commit 3b69ff51d087d265aa4af3a532fc4f20bf33e718
 .\" cifs: commit 7c33d5972ce382bcc506d16235f1e9b7d22cbef8
 .\"
 .\" gfs2 in 4.2?
-- 
2.30.0

