Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5DBF9194FF9
	for <lists+linux-man@lfdr.de>; Fri, 27 Mar 2020 05:17:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725942AbgC0ERz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 27 Mar 2020 00:17:55 -0400
Received: from mail.python.org ([188.166.95.178]:53180 "EHLO mail.python.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725904AbgC0ERz (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 27 Mar 2020 00:17:55 -0400
Received: from auth1-smtp.messagingengine.com (auth1-smtp.messagingengine.com [66.111.4.227])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.python.org (Postfix) with ESMTPSA id 48pT9F2CNGznfr1;
        Fri, 27 Mar 2020 00:17:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=python.org; s=200901;
        t=1585282673; bh=zHr4r3z0mlh0Iyuc/IkPchCUPQQFLjJZJcFP4Z6Gjkg=;
        h=From:To:Cc:Subject:Date:From;
        b=bbC7ezndkLRmJCHmchdIqbsRln38+d+La3S4hDMEptYEZRhNGlz7zH2eIEHSMQZ7H
         ndH3/2H3ykiuGRmy5m7q7P6rqAhEpm3x/1U4E/AbjDDSEAYdSmHoEw9Q7ucgO7fAD/
         Q2nqCvcgcLJ747bCbCNo6UmHnaFZ/gz/5V5/MMVg=
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
        by mailauth.nyi.internal (Postfix) with ESMTP id 7F75227C005A;
        Fri, 27 Mar 2020 00:17:51 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Fri, 27 Mar 2020 00:17:51 -0400
X-ME-Sender: <xms:b359Xvd3njpqGvR0w9wLXwKDpqt6Au_uBGiQuAVz4Z-qv5-7yVUZBA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrudehjedgudeikecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertd
    ertddtnecuhfhrohhmpeeuvghnjhgrmhhinhcurfgvthgvrhhsohhnuceosggvnhhjrghm
    ihhnsehphihthhhonhdrohhrgheqnecukfhppeeiiedrgedurddutdegrddvtdenucevlh
    hushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegstghpodhmvghs
    mhhtphgruhhthhhpvghrshhonhgrlhhithihqddvtdduieekfeefjedqudduleeitdeihe
    efqdgsvghnjhgrmhhinheppehphihthhhonhdrohhrghesfhgrshhtmhgrihhlrdgtohhm
X-ME-Proxy: <xmx:b359XhzlwJbefCwvABQnSrWPMIAVXk9kYSRu1riRSNIJ5ulfMeNdhw>
    <xmx:b359Xs_tbm9lzdxpwebqtXZ-CyL1DkUb-bPEKc4FM9syTMMGpKf8dg>
    <xmx:b359Xnw8LAno1p68pJI_bi_POHkeKNEZ5fc0OaeY2lNWIi8B06RsYQ>
    <xmx:b359XrIfz5XV2rsWyX6OMgJk43qWzWaOTY13KzS6PonRSHJcxV4qNA>
Received: from localhost.localdomain (c-66-41-104-20.hsd1.mn.comcast.net [66.41.104.20])
        by mail.messagingengine.com (Postfix) with ESMTPA id 213BD3280059;
        Fri, 27 Mar 2020 00:17:51 -0400 (EDT)
From:   Benjamin Peterson <benjamin@python.org>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] clock_getres.2: tfix
Date:   Thu, 26 Mar 2020 23:17:49 -0500
Message-Id: <20200327041749.21337-1-benjamin@python.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Benjamin Peterson <benjamin@python.org>
---
 man2/clock_getres.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/clock_getres.2 b/man2/clock_getres.2
index d8b02e185..4422d2d00 100644
--- a/man2/clock_getres.2
+++ b/man2/clock_getres.2
@@ -139,7 +139,7 @@ and probably also architecture support for this flag in the
 .TP
 .BR CLOCK_TAI " (since Linux 3.10; Linux-specific)"
 .\" commit 1ff3c9677bff7e468e0c487d0ffefe4e901d33f4
-A system-wide clock derived from walli-clock time but ignoring leap seconds.
+A system-wide clock derived from wall-clock time but ignoring leap seconds.
 This clock does
 not experience discontinuities and backwards jumps caused by NTP
 inserting leap seconds as
-- 
2.20.1

