Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F0652130FB
	for <lists+linux-man@lfdr.de>; Fri,  3 Jul 2020 03:26:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726028AbgGCB0W (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Jul 2020 21:26:22 -0400
Received: from out1-smtp.messagingengine.com ([66.111.4.25]:38119 "EHLO
        out1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726017AbgGCB0V (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 2 Jul 2020 21:26:21 -0400
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
        by mailout.nyi.internal (Postfix) with ESMTP id B7A7D5C0115;
        Thu,  2 Jul 2020 21:26:19 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute7.internal (MEProxy); Thu, 02 Jul 2020 21:26:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alyssa.is; h=
        from:to:cc:subject:date:message-id:mime-version
        :content-transfer-encoding; s=fm3; bh=RsaVUBpWR6qtU32FJh9Wod1eN8
        YY261Yehc7BRfK0/w=; b=s9F+vsUB0Qm3Uc9v7JN+shCADgWrZehRpnXUn1W8qs
        Cz8OTWt4IEnwamL9tvd1MPp1Eehf2PmOM2Diyq6cfM+PRaa6HZmoE/6ZNEMgL6Pw
        rDbXcA5wPMMswHlSvDylh6KHXhoL8wIc8hkXTsCNr87hkqWYgfCViyu2hT6Iyojj
        kMiJ3WEZVFEZxkxngauK6r1sUHoFUnVD5qiHxIt2HonhteYYxi3oWrlG+ico/Wo7
        yer5BMl4gogHybiQUylyT92aVCaNpdtFqqv2ZM6SS7OopY9LpUSlsUm6ZjR7kqg/
        6fLboS9uMjO5oO7X9bIrij0lC0u/6dwHA3obW49zU9lA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=RsaVUBpWR6qtU32FJ
        h9Wod1eN8YY261Yehc7BRfK0/w=; b=ZnQwJbQVjWUTe8B/oTqPjV0Ne5yY71kzj
        F668uNpWvlB+Kw1onYNj74UiAMdmMMvWYyPqxDzk4NzHqH6Bwm1ihV8VNMcX1sMU
        9jbc82u6Xb1w4/qzrCsL3P+TvpLo6cyLEFgNzMZk+KgJ8sD6ljlzBASMku9uf6ZM
        PAEwEiWGmQo+nqqDfeYM2PguePscQuRnMaPJyoOT8ZsErR7rmYZsvtXZYer4qwUx
        E2Ve2xDUH79wiBHqMwSwnTdp7cnuAoNI7MFo9r7GGMer0r/VYoWmkGrVbcTfKhG3
        PqqE+xQYqkvdcaUhFCbXXzKU+AjiT/MUQhHevjUl+rKGscoTqDXKA==
X-ME-Sender: <xms:O4n-XtEsdnmYGG_Z18VOWOgI1aNrzHRqJjPxtS6tw5TUCofHeZ1dnA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedrtdehgdeghecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomheptehlhihsshgrucft
    ohhsshcuoehhihesrghlhihsshgrrdhisheqnecuggftrfgrthhtvghrnhepgefgjedtje
    dtfffgleelleduvdevjeehveejfeduleevhfelueegleevgeetffehnecuffhomhgrihhn
    pehsohhurhgtvgifrghrvgdrohhrghenucfkphepjeelrddvfeehrdduvdeirddujeelne
    cuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepqhihlhhi
    shhsseigvddvtddrqhihlhhishhsrdhnvght
X-ME-Proxy: <xmx:O4n-XiX3NrpyhDCA1ucM7zJEEei5NhfVvsyv_4Wcf8atDXzPh7fPnQ>
    <xmx:O4n-XvLQ7o4bVVYa7eFgI6FBs_eKvz3EWQQCdwPnj2xGkfQgZP-usw>
    <xmx:O4n-XjHPYysQFAcF96iO2X-OUiLPLgi1CHTOBxpbTcD20r2Y74pblA>
    <xmx:O4n-XrgAl-Nj0UU6yq72hCg2f1XYMy3NjRLpN0pAujkuvZi5OMOIhQ>
Received: from x220.qyliss.net (p4feb7eb3.dip0.t-ipconnect.de [79.235.126.179])
        by mail.messagingengine.com (Postfix) with ESMTPA id 5194A3060077;
        Thu,  2 Jul 2020 21:26:19 -0400 (EDT)
Received: by x220.qyliss.net (Postfix, from userid 1000)
        id 0544D7B6; Fri,  3 Jul 2020 01:26:17 +0000 (UTC)
From:   Alyssa Ross <hi@alyssa.is>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Alyssa Ross <hi@alyssa.is>
Subject: [PATCH] send.2, recv.2: add msg_iovlen POSIX note
Date:   Fri,  3 Jul 2020 01:25:40 +0000
Message-Id: <20200703012540.19730-1-hi@alyssa.is>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

msg_iovlen is incorrectly typed (according to POSIX) in addition to
msg_controllen, but unlike msg_controllen, this wasn't mentioned for
msg_iovlen.

msg_iovlen being incorrectly typed hasn't been reported as a GCC bug,
but there's no point since it is caused by the same underlying issue.

Sources: POSIX.1-2017 (<sys/socket.h>), Linux (include/linux/socket.h)

Signed-off-by: Alyssa Ross <hi@alyssa.is>
---
 man2/recv.2 | 13 +++++++++----
 man2/send.2 | 13 +++++++++----
 2 files changed, 18 insertions(+), 8 deletions(-)

diff --git a/man2/recv.2 b/man2/recv.2
index 78ae86e52..7c4b70c7a 100644
--- a/man2/recv.2
+++ b/man2/recv.2
@@ -533,13 +533,18 @@ field of the
 .I msghdr
 structure should be typed as
 .IR socklen_t ,
-but glibc currently types it as
+and the
+.I msg_iovlen
+field should be typed as
+.IR int ,
+but glibc currently types both as
 .IR size_t .
-.\" glibc bug raised 12 Mar 2006
+.\" glibc bug for msg_controllen raised 12 Mar 2006
 .\" http://sourceware.org/bugzilla/show_bug.cgi?id=2448
 .\" The problem is an underlying kernel issue: the size of the
-.\" __kernel_size_t type used to type this field varies
-.\" across architectures, but socklen_t is always 32 bits.
+.\" __kernel_size_t type used to type these fields varies
+.\" across architectures, but socklen_t is always 32 bits,
+.\" as (at least with GCC) is int.
 .PP
 See
 .BR recvmmsg (2)
diff --git a/man2/send.2 b/man2/send.2
index 0dd35d783..de224b307 100644
--- a/man2/send.2
+++ b/man2/send.2
@@ -441,13 +441,18 @@ field of the
 .I msghdr
 structure should be typed as
 .IR socklen_t ,
-but glibc currently types it as
+and the
+.I msg_iovlen
+field should be typed as
+.IR int ,
+but glibc currently types both as
 .IR size_t .
-.\" glibc bug raised 12 Mar 2006
+.\" glibc bug for msg_controllen raised 12 Mar 2006
 .\" http://sourceware.org/bugzilla/show_bug.cgi?id=2448
 .\" The problem is an underlying kernel issue: the size of the
-.\" __kernel_size_t type used to type this field varies
-.\" across architectures, but socklen_t is always 32 bits.
+.\" __kernel_size_t type used to type these fields varies
+.\" across architectures, but socklen_t is always 32 bits,
+.\" as (at least with GCC) is int.
 .PP
 See
 .BR sendmmsg (2)
-- 
2.26.2

