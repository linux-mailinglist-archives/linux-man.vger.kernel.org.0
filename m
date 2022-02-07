Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 177664AC8C7
	for <lists+linux-man@lfdr.de>; Mon,  7 Feb 2022 19:44:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230134AbiBGSlc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Feb 2022 13:41:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236814AbiBGSiP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Feb 2022 13:38:15 -0500
X-Greylist: delayed 1201 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 07 Feb 2022 10:38:14 PST
Received: from 2.mo552.mail-out.ovh.net (2.mo552.mail-out.ovh.net [178.33.105.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4300BC0401D9
        for <linux-man@vger.kernel.org>; Mon,  7 Feb 2022 10:38:14 -0800 (PST)
Received: from mxplan6.mail.ovh.net (unknown [10.108.20.68])
        by mo552.mail-out.ovh.net (Postfix) with ESMTPS id 1F8E822160;
        Mon,  7 Feb 2022 17:58:23 +0000 (UTC)
Received: from jwilk.net (37.59.142.105) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.18; Mon, 7 Feb
 2022 18:58:22 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-105G0061afd9d24-6e7b-41e2-b0e1-95290cc4b302,
                    EBE7344067FA94731CB85FC0D784C3141D1F009B) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 46.204.53.18
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] symlink.2: Clarify symlink ownership matters when protected_symlinks=1
Date:   Mon, 7 Feb 2022 18:58:19 +0100
Message-ID: <20220207175819.9306-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.105]
X-ClientProxiedBy: DAG1EX2.mxp6.local (172.16.2.2) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 9c8ccb7c-cca9-419b-83a7-c398054eeee8
X-Ovh-Tracer-Id: 6755117969544894429
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvvddrheehgddutdegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvffufffkofgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepvdehjeejffejjedvkeehheejieelhffftdduteefheeukeeuiedvudehveehfefhnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutdehnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---

I'm not really happy with the wording, but that's the best I could come
up with in my limited free time.

 man2/symlink.2 | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/man2/symlink.2 b/man2/symlink.2
index 6c929101c..e4aa32b72 100644
--- a/man2/symlink.2
+++ b/man2/symlink.2
@@ -86,7 +86,12 @@ file or to a nonexistent one; the latter case is known as a dangling
 link.
 .PP
 The permissions of a symbolic link are irrelevant; the ownership is
-ignored when following the link, but is checked when removal or
+ignored when following the link
+(except when the
+.I protected_symlinks
+feature in enabled, as explained in
+.BR proc (5)),
+but is checked when removal or
 renaming of the link is requested and the link is in a directory with
 the sticky bit
 .RB ( S_ISVTX )
-- 
2.34.1

