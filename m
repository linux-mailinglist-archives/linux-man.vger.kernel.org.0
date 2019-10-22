Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 474D3E1001
	for <lists+linux-man@lfdr.de>; Wed, 23 Oct 2019 04:24:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732114AbfJWCYl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Oct 2019 22:24:41 -0400
Received: from 6.mo1.mail-out.ovh.net ([46.105.43.205]:33237 "EHLO
        6.mo1.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729994AbfJWCYl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Oct 2019 22:24:41 -0400
X-Greylist: delayed 4200 seconds by postgrey-1.27 at vger.kernel.org; Tue, 22 Oct 2019 22:24:40 EDT
Received: from player714.ha.ovh.net (unknown [10.109.146.137])
        by mo1.mail-out.ovh.net (Postfix) with ESMTP id 785EC194CDD
        for <linux-man@vger.kernel.org>; Tue, 22 Oct 2019 23:37:28 +0200 (CEST)
Received: from jwilk.net (ip-5-172-255-94.free.aero2.net.pl [5.172.255.94])
        (Authenticated sender: jwilk@jwilk.net)
        by player714.ha.ovh.net (Postfix) with ESMTPSA id 9B923B382E63;
        Tue, 22 Oct 2019 21:37:25 +0000 (UTC)
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] netlink.7: tfix
Date:   Tue, 22 Oct 2019 23:37:15 +0200
Message-Id: <20191022213715.5097-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.24.0.rc0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 8545580294831331197
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrkeejgdduieegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenuc
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man7/netlink.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/netlink.7 b/man7/netlink.7
index 952aa7065..81d42493e 100644
--- a/man7/netlink.7
+++ b/man7/netlink.7
@@ -439,7 +439,7 @@ When not set,
 only reports
 .B ESRCH
 errors and silently ignore
-.B NOBUFS
+.B ENOBUFS
 errors.
 .TP
 .BR NETLINK_NO_ENOBUFS " (since Linux 2.6.30)"
-- 
2.24.0.rc0

