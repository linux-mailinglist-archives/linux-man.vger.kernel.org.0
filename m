Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D175DA4FFF
	for <lists+linux-man@lfdr.de>; Mon,  2 Sep 2019 09:35:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729777AbfIBHfd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Sep 2019 03:35:33 -0400
Received: from 4.mo177.mail-out.ovh.net ([46.105.37.72]:53334 "EHLO
        4.mo177.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725839AbfIBHfd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Sep 2019 03:35:33 -0400
X-Greylist: delayed 2381 seconds by postgrey-1.27 at vger.kernel.org; Mon, 02 Sep 2019 03:35:32 EDT
Received: from player157.ha.ovh.net (unknown [10.108.42.83])
        by mo177.mail-out.ovh.net (Postfix) with ESMTP id EE873108B44
        for <linux-man@vger.kernel.org>; Mon,  2 Sep 2019 08:55:53 +0200 (CEST)
Received: from jwilk.net (user-5-173-40-143.play-internet.pl [5.173.40.143])
        (Authenticated sender: jwilk@jwilk.net)
        by player157.ha.ovh.net (Postfix) with ESMTPSA id 46F8D9421BED;
        Mon,  2 Sep 2019 06:55:51 +0000 (UTC)
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 4/4] fanotify_mark.2: Document FAN_MOVE_SELF
Date:   Mon,  2 Sep 2019 08:55:36 +0200
Message-Id: <20190902065536.4878-4-jwilk@jwilk.net>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190902065536.4878-1-jwilk@jwilk.net>
References: <20190902065536.4878-1-jwilk@jwilk.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 13616914952625706877
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrudeiledguddufecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecu
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man2/fanotify_mark.2 | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
index e62b6d2c2..7c21cc22b 100644
--- a/man2/fanotify_mark.2
+++ b/man2/fanotify_mark.2
@@ -209,6 +209,10 @@ parent directory.
 Create an event when a file or directory has been moved to a marked parent
 directory.
 .TP
+.BR FAN_MOVE_SELF " (since Linux 5.1)"
+.\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
+Create an event when a marked file or directory itself has been moved.
+.TP
 .B FAN_Q_OVERFLOW
 Create an event when an overflow of the event queue occurs.
 The size of the event queue is limited to 16384 entries if
-- 
2.23.0

